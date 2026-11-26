.class public Lcom/sshtools/common/publickey/SshKeyUtils;
.super Ljava/lang/Object;
.source "SshKeyUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPrivateKeyFile(Lcom/sshtools/common/ssh/components/SshKeyPair;Ljava/lang/String;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 231
    invoke-static {p0, p1, p2, v0}, Lcom/sshtools/common/publickey/SshKeyUtils;->createPrivateKeyFile(Lcom/sshtools/common/ssh/components/SshKeyPair;Ljava/lang/String;Ljava/io/File;I)V

    return-void
.end method

.method public static createPrivateKeyFile(Lcom/sshtools/common/ssh/components/SshKeyPair;Ljava/lang/String;Ljava/io/File;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    invoke-static {p0, p1, p3}, Lcom/sshtools/common/publickey/SshPrivateKeyFileFactory;->create(Lcom/sshtools/common/ssh/components/SshKeyPair;Ljava/lang/String;I)Lcom/sshtools/common/publickey/SshPrivateKeyFile;

    move-result-object p0

    .line 237
    new-instance p1, Ljava/lang/String;

    invoke-interface {p0}, Lcom/sshtools/common/publickey/SshPrivateKeyFile;->getFormattedKey()[B

    move-result-object p0

    const-string p3, "UTF-8"

    invoke-direct {p1, p0, p3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {p2, p1}, Lcom/sshtools/common/util/IOUtils;->writeUTF8StringToFile(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public static createPublicKeyFile(Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/lang/String;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 220
    invoke-static {p0, p1, p2, v0}, Lcom/sshtools/common/publickey/SshKeyUtils;->createPublicKeyFile(Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/lang/String;Ljava/io/File;I)V

    return-void
.end method

.method public static createPublicKeyFile(Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/lang/String;Ljava/io/File;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    invoke-static {p0, p1, p3}, Lcom/sshtools/common/publickey/SshPublicKeyFileFactory;->create(Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/lang/String;I)Lcom/sshtools/common/publickey/SshPublicKeyFile;

    move-result-object p0

    .line 226
    new-instance p1, Ljava/lang/String;

    invoke-interface {p0}, Lcom/sshtools/common/publickey/SshPublicKeyFile;->getFormattedKey()[B

    move-result-object p0

    const-string p3, "UTF-8"

    invoke-direct {p1, p0, p3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {p2, p1}, Lcom/sshtools/common/util/IOUtils;->writeUTF8StringToFile(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public static getBubbleBabble(Lcom/sshtools/common/ssh/components/SshPublicKey;)Ljava/lang/String;
    .locals 0

    .line 216
    invoke-static {p0}, Lcom/sshtools/common/ssh/SshKeyFingerprint;->getBubbleBabble(Lcom/sshtools/common/ssh/components/SshPublicKey;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCertificate(Ljava/io/File;Ljava/lang/String;)Lcom/sshtools/common/ssh/components/SshCertificate;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/publickey/InvalidPassphraseException;
        }
    .end annotation

    .line 126
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-cert.pub"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/sshtools/common/publickey/SshKeyUtils;->getCertificate(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)Lcom/sshtools/common/ssh/components/SshCertificate;

    move-result-object p0

    return-object p0
.end method

.method public static getCertificate(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)Lcom/sshtools/common/ssh/components/SshCertificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/publickey/InvalidPassphraseException;
        }
    .end annotation

    .line 130
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    invoke-static {p0, p1}, Lcom/sshtools/common/publickey/SshKeyUtils;->getPrivateKey(Ljava/io/File;Ljava/lang/String;)Lcom/sshtools/common/ssh/components/SshKeyPair;

    move-result-object p0

    .line 134
    invoke-static {p2}, Lcom/sshtools/common/publickey/SshKeyUtils;->getPublicKey(Ljava/io/File;)Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object p1

    .line 135
    instance-of v0, p1, Lcom/sshtools/common/publickey/OpenSshCertificate;

    if-eqz v0, :cond_0

    .line 138
    new-instance p2, Lcom/sshtools/common/ssh/components/SshCertificate;

    check-cast p1, Lcom/sshtools/common/publickey/OpenSshCertificate;

    invoke-direct {p2, p0, p1}, Lcom/sshtools/common/ssh/components/SshCertificate;-><init>(Lcom/sshtools/common/ssh/components/SshKeyPair;Lcom/sshtools/common/publickey/OpenSshCertificate;)V

    return-object p2

    .line 136
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%s is not a certificate file"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 131
    :cond_1
    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "No certificate file %s to match private key file %s"

    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getCertificate(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/InputStream;)Lcom/sshtools/common/ssh/components/SshCertificate;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/publickey/InvalidPassphraseException;
        }
    .end annotation

    .line 142
    invoke-static {p0, p1}, Lcom/sshtools/common/publickey/SshKeyUtils;->getPrivateKey(Ljava/io/InputStream;Ljava/lang/String;)Lcom/sshtools/common/ssh/components/SshKeyPair;

    move-result-object p0

    .line 143
    invoke-static {p2}, Lcom/sshtools/common/publickey/SshKeyUtils;->getPublicKey(Ljava/io/InputStream;)Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object p1

    .line 144
    instance-of p2, p1, Lcom/sshtools/common/publickey/OpenSshCertificate;

    if-eqz p2, :cond_0

    .line 147
    new-instance p2, Lcom/sshtools/common/ssh/components/SshCertificate;

    check-cast p1, Lcom/sshtools/common/publickey/OpenSshCertificate;

    invoke-direct {p2, p0, p1}, Lcom/sshtools/common/ssh/components/SshCertificate;-><init>(Lcom/sshtools/common/ssh/components/SshKeyPair;Lcom/sshtools/common/publickey/OpenSshCertificate;)V

    return-object p2

    .line 145
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Stream input is not a certificate file"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getCertificate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sshtools/common/ssh/components/SshCertificate;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/publickey/InvalidPassphraseException;
        }
    .end annotation

    .line 151
    invoke-static {p0, p1}, Lcom/sshtools/common/publickey/SshKeyUtils;->getPrivateKey(Ljava/lang/String;Ljava/lang/String;)Lcom/sshtools/common/ssh/components/SshKeyPair;

    move-result-object p0

    .line 152
    invoke-static {p2}, Lcom/sshtools/common/publickey/SshKeyUtils;->getPublicKey(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object p1

    .line 153
    instance-of p2, p1, Lcom/sshtools/common/publickey/OpenSshCertificate;

    if-eqz p2, :cond_0

    .line 156
    new-instance p2, Lcom/sshtools/common/ssh/components/SshCertificate;

    check-cast p1, Lcom/sshtools/common/publickey/OpenSshCertificate;

    invoke-direct {p2, p0, p1}, Lcom/sshtools/common/ssh/components/SshCertificate;-><init>(Lcom/sshtools/common/ssh/components/SshKeyPair;Lcom/sshtools/common/publickey/OpenSshCertificate;)V

    return-object p2

    .line 154
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "String input is not a certificate file"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getCertificateAndKey(Ljava/io/File;Ljava/lang/String;)Lcom/sshtools/common/ssh/components/SshKeyPair;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/publickey/InvalidPassphraseException;
        }
    .end annotation

    .line 252
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-cert.pub"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    invoke-static {p0, p1}, Lcom/sshtools/common/publickey/SshKeyUtils;->getPrivateKey(Ljava/io/File;Ljava/lang/String;)Lcom/sshtools/common/ssh/components/SshKeyPair;

    move-result-object p0

    .line 257
    invoke-static {v0}, Lcom/sshtools/common/publickey/SshKeyUtils;->getPublicKey(Ljava/io/File;)Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/common/ssh/components/SshKeyPair;->setPublicKey(Lcom/sshtools/common/ssh/components/SshPublicKey;)V

    return-object p0

    .line 254
    :cond_0
    new-instance p1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "No certificate file %s to match private key file %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getFingerprint(Lcom/sshtools/common/ssh/components/SshPublicKey;)Ljava/lang/String;
    .locals 0

    .line 212
    invoke-static {p0}, Lcom/sshtools/common/ssh/SshKeyFingerprint;->getFingerprint(Lcom/sshtools/common/ssh/components/SshPublicKey;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFingerprint(Ljava/io/File;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    invoke-static {p0}, Lcom/sshtools/common/publickey/SshKeyUtils;->getPublicKey(Ljava/io/File;)Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object p0

    invoke-static {p0}, Lcom/sshtools/common/ssh/SshKeyFingerprint;->getFingerprint(Lcom/sshtools/common/ssh/components/SshPublicKey;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFingerprint(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    invoke-static {p0}, Lcom/sshtools/common/publickey/SshKeyUtils;->getPublicKey(Ljava/io/InputStream;)Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object p0

    invoke-static {p0}, Lcom/sshtools/common/ssh/SshKeyFingerprint;->getFingerprint(Lcom/sshtools/common/ssh/components/SshPublicKey;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFingerprint(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    invoke-static {p0}, Lcom/sshtools/common/publickey/SshKeyUtils;->getPublicKey(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object p0

    invoke-static {p0}, Lcom/sshtools/common/ssh/SshKeyFingerprint;->getFingerprint(Lcom/sshtools/common/ssh/components/SshPublicKey;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFormattedKey(Lcom/sshtools/common/ssh/components/SshKeyPair;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-static {p0, p1}, Lcom/sshtools/common/publickey/SshPrivateKeyFileFactory;->create(Lcom/sshtools/common/ssh/components/SshKeyPair;Ljava/lang/String;)Lcom/sshtools/common/publickey/SshPrivateKeyFile;

    move-result-object p0

    .line 64
    new-instance p1, Ljava/lang/String;

    invoke-interface {p0}, Lcom/sshtools/common/publickey/SshPrivateKeyFile;->getFormattedKey()[B

    move-result-object p0

    const-string v0, "UTF-8"

    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p1
.end method

.method public static getFormattedKey(Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 58
    invoke-static {p0, p1, v0}, Lcom/sshtools/common/publickey/SshPublicKeyFileFactory;->create(Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/lang/String;I)Lcom/sshtools/common/publickey/SshPublicKeyFile;

    move-result-object p0

    .line 59
    new-instance p1, Ljava/lang/String;

    invoke-interface {p0}, Lcom/sshtools/common/publickey/SshPublicKeyFile;->getFormattedKey()[B

    move-result-object p0

    const-string v0, "UTF-8"

    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p1
.end method

.method public static getFormattedKey(Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-static {p0, p1, p2}, Lcom/sshtools/common/publickey/SshPublicKeyFileFactory;->create(Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/lang/String;I)Lcom/sshtools/common/publickey/SshPublicKeyFile;

    move-result-object p0

    .line 54
    new-instance p1, Ljava/lang/String;

    invoke-interface {p0}, Lcom/sshtools/common/publickey/SshPublicKeyFile;->getFormattedKey()[B

    move-result-object p0

    const-string p2, "UTF-8"

    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p1
.end method

.method public static getOpenSSHFormattedKey(Lcom/sshtools/common/ssh/components/SshPublicKey;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sshtools/common/publickey/SshKeyUtils;->getFormattedKey(Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getOpenSSHFormattedKey(Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 49
    invoke-static {p0, p1, v0}, Lcom/sshtools/common/publickey/SshKeyUtils;->getFormattedKey(Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPrivateKey(Ljava/io/File;)Lcom/sshtools/common/ssh/components/SshKeyPair;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/publickey/InvalidPassphraseException;
        }
    .end annotation

    .line 95
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/sshtools/common/util/IOUtils;->readUTF8StringFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    invoke-static {p0, v0}, Lcom/sshtools/common/publickey/SshKeyUtils;->getPrivateKey(Ljava/lang/String;Ljava/lang/String;)Lcom/sshtools/common/ssh/components/SshKeyPair;

    move-result-object p0

    return-object p0
.end method

.method public static getPrivateKey(Ljava/io/File;Lcom/sshtools/common/publickey/PassphrasePrompt;)Lcom/sshtools/common/ssh/components/SshKeyPair;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/publickey/InvalidPassphraseException;
        }
    .end annotation

    .line 99
    invoke-static {p0}, Lcom/sshtools/common/publickey/SshPrivateKeyFileFactory;->parse(Ljava/io/File;)Lcom/sshtools/common/publickey/SshPrivateKeyFile;

    move-result-object v0

    .line 100
    invoke-interface {v0}, Lcom/sshtools/common/publickey/SshPrivateKeyFile;->isPassphraseProtected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sshtools/common/publickey/PassphrasePrompt;->getPasshrase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/sshtools/common/publickey/SshPrivateKeyFile;->toKeyPair(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/SshKeyPair;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 103
    invoke-interface {v0, p0}, Lcom/sshtools/common/publickey/SshPrivateKeyFile;->toKeyPair(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/SshKeyPair;

    move-result-object p0

    return-object p0
.end method

.method public static getPrivateKey(Ljava/io/File;Ljava/lang/String;)Lcom/sshtools/common/ssh/components/SshKeyPair;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/publickey/InvalidPassphraseException;
        }
    .end annotation

    .line 91
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/sshtools/common/util/IOUtils;->readUTF8StringFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sshtools/common/publickey/SshKeyUtils;->getPrivateKey(Ljava/lang/String;Ljava/lang/String;)Lcom/sshtools/common/ssh/components/SshKeyPair;

    move-result-object p0

    return-object p0
.end method

.method public static getPrivateKey(Ljava/io/InputStream;Ljava/lang/String;)Lcom/sshtools/common/ssh/components/SshKeyPair;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/publickey/InvalidPassphraseException;
        }
    .end annotation

    .line 108
    invoke-static {p0}, Lcom/sshtools/common/util/IOUtils;->readUTF8StringFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sshtools/common/publickey/SshKeyUtils;->getPrivateKey(Ljava/lang/String;Ljava/lang/String;)Lcom/sshtools/common/ssh/components/SshKeyPair;

    move-result-object p0

    return-object p0
.end method

.method public static getPrivateKey(Ljava/lang/String;Lcom/sshtools/common/publickey/PassphrasePrompt;)Lcom/sshtools/common/ssh/components/SshKeyPair;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/publickey/InvalidPassphraseException;
        }
    .end annotation

    .line 117
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/sshtools/common/publickey/SshPrivateKeyFileFactory;->parse([B)Lcom/sshtools/common/publickey/SshPrivateKeyFile;

    move-result-object p0

    .line 118
    invoke-interface {p0}, Lcom/sshtools/common/publickey/SshPrivateKeyFile;->isPassphraseProtected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-interface {p0}, Lcom/sshtools/common/publickey/SshPrivateKeyFile;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sshtools/common/publickey/PassphrasePrompt;->getPasshrase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sshtools/common/publickey/SshPrivateKeyFile;->toKeyPair(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/SshKeyPair;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 121
    invoke-interface {p0, p1}, Lcom/sshtools/common/publickey/SshPrivateKeyFile;->toKeyPair(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/SshKeyPair;

    move-result-object p0

    return-object p0
.end method

.method public static getPrivateKey(Ljava/lang/String;Ljava/lang/String;)Lcom/sshtools/common/ssh/components/SshKeyPair;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/publickey/InvalidPassphraseException;
        }
    .end annotation

    .line 112
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/sshtools/common/publickey/SshPrivateKeyFileFactory;->parse([B)Lcom/sshtools/common/publickey/SshPrivateKeyFile;

    move-result-object p0

    .line 113
    invoke-interface {p0, p1}, Lcom/sshtools/common/publickey/SshPrivateKeyFile;->toKeyPair(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/SshKeyPair;

    move-result-object p0

    return-object p0
.end method

.method public static getPublicKey(Ljava/io/File;)Lcom/sshtools/common/ssh/components/SshPublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/sshtools/common/util/IOUtils;->readUTF8StringFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sshtools/common/publickey/SshKeyUtils;->getPublicKey(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object p0

    return-object p0
.end method

.method public static getPublicKey(Ljava/io/InputStream;)Lcom/sshtools/common/ssh/components/SshPublicKey;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    invoke-static {p0}, Lcom/sshtools/common/util/IOUtils;->readUTF8StringFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sshtools/common/publickey/SshKeyUtils;->getPublicKey(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object p0

    return-object p0
.end method

.method public static getPublicKey(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/SshPublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/sshtools/common/publickey/SshPublicKeyFileFactory;->parse([B)Lcom/sshtools/common/publickey/SshPublicKeyFile;

    move-result-object p0

    .line 77
    invoke-interface {p0}, Lcom/sshtools/common/publickey/SshPublicKeyFile;->toPublicKey()Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object p0

    return-object p0
.end method

.method public static getPublicKey(Ljava/nio/file/Path;)Lcom/sshtools/common/ssh/components/SshPublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 81
    new-array v0, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p0, v0}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lcom/sshtools/common/publickey/SshPublicKeyFileFactory;->parse(Ljava/io/InputStream;)Lcom/sshtools/common/publickey/SshPublicKeyFile;

    move-result-object p0

    .line 82
    invoke-interface {p0}, Lcom/sshtools/common/publickey/SshPublicKeyFile;->toPublicKey()Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object p0

    return-object p0
.end method

.method public static getPublicKeyComment(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/sshtools/common/publickey/SshPublicKeyFileFactory;->parse([B)Lcom/sshtools/common/publickey/SshPublicKeyFile;

    move-result-object p0

    .line 87
    invoke-interface {p0}, Lcom/sshtools/common/publickey/SshPublicKeyFile;->getComment()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRSAPrivateKeyWithSHA256Signature(Ljava/io/File;Ljava/lang/String;)Lcom/sshtools/common/ssh/components/SshKeyPair;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/publickey/InvalidPassphraseException;
        }
    .end annotation

    .line 176
    invoke-static {p0, p1}, Lcom/sshtools/common/publickey/SshKeyUtils;->getPrivateKey(Ljava/io/File;Ljava/lang/String;)Lcom/sshtools/common/ssh/components/SshKeyPair;

    move-result-object p0

    invoke-static {p0}, Lcom/sshtools/common/publickey/SshKeyUtils;->makeRSAWithSHA256Signature(Lcom/sshtools/common/ssh/components/SshKeyPair;)Lcom/sshtools/common/ssh/components/SshKeyPair;

    move-result-object p0

    return-object p0
.end method

.method public static getRSAPrivateKeyWithSHA256Signature(Ljava/io/InputStream;Ljava/lang/String;)Lcom/sshtools/common/ssh/components/SshKeyPair;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/publickey/InvalidPassphraseException;
        }
    .end annotation

    .line 172
    invoke-static {p0, p1}, Lcom/sshtools/common/publickey/SshKeyUtils;->getPrivateKey(Ljava/io/InputStream;Ljava/lang/String;)Lcom/sshtools/common/ssh/components/SshKeyPair;

    move-result-object p0

    invoke-static {p0}, Lcom/sshtools/common/publickey/SshKeyUtils;->makeRSAWithSHA256Signature(Lcom/sshtools/common/ssh/components/SshKeyPair;)Lcom/sshtools/common/ssh/components/SshKeyPair;

    move-result-object p0

    return-object p0
.end method

.method public static getRSAPrivateKeyWithSHA256Signature(Ljava/lang/String;Ljava/lang/String;)Lcom/sshtools/common/ssh/components/SshKeyPair;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/publickey/InvalidPassphraseException;
        }
    .end annotation

    .line 167
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/sshtools/common/publickey/SshPrivateKeyFileFactory;->parse([B)Lcom/sshtools/common/publickey/SshPrivateKeyFile;

    move-result-object p0

    .line 168
    invoke-interface {p0, p1}, Lcom/sshtools/common/publickey/SshPrivateKeyFile;->toKeyPair(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/SshKeyPair;

    move-result-object p0

    invoke-static {p0}, Lcom/sshtools/common/publickey/SshKeyUtils;->makeRSAWithSHA256Signature(Lcom/sshtools/common/ssh/components/SshKeyPair;)Lcom/sshtools/common/ssh/components/SshKeyPair;

    move-result-object p0

    return-object p0
.end method

.method public static getRSAPrivateKeyWithSHA512Signature(Ljava/io/File;Ljava/lang/String;)Lcom/sshtools/common/ssh/components/SshKeyPair;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/publickey/InvalidPassphraseException;
        }
    .end annotation

    .line 196
    invoke-static {p0, p1}, Lcom/sshtools/common/publickey/SshKeyUtils;->getPrivateKey(Ljava/io/File;Ljava/lang/String;)Lcom/sshtools/common/ssh/components/SshKeyPair;

    move-result-object p0

    invoke-static {p0}, Lcom/sshtools/common/publickey/SshKeyUtils;->makeRSAWithSHA512Signature(Lcom/sshtools/common/ssh/components/SshKeyPair;)Lcom/sshtools/common/ssh/components/SshKeyPair;

    move-result-object p0

    return-object p0
.end method

.method public static getRSAPrivateKeyWithSHA512Signature(Ljava/io/InputStream;Ljava/lang/String;)Lcom/sshtools/common/ssh/components/SshKeyPair;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/publickey/InvalidPassphraseException;
        }
    .end annotation

    .line 192
    invoke-static {p0, p1}, Lcom/sshtools/common/publickey/SshKeyUtils;->getPrivateKey(Ljava/io/InputStream;Ljava/lang/String;)Lcom/sshtools/common/ssh/components/SshKeyPair;

    move-result-object p0

    invoke-static {p0}, Lcom/sshtools/common/publickey/SshKeyUtils;->makeRSAWithSHA512Signature(Lcom/sshtools/common/ssh/components/SshKeyPair;)Lcom/sshtools/common/ssh/components/SshKeyPair;

    move-result-object p0

    return-object p0
.end method

.method public static getRSAPrivateKeyWithSHA512Signature(Ljava/lang/String;Ljava/lang/String;)Lcom/sshtools/common/ssh/components/SshKeyPair;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/publickey/InvalidPassphraseException;
        }
    .end annotation

    .line 187
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/sshtools/common/publickey/SshPrivateKeyFileFactory;->parse([B)Lcom/sshtools/common/publickey/SshPrivateKeyFile;

    move-result-object p0

    .line 188
    invoke-interface {p0, p1}, Lcom/sshtools/common/publickey/SshPrivateKeyFile;->toKeyPair(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/SshKeyPair;

    move-result-object p0

    invoke-static {p0}, Lcom/sshtools/common/publickey/SshKeyUtils;->makeRSAWithSHA512Signature(Lcom/sshtools/common/ssh/components/SshKeyPair;)Lcom/sshtools/common/ssh/components/SshKeyPair;

    move-result-object p0

    return-object p0
.end method

.method public static isPrivateKeyFile(Ljava/io/File;)Z
    .locals 1

    .line 242
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :try_start_1
    invoke-static {v0}, Lcom/sshtools/common/publickey/SshPrivateKeyFileFactory;->parse(Ljava/io/InputStream;)Lcom/sshtools/common/publickey/SshPrivateKeyFile;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x1

    .line 245
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return p0

    :catchall_0
    move-exception p0

    .line 242
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static makeRSAWithSHA256Signature(Lcom/sshtools/common/ssh/components/SshKeyPair;)Lcom/sshtools/common/ssh/components/SshKeyPair;
    .locals 2

    .line 160
    new-instance v0, Lcom/sshtools/common/ssh/components/SshKeyPair;

    invoke-direct {v0}, Lcom/sshtools/common/ssh/components/SshKeyPair;-><init>()V

    .line 161
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/SshKeyPair;->getPrivateKey()Lcom/sshtools/common/ssh/components/SshPrivateKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sshtools/common/ssh/components/SshKeyPair;->setPrivateKey(Lcom/sshtools/common/ssh/components/SshPrivateKey;)V

    .line 162
    new-instance v1, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKeySHA256;

    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/SshKeyPair;->getPublicKey()Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object p0

    check-cast p0, Lcom/sshtools/common/ssh/components/SshRsaPublicKey;

    invoke-direct {v1, p0}, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKeySHA256;-><init>(Lcom/sshtools/common/ssh/components/SshRsaPublicKey;)V

    invoke-virtual {v0, v1}, Lcom/sshtools/common/ssh/components/SshKeyPair;->setPublicKey(Lcom/sshtools/common/ssh/components/SshPublicKey;)V

    return-object v0
.end method

.method public static makeRSAWithSHA512Signature(Lcom/sshtools/common/ssh/components/SshKeyPair;)Lcom/sshtools/common/ssh/components/SshKeyPair;
    .locals 2

    .line 180
    new-instance v0, Lcom/sshtools/common/ssh/components/SshKeyPair;

    invoke-direct {v0}, Lcom/sshtools/common/ssh/components/SshKeyPair;-><init>()V

    .line 181
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/SshKeyPair;->getPrivateKey()Lcom/sshtools/common/ssh/components/SshPrivateKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sshtools/common/ssh/components/SshKeyPair;->setPrivateKey(Lcom/sshtools/common/ssh/components/SshPrivateKey;)V

    .line 182
    new-instance v1, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKeySHA512;

    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/SshKeyPair;->getPublicKey()Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object p0

    check-cast p0, Lcom/sshtools/common/ssh/components/SshRsaPublicKey;

    invoke-direct {v1, p0}, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKeySHA512;-><init>(Lcom/sshtools/common/ssh/components/SshRsaPublicKey;)V

    invoke-virtual {v0, v1}, Lcom/sshtools/common/ssh/components/SshKeyPair;->setPublicKey(Lcom/sshtools/common/ssh/components/SshPublicKey;)V

    return-object v0
.end method

.method public static saveCertificate(Lcom/sshtools/common/ssh/components/SshCertificate;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 272
    invoke-static {p0, p1, p2, v0}, Lcom/sshtools/common/publickey/SshPrivateKeyFileFactory;->create(Lcom/sshtools/common/ssh/components/SshKeyPair;Ljava/lang/String;Ljava/lang/String;I)Lcom/sshtools/common/publickey/SshPrivateKeyFile;

    move-result-object p1

    .line 274
    invoke-interface {p1}, Lcom/sshtools/common/publickey/SshPrivateKeyFile;->getFormattedKey()[B

    move-result-object p1

    invoke-static {p1, p3}, Lcom/sshtools/common/util/IOUtils;->writeBytesToFile([BLjava/io/File;)V

    .line 276
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/SshCertificate;->getPublicKey()Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".pub"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2, v0}, Lcom/sshtools/common/publickey/SshKeyUtils;->savePublicKey(Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/lang/String;Ljava/io/File;)V

    .line 277
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/SshCertificate;->getCertificate()Lcom/sshtools/common/publickey/OpenSshCertificate;

    move-result-object p0

    new-instance p1, Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v1, "-cert.pub"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/sshtools/common/publickey/SshKeyUtils;->savePublicKey(Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method public static savePrivateKey(Lcom/sshtools/common/ssh/components/SshKeyPair;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 263
    invoke-static {p0, p1, p2, v0}, Lcom/sshtools/common/publickey/SshPrivateKeyFileFactory;->create(Lcom/sshtools/common/ssh/components/SshKeyPair;Ljava/lang/String;Ljava/lang/String;I)Lcom/sshtools/common/publickey/SshPrivateKeyFile;

    move-result-object p1

    .line 265
    invoke-interface {p1}, Lcom/sshtools/common/publickey/SshPrivateKeyFile;->getFormattedKey()[B

    move-result-object p1

    invoke-static {p1, p3}, Lcom/sshtools/common/util/IOUtils;->writeBytesToFile([BLjava/io/File;)V

    .line 267
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/SshKeyPair;->getPublicKey()Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object p0

    new-instance p1, Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v1, ".pub"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/sshtools/common/publickey/SshKeyUtils;->savePublicKey(Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method private static savePublicKey(Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/lang/String;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 282
    invoke-static {p0, p1, v0}, Lcom/sshtools/common/publickey/SshPublicKeyFileFactory;->create(Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/lang/String;I)Lcom/sshtools/common/publickey/SshPublicKeyFile;

    move-result-object p0

    .line 284
    invoke-interface {p0}, Lcom/sshtools/common/publickey/SshPublicKeyFile;->getFormattedKey()[B

    move-result-object p0

    invoke-static {p0, p2}, Lcom/sshtools/common/util/IOUtils;->writeBytesToFile([BLjava/io/File;)V

    return-void
.end method
