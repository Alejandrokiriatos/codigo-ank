.class public Lcom/sshtools/common/publickey/SshPublicKeyFileFactory;
.super Ljava/lang/Object;
.source "SshPublicKeyFileFactory.java"


# static fields
.field public static final OPENSSH_FORMAT:I = 0x0

.field public static final SECSH_FORMAT:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertFile(Ljava/io/File;ILjava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/sshtools/common/publickey/SshPublicKeyFileFactory;->parse(Ljava/io/InputStream;)Lcom/sshtools/common/publickey/SshPublicKeyFile;

    move-result-object p0

    .line 271
    invoke-interface {p0}, Lcom/sshtools/common/publickey/SshPublicKeyFile;->toPublicKey()Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object v0

    invoke-interface {p0}, Lcom/sshtools/common/publickey/SshPublicKeyFile;->getComment()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1, p2}, Lcom/sshtools/common/publickey/SshPublicKeyFileFactory;->createFile(Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/lang/String;ILjava/io/File;)V

    return-void
.end method

.method public static create(Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/lang/String;I)Lcom/sshtools/common/publickey/SshPublicKeyFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 204
    invoke-static {p0, v0, p1, p2}, Lcom/sshtools/common/publickey/SshPublicKeyFileFactory;->create(Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/lang/String;Ljava/lang/String;I)Lcom/sshtools/common/publickey/SshPublicKeyFile;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/lang/String;Ljava/lang/String;I)Lcom/sshtools/common/publickey/SshPublicKeyFile;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_1

    const/4 p1, 0x1

    if-ne p3, p1, :cond_0

    .line 227
    new-instance p1, Lcom/sshtools/common/publickey/SECSHPublicKeyFile;

    invoke-direct {p1, p0, p2}, Lcom/sshtools/common/publickey/SECSHPublicKeyFile;-><init>(Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/lang/String;)V

    return-object p1

    .line 229
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid format type specified!"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 225
    :cond_1
    new-instance p3, Lcom/sshtools/common/publickey/OpenSSHPublicKeyFile;

    invoke-direct {p3, p0, p2, p1}, Lcom/sshtools/common/publickey/OpenSSHPublicKeyFile;-><init>(Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/lang/String;Ljava/lang/String;)V

    return-object p3
.end method

.method public static createFile(Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/lang/String;ILjava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 246
    invoke-static {p0, p1, p2}, Lcom/sshtools/common/publickey/SshPublicKeyFileFactory;->create(Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/lang/String;I)Lcom/sshtools/common/publickey/SshPublicKeyFile;

    move-result-object p0

    .line 248
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 251
    :try_start_0
    invoke-interface {p0}, Lcom/sshtools/common/publickey/SshPublicKeyFile;->getFormattedKey()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 252
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 255
    throw p0
.end method

.method public static decodeSSH2PublicKey(Ljava/lang/String;[B)Lcom/sshtools/common/ssh/components/SshPublicKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    :try_start_0
    invoke-static {}, Lcom/sshtools/common/ssh/components/ComponentManager;->getInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/ssh/components/ComponentManager;->supportedPublicKeys()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sshtools/common/ssh/components/ComponentFactory;->getInstance(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/Component;

    move-result-object p0

    check-cast p0, Lcom/sshtools/common/ssh/components/SshPublicKey;

    .line 129
    array-length v0, p1

    const/4 v1, 0x0

    invoke-interface {p0, p1, v1, v0}, Lcom/sshtools/common/ssh/components/SshPublicKey;->init([BII)Lcom/sshtools/common/ssh/components/SshPublicKey;
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 132
    new-instance p1, Lcom/sshtools/common/ssh/SshIOException;

    invoke-direct {p1, p0}, Lcom/sshtools/common/ssh/SshIOException;-><init>(Lcom/sshtools/common/ssh/SshException;)V

    throw p1
.end method

.method public static decodeSSH2PublicKey([B)Lcom/sshtools/common/ssh/components/SshPublicKey;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    new-instance v0, Lcom/sshtools/common/util/ByteArrayReader;

    invoke-direct {v0, p0}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V

    .line 105
    :try_start_0
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :try_start_1
    invoke-static {}, Lcom/sshtools/common/ssh/components/ComponentManager;->getInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sshtools/common/ssh/components/ComponentManager;->supportedPublicKeys()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v2

    .line 110
    invoke-virtual {v2, v1}, Lcom/sshtools/common/ssh/components/ComponentFactory;->getInstance(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/Component;

    move-result-object v1

    check-cast v1, Lcom/sshtools/common/ssh/components/SshPublicKey;

    .line 111
    array-length v2, p0

    const/4 v3, 0x0

    invoke-interface {v1, p0, v3, v2}, Lcom/sshtools/common/ssh/components/SshPublicKey;->init([BII)Lcom/sshtools/common/ssh/components/SshPublicKey;
    :try_end_1
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-object v1

    :catch_0
    move-exception p0

    .line 114
    :try_start_2
    new-instance v1, Lcom/sshtools/common/ssh/SshIOException;

    invoke-direct {v1, p0}, Lcom/sshtools/common/ssh/SshIOException;-><init>(Lcom/sshtools/common/ssh/SshException;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 117
    :catch_1
    :try_start_3
    new-instance p0, Ljava/io/IOException;

    const-string v1, "An error occurred parsing a public key file! Is the file corrupt?"

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 120
    :goto_0
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 121
    throw p0
.end method

.method public static parse(Ljava/io/InputStream;)Lcom/sshtools/common/publickey/SshPublicKeyFile;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 176
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 177
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 179
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/sshtools/common/publickey/SshPublicKeyFileFactory;->parse([B)Lcom/sshtools/common/publickey/SshPublicKeyFile;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 185
    :catch_1
    throw v0
.end method

.method public static parse([B)Lcom/sshtools/common/publickey/SshPublicKeyFile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    :try_start_0
    sget-object v0, Lcom/sshtools/common/publickey/SECSHPublicKeyFile;->BEGIN:Ljava/lang/String;

    sget-object v1, Lcom/sshtools/common/publickey/SECSHPublicKeyFile;->END:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/sshtools/common/publickey/SECSHPublicKeyFile;->isFormatted([BLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    new-instance v0, Lcom/sshtools/common/publickey/SECSHPublicKeyFile;

    invoke-direct {v0, p0}, Lcom/sshtools/common/publickey/SECSHPublicKeyFile;-><init>([B)V

    return-object v0

    .line 149
    :cond_0
    invoke-static {p0}, Lcom/sshtools/common/publickey/OpenSSHPublicKeyFile;->isFormatted([B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    new-instance v0, Lcom/sshtools/common/publickey/OpenSSHPublicKeyFile;

    invoke-direct {v0, p0}, Lcom/sshtools/common/publickey/OpenSSHPublicKeyFile;-><init>([B)V

    return-object v0

    .line 152
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Unable to parse key, format could not be identified"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    .line 155
    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_2

    .line 156
    throw p0

    :cond_2
    const/4 v0, 0x0

    .line 158
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Cannot parse public key"

    invoke-static {v1, p0, v0}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 159
    new-instance p0, Ljava/io/IOException;

    const-string v0, "An error occurred parsing a public key file! Is the file corrupt?"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
