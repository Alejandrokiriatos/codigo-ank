.class public Lcom/sshtools/common/publickey/SECSHPublicKeyFile;
.super Lcom/sshtools/common/publickey/Base64EncodedFileFormat;
.source "SECSHPublicKeyFile.java"

# interfaces
.implements Lcom/sshtools/common/publickey/SshPublicKeyFile;


# static fields
.field static BEGIN:Ljava/lang/String; = "---- BEGIN SSH2 PUBLIC KEY ----"

.field static END:Ljava/lang/String; = "---- END SSH2 PUBLIC KEY ----"


# instance fields
.field algorithm:Ljava/lang/String;

.field encoded:[B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    sget-object v0, Lcom/sshtools/common/publickey/SECSHPublicKeyFile;->BEGIN:Ljava/lang/String;

    sget-object v1, Lcom/sshtools/common/publickey/SECSHPublicKeyFile;->END:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/sshtools/common/publickey/Base64EncodedFileFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :try_start_0
    invoke-interface {p1}, Lcom/sshtools/common/ssh/components/SshPublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/publickey/SECSHPublicKeyFile;->algorithm:Ljava/lang/String;

    .line 48
    invoke-interface {p1}, Lcom/sshtools/common/ssh/components/SshPublicKey;->getEncoded()[B

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/common/publickey/SECSHPublicKeyFile;->encoded:[B

    .line 49
    invoke-virtual {p0, p2}, Lcom/sshtools/common/publickey/SECSHPublicKeyFile;->setComment(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/sshtools/common/publickey/SECSHPublicKeyFile;->toPublicKey()Lcom/sshtools/common/ssh/components/SshPublicKey;
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 52
    :catch_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Failed to encode public key"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    sget-object v0, Lcom/sshtools/common/publickey/SECSHPublicKeyFile;->BEGIN:Ljava/lang/String;

    sget-object v1, Lcom/sshtools/common/publickey/SECSHPublicKeyFile;->END:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/sshtools/common/publickey/Base64EncodedFileFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, p1}, Lcom/sshtools/common/publickey/SECSHPublicKeyFile;->getKeyBlob([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/common/publickey/SECSHPublicKeyFile;->encoded:[B

    .line 41
    invoke-virtual {p0}, Lcom/sshtools/common/publickey/SECSHPublicKeyFile;->toPublicKey()Lcom/sshtools/common/ssh/components/SshPublicKey;

    return-void
.end method


# virtual methods
.method public getComment()Ljava/lang/String;
    .locals 1

    .line 57
    const-string v0, "Comment"

    invoke-virtual {p0, v0}, Lcom/sshtools/common/publickey/SECSHPublicKeyFile;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormattedKey()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/sshtools/common/publickey/SECSHPublicKeyFile;->encoded:[B

    invoke-virtual {p0, v0}, Lcom/sshtools/common/publickey/SECSHPublicKeyFile;->formatKey([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 4

    .line 69
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v2, ""

    if-eqz v0, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 70
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    move-object v1, v2

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 69
    const-string v0, "Comment"

    invoke-virtual {p0, v0, p1}, Lcom/sshtools/common/publickey/SECSHPublicKeyFile;->setHeaderValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public toPublicKey()Lcom/sshtools/common/ssh/components/SshPublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/sshtools/common/publickey/SECSHPublicKeyFile;->encoded:[B

    invoke-static {v0}, Lcom/sshtools/common/publickey/SshPublicKeyFileFactory;->decodeSSH2PublicKey([B)Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 75
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sshtools/common/publickey/SECSHPublicKeyFile;->getFormattedKey()[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 77
    :catch_0
    const-string v0, "Invalid encoding!"

    return-object v0
.end method
