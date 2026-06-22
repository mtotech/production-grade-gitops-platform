# Environment variables ,Kubernetes ConfigMaps ,Helm values later use

import os


class Config:

    APP_NAME = os.getenv(
        "APP_NAME",
        "gitops-platform"
    )

    APP_VERSION = os.getenv(
        "APP_VERSION",
        "1.0.0"
    )
