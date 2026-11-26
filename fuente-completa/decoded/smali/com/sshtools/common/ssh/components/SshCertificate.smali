.class public Lcom/sshtools/common/ssh/components/SshCertificate;
.super Lcom/sshtools/common/ssh/components/SshKeyPair;
.source "SshCertificate.java"


# static fields
.field public static final SSH_CERT_TYPE_HOST:I = 0x2

.field public static final SSH_CERT_TYPE_USER:I = 0x1


# instance fields
.field certificate:Lcom/sshtools/common/publickey/OpenSshCertificate;


# direct methods
.method public constructor <init>(Lcom/sshtools/common/ssh/components/SshKeyPair;Lcom/sshtools/common/publickey/OpenSshCertificate;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/sshtools/common/ssh/components/SshKeyPair;-><init>()V

    .line 35
    iput-object p2, p0, Lcom/sshtools/common/ssh/components/SshCertificate;->certificate:Lcom/sshtools/common/publickey/OpenSshCertificate;

    .line 36
    invoke-virtual {p1}, Lcom/sshtools/common/ssh/components/SshKeyPair;->getPrivateKey()Lcom/sshtools/common/ssh/components/SshPrivateKey;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/common/ssh/components/SshCertificate;->setPrivateKey(Lcom/sshtools/common/ssh/components/SshPrivateKey;)V

    .line 37
    invoke-virtual {p0, p2}, Lcom/sshtools/common/ssh/components/SshCertificate;->setPublicKey(Lcom/sshtools/common/ssh/components/SshPublicKey;)V

    return-void
.end method


# virtual methods
.method public getCertificate()Lcom/sshtools/common/publickey/OpenSshCertificate;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/SshCertificate;->certificate:Lcom/sshtools/common/publickey/OpenSshCertificate;

    return-object v0
.end method

.method public isHostCertificate()Z
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/SshCertificate;->certificate:Lcom/sshtools/common/publickey/OpenSshCertificate;

    invoke-virtual {v0}, Lcom/sshtools/common/publickey/OpenSshCertificate;->isHostCertificate()Z

    move-result v0

    return v0
.end method

.method public isUserCertificate()Z
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/SshCertificate;->certificate:Lcom/sshtools/common/publickey/OpenSshCertificate;

    invoke-virtual {v0}, Lcom/sshtools/common/publickey/OpenSshCertificate;->isUserCertificate()Z

    move-result v0

    return v0
.end method
