{-# LANGUAGE CPP #-}
#if PRODUCTION
import Controller (withMySite)
import Network.Wai.Handler.Warp (run)

main :: IO ()
main = withMySite $ run 3000
#else
import Controller (withMySite)
import System.IO (hPutStrLn, stderr)
import Network.Wai.Middleware.Debug (debug)
import Network.Wai.Handler.Warp (run)

main :: IO ()
main = do
    let port = 3000
    hPutStrLn stderr $ "Application launched, listening on port " ++ show port
    withMySite $ run port . debug
#endif
