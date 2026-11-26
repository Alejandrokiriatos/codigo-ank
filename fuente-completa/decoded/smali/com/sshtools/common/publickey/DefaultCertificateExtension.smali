.class public Lcom/sshtools/common/publickey/DefaultCertificateExtension;
.super Lcom/sshtools/common/publickey/CertificateExtension;
.source "DefaultCertificateExtension.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/sshtools/common/publickey/CertificateExtension;-><init>()V

    .line 28
    invoke-virtual {p0, p1}, Lcom/sshtools/common/publickey/DefaultCertificateExtension;->setName(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0, p2}, Lcom/sshtools/common/publickey/DefaultCertificateExtension;->setStoredValue([B)V

    return-void
.end method
