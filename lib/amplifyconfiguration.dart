const amplifyconfig = ''' {
  "UserAgent": "aws-amplify-cli/2.0",
  "Version": "1.0",
  "auth": {
    "plugins": {
      "awsCognitoAuthPlugin": {
        "IdentityManager": {
          "Default": {}
        },
        "CredentialsProvider": {
          "CognitoIdentity": {
            "Default": {
              "PoolId": "us-east-1:e5fe4f5d-3677-4f87-8b14-7d40d56f6a67",
              "Region": "us-east-1"
            }
          }
        },
        "CognitoUserPool": {
          "Default": {
            "PoolId": "us-east-1_elxzCpD7Z",
            "AppClientId": "6ma2tmmql7nj8pt3c8rh6v17be",
            "Region": "us-east-1"
          }
        },
        "Auth": {
          "Default": {
            "authenticationFlowType": "USER_SRP_AUTH",
            "OAuth": {
              "WebDomain": "https://testi.auth.us-east-1.amazoncognito.com/",
              "AppClientId": "6ma2tmmql7nj8pt3c8rh6v17be",
              "SignInRedirectURI": "https://master.d8xh8fh71c7xy.amplifyapp.com/#/minified:kX",
              "SignOutRedirectURI": "https://master.d8xh8fh71c7xy.amplifyapp.com",
              "Scopes": [
                "phone",
                "email",
                "openid",
                "aws.cognito.signin.user.admin"
              ]
            }
          }
        }
      }
    }
  }
}''';
