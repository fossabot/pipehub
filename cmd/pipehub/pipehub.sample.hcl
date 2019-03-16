server {
  graceful-shutdown = "10s"

  action {
    not-found = "pipe.NotFound"
    panic     = "pipe.Panic"
  }

  http {
    port = 80
  }
}

host {
  endpoint = "google"
  origin   = "https://www.google.com"
  handler  = "pipe.Default"
}

pipe "github.com/pipehub/pipe" {
  version = "v0.7.0"
  alias   = "pipe"
}
