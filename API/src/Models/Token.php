<?php
/**
 * Created by PhpStorm.
 * User: Josh
 * Date: 10/7/2015
 * Time: 7:55 PM
 */

namespace CS4450\Models;

use Firebase\JWT\BeforeValidException;
use Firebase\JWT\ExpiredException;
use \Firebase\JWT\JWT;
use Firebase\JWT\SignatureInvalidException;
use CS4450\Http\StatusCodes;

class Token
{

    const ROLE_STANDARD = 'standard';
    const ROLE_MODERATOR = 'moderator';
    const ROLE_ADMIN = 'admin';

    private static $KEY = "cdf97907258bb76aebaa7d435992f6b94f6f8886de4d725036e38cc17420625dc23fc2856519a1b51937ce89502cbb309b3501dd3908b4ff0966ff49c8747dfc";   //TODO: Extract key to config file that is loaded on-run.

    //private static $lengthValid = 3600; // 1 Hour
    private static $lengthValid = 1209600; // 2 weeks
    /**
     * @var string Contains a standard JWT.
     */
    public $token = "";

    public function buildToken($role, $username)
    {
        $tokenId = uniqid("", true);//TODO: Reset with MCrypt Enabled. //base64_encode(mcrypt_create_iv(32));
        $issuedAt = time();
        $notBefore = $issuedAt;                   //Adding 10 seconds to compensate for clock-skew
        $expire = $notBefore + self::$lengthValid;  // Expiration time
        $serverName = "http://icarus.cs.weber.edu";
        $data = [
            'iat' => $issuedAt,         // Issued at: time when the token was generated
            'jti' => $tokenId,          // Json Token Id: an unique identifier for the token
            'iss' => $serverName,       // Issuer
            'nbf' => $notBefore,        // Not before
            'exp' => $expire,           // Expire
            'data' => [                  // Data related to the signer user
                'role' => $role,
                'username' => $username, // User name
            ]
        ];

        $this->token = JWT::encode($data, self::$KEY, 'HS256');

        return $this->token;
    }

    private static function extractTokenData($jwt)
    {
        try {
            $tokenData = (array)JWT::decode($jwt, self::$KEY, array('HS256'));
        } catch (Exception $e) {
            http_response_code(StatusCodes::UNAUTHORIZED);
            exit("Invalid token. Error: $e");
        } catch (BeforeValidException $e) {
            http_response_code(StatusCodes::UNAUTHORIZED);
            exit("Invalid token.");
        } catch (ExpiredException $e) {
            http_response_code(StatusCodes::UNAUTHORIZED);
            exit("Token Expired.");
        } catch (SignatureInvalidException $e) {
            http_response_code(StatusCodes::UNAUTHORIZED);
            exit("Invalid token.");
        }

        return $tokenData;
    }

    public static function getRoleFromToken($jwt = null)
    {
        if ($jwt == null)
            $jwt = self::getBearerTokenFromHeader();
        $tokenData = static::extractTokenData($jwt);
        $data = (array)$tokenData['data'];
        return $data['role'];
    }

    public static function getUsernameFromToken($jwt = null)
    {
        if ($jwt == null)
            $jwt = self::getBearerTokenFromHeader();
        $tokenData = static::extractTokenData($jwt);
        $data = (array)$tokenData['data'];
        return $data['username'];
    }

    private static function getBearerTokenFromHeader()
    {
        $headers = apache_request_headers();

        if (!isset($headers)) {
            http_response_code(StatusCodes::BAD_REQUEST);
            exit("No headers set.");
        }

        if (!array_key_exists("Authorization", $headers)) {
            http_response_code(StatusCodes::UNAUTHORIZED);
            exit("No credentials provided.");
        }

        $authHeader = $headers['Authorization'];
        list($jwt) = sscanf($authHeader, 'Bearer %s');

        return $jwt;
    }
}