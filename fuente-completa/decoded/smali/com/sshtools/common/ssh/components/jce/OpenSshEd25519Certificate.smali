.class public Lcom/sshtools/common/ssh/components/jce/OpenSshEd25519Certificate;
.super Lcom/sshtools/common/publickey/OpenSshCertificate;
.source "OpenSshEd25519Certificate.java"

# interfaces
.implements Lcom/sshtools/common/ssh/components/SshPublicKey;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/common/ssh/components/jce/OpenSshEd25519Certificate$OpenSshEd25519CertificateFactory;
    }
.end annotation


# static fields
.field public static final CERT_TYPE:Ljava/lang/String; = "ssh-ed25519-cert-v01@openssh.com"


# instance fields
.field nonce:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/sshtools/common/publickey/OpenSshCertificate;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/security/PublicKey;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/sshtools/common/publickey/OpenSshCertificate;-><init>()V

    .line 61
    new-instance v0, Lcom/sshtools/common/ssh/components/jce/SshEd25519PublicKeyJCE;

    invoke-direct {v0, p1}, Lcom/sshtools/common/ssh/components/jce/SshEd25519PublicKeyJCE;-><init>(Ljava/security/PublicKey;)V

    iput-object v0, p0, Lcom/sshtools/common/ssh/components/jce/OpenSshEd25519Certificate;->publicKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Lcom/sshtools/common/publickey/OpenSshCertificate;-><init>()V

    .line 65
    new-instance v0, Lcom/sshtools/common/ssh/components/jce/SshEd25519PublicKeyJCE;

    invoke-direct {v0, p1}, Lcom/sshtools/common/ssh/components/jce/SshEd25519PublicKeyJCE;-><init>([B)V

    iput-object v0, p0, Lcom/sshtools/common/ssh/components/jce/OpenSshEd25519Certificate;->publicKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    return-void
.end method


# virtual methods
.method protected decodePublicKey(Lcom/sshtools/common/util/ByteArrayReader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 102
    :try_start_0
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readBinaryString()[B

    move-result-object p1

    .line 103
    new-instance v0, Lcom/sshtools/common/ssh/components/jce/SshEd25519PublicKeyJCE;

    invoke-direct {v0, p1}, Lcom/sshtools/common/ssh/components/jce/SshEd25519PublicKeyJCE;-><init>([B)V

    iput-object v0, p0, Lcom/sshtools/common/ssh/components/jce/OpenSshEd25519Certificate;->publicKey:Lcom/sshtools/common/ssh/components/SshPublicKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 105
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    new-instance v0, Lcom/sshtools/common/ssh/SshException;

    const-string v1, "Failed to obtain Ed25519 public key instance"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 132
    instance-of v0, p1, Lcom/sshtools/common/ssh/components/jce/SshEd25519PublicKeyJCE;

    if-eqz v0, :cond_0

    .line 134
    :try_start_0
    check-cast p1, Lcom/sshtools/common/ssh/components/SshPublicKey;

    invoke-interface {p1}, Lcom/sshtools/common/ssh/components/SshPublicKey;->getFingerprint()Ljava/lang/String;

    move-result-object p1

    .line 135
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/jce/OpenSshEd25519Certificate;->getFingerprint()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 87
    const-string v0, "ssh-ed25519-cert-v01@openssh.com"

    return-object v0
.end method

.method public getBitLength()I
    .locals 1

    const/16 v0, 0x100

    return v0
.end method

.method public getJCEPublicKey()Ljava/security/PublicKey;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/OpenSshEd25519Certificate;->publicKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    invoke-interface {v0}, Lcom/sshtools/common/ssh/components/SshPublicKey;->getJCEPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSecurityLevel()Lcom/sshtools/common/ssh/SecurityLevel;
    .locals 1

    .line 73
    sget-object v0, Lcom/sshtools/common/ssh/SecurityLevel;->PARANOID:Lcom/sshtools/common/ssh/SecurityLevel;

    return-object v0
.end method

.method public getSigningAlgorithm()Ljava/lang/String;
    .locals 1

    .line 163
    const-string v0, "ssh-ed25519"

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 145
    :try_start_0
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/jce/OpenSshEd25519Certificate;->getFingerprint()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public test()Ljava/lang/String;
    .locals 3

    .line 154
    :try_start_0
    const-string v0, "Ed25519"

    const-string v1, "BC"

    invoke-static {v0, v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Ljava/security/KeyFactory;->getProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 157
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public verifySignature([B[B)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/OpenSshEd25519Certificate;->publicKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    invoke-interface {v0, p1, p2}, Lcom/sshtools/common/ssh/components/SshPublicKey;->verifySignature([B[B)Z

    move-result p1

    return p1
.end method
