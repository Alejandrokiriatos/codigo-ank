.class public abstract Lcom/sshtools/common/publickey/OpenSshCertificate;
.super Ljava/lang/Object;
.source "OpenSshCertificate.java"

# interfaces
.implements Lcom/sshtools/common/ssh/components/SshPublicKey;


# static fields
.field public static final OPTION_FORCE_COMMAND:Ljava/lang/String; = "force-command"

.field public static final OPTION_SOURCE_ADDRESS:Ljava/lang/String; = "source-address"

.field public static final PERMIT_AGENT_FORWARDING:Ljava/lang/String; = "permit-agent-forwarding"

.field public static final PERMIT_PORT_FORWARDING:Ljava/lang/String; = "permit-port-forwarding"

.field public static final PERMIT_USER_PTY:Ljava/lang/String; = "permit-pty"

.field public static final PERMIT_USER_RC:Ljava/lang/String; = "permit-user-rc"

.field public static final PERMIT_X11_FORWARDING:Ljava/lang/String; = "permit-x11-forwarding"

.field public static final SSH_CERT_TYPE_HOST:I = 0x2

.field public static final SSH_CERT_TYPE_USER:I = 0x1


# instance fields
.field criticalOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sshtools/common/publickey/CriticalOption;",
            ">;"
        }
    .end annotation
.end field

.field extensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sshtools/common/publickey/CertificateExtension;",
            ">;"
        }
    .end annotation
.end field

.field keyId:Ljava/lang/String;

.field nonce:[B

.field protected publicKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

.field reserved:Ljava/lang/String;

.field serial:Lcom/sshtools/common/util/UnsignedInteger64;

.field signature:[B

.field signedBy:Lcom/sshtools/common/ssh/components/SshPublicKey;

.field type:I

.field validAfter:Lcom/sshtools/common/util/UnsignedInteger64;

.field validBefore:Lcom/sshtools/common/util/UnsignedInteger64;

.field validPrincipals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->validPrincipals:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->criticalOptions:Ljava/util/List;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->extensions:Ljava/util/List;

    return-void
.end method

.method private encodeSignature(Lcom/sshtools/common/util/ByteArrayWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->signature:[B

    invoke-virtual {p1, v0}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBinaryString([B)V

    return-void
.end method


# virtual methods
.method protected decodeCertificate(Lcom/sshtools/common/util/ByteArrayReader;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 231
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readUINT64()Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->serial:Lcom/sshtools/common/util/UnsignedInteger64;

    .line 233
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->type:I

    .line 235
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->keyId:Ljava/lang/String;

    .line 237
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readBinaryString()[B

    move-result-object v0

    .line 239
    new-instance v1, Lcom/sshtools/common/util/ByteArrayReader;

    invoke-direct {v1, v0}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->validPrincipals:Ljava/util/List;

    .line 241
    :goto_0
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->available()I

    move-result v0

    if-lez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->validPrincipals:Ljava/util/List;

    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 244
    :cond_0
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 246
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readUINT64()Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->validAfter:Lcom/sshtools/common/util/UnsignedInteger64;

    .line 248
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readUINT64()Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->validBefore:Lcom/sshtools/common/util/UnsignedInteger64;

    .line 249
    new-instance v0, Lcom/sshtools/common/util/ByteArrayReader;

    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readBinaryString()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V

    .line 251
    iget-object v1, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->criticalOptions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 253
    :goto_1
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->available()I

    move-result v1

    if-lez v1, :cond_1

    .line 254
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object v1

    .line 255
    iget-object v2, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->criticalOptions:Ljava/util/List;

    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readBinaryString()[B

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sshtools/common/publickey/CriticalOption;->createKnownOption(Ljava/lang/String;[B)Lcom/sshtools/common/publickey/CriticalOption;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 258
    :cond_1
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 259
    new-instance v0, Lcom/sshtools/common/util/ByteArrayReader;

    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readBinaryString()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V

    .line 261
    iget-object v1, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->extensions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 263
    :goto_2
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->available()I

    move-result v1

    if-lez v1, :cond_2

    .line 264
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 265
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readBinaryString()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sshtools/common/publickey/CertificateExtension;->createKnownExtension(Ljava/lang/String;[B)Lcom/sshtools/common/publickey/CertificateExtension;

    move-result-object v1

    .line 266
    iget-object v2, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->extensions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 268
    :cond_2
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 269
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->reserved:Ljava/lang/String;

    .line 272
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readBinaryString()[B

    move-result-object v0

    .line 271
    invoke-static {v0}, Lcom/sshtools/common/publickey/SshPublicKeyFileFactory;->decodeSSH2PublicKey([B)Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->signedBy:Lcom/sshtools/common/ssh/components/SshPublicKey;

    .line 274
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readBinaryString()[B

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->signature:[B

    .line 276
    invoke-virtual {p0}, Lcom/sshtools/common/publickey/OpenSshCertificate;->verify()V

    return-void
.end method

.method protected abstract decodePublicKey(Lcom/sshtools/common/util/ByteArrayReader;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation
.end method

.method protected encodeCertificate(Lcom/sshtools/common/util/ByteArrayWriter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->serial:Lcom/sshtools/common/util/UnsignedInteger64;

    invoke-virtual {p1, v0}, Lcom/sshtools/common/util/ByteArrayWriter;->writeUINT64(Lcom/sshtools/common/util/UnsignedInteger64;)V

    .line 177
    iget v0, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->type:I

    invoke-virtual {p1, v0}, Lcom/sshtools/common/util/ByteArrayWriter;->writeInt(I)V

    .line 179
    iget-object v0, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->keyId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 181
    new-instance v0, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {v0}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V

    .line 182
    iget-object v1, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->validPrincipals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 183
    invoke-virtual {v0, v2}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 186
    :cond_0
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBinaryString([B)V

    .line 187
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V

    .line 189
    iget-object v0, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->validAfter:Lcom/sshtools/common/util/UnsignedInteger64;

    invoke-virtual {p1, v0}, Lcom/sshtools/common/util/ByteArrayWriter;->writeUINT64(Lcom/sshtools/common/util/UnsignedInteger64;)V

    .line 190
    iget-object v0, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->validBefore:Lcom/sshtools/common/util/UnsignedInteger64;

    invoke-virtual {p1, v0}, Lcom/sshtools/common/util/ByteArrayWriter;->writeUINT64(Lcom/sshtools/common/util/UnsignedInteger64;)V

    .line 192
    new-instance v0, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {v0}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V

    .line 194
    iget-object v1, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->criticalOptions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sshtools/common/publickey/CriticalOption;

    .line 196
    invoke-virtual {v2}, Lcom/sshtools/common/publickey/CriticalOption;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v2}, Lcom/sshtools/common/publickey/CriticalOption;->getStoredValue()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBinaryString([B)V

    goto :goto_1

    .line 200
    :cond_1
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBinaryString([B)V

    .line 201
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V

    .line 203
    new-instance v0, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {v0}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V

    .line 205
    iget-object v1, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->extensions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sshtools/common/publickey/CertificateExtension;

    .line 206
    invoke-virtual {v2}, Lcom/sshtools/common/publickey/CertificateExtension;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v2}, Lcom/sshtools/common/publickey/CertificateExtension;->getStoredValue()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBinaryString([B)V

    goto :goto_2

    .line 210
    :cond_2
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBinaryString([B)V

    .line 211
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V

    .line 213
    iget-object v0, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->reserved:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->signedBy:Lcom/sshtools/common/ssh/components/SshPublicKey;

    invoke-interface {v0}, Lcom/sshtools/common/ssh/components/SshPublicKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBinaryString([B)V

    return-void
.end method

.method public getCriticalOptionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sshtools/common/publickey/CriticalOption;",
            ">;"
        }
    .end annotation

    .line 416
    iget-object v0, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->criticalOptions:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 137
    new-instance v0, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {v0}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V

    .line 141
    :try_start_0
    invoke-virtual {p0}, Lcom/sshtools/common/publickey/OpenSshCertificate;->getEncodingAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->nonce:[B

    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBinaryString([B)V

    .line 144
    new-instance v1, Lcom/sshtools/common/util/ByteArrayReader;

    invoke-virtual {p0}, Lcom/sshtools/common/publickey/OpenSshCertificate;->getSignedKey()Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object v2

    invoke-interface {v2}, Lcom/sshtools/common/ssh/components/SshPublicKey;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V

    .line 145
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    .line 147
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->array()[B

    move-result-object v2

    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->getPosition()I

    move-result v3

    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->available()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/sshtools/common/util/ByteArrayWriter;->write([BII)V

    .line 148
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 150
    invoke-virtual {p0, v0}, Lcom/sshtools/common/publickey/OpenSshCertificate;->encodeCertificate(Lcom/sshtools/common/util/ByteArrayWriter;)V

    .line 152
    invoke-direct {p0, v0}, Lcom/sshtools/common/publickey/OpenSshCertificate;->encodeSignature(Lcom/sshtools/common/util/ByteArrayWriter;)V

    .line 154
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :try_start_1
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object v1

    :catchall_0
    move-exception v1

    .line 156
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 157
    new-instance v1, Lcom/sshtools/common/ssh/SshException;

    const-string v2, "Failed to encode public key"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    .line 161
    :try_start_3
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 164
    :catch_1
    throw v1
.end method

.method public getEncodingAlgorithm()Ljava/lang/String;
    .locals 1

    .line 84
    invoke-virtual {p0}, Lcom/sshtools/common/publickey/OpenSshCertificate;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtension(Ljava/lang/String;)Lcom/sshtools/common/publickey/CertificateExtension;
    .locals 3

    .line 220
    iget-object v0, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->extensions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/common/publickey/CertificateExtension;

    .line 221
    invoke-virtual {v1}, Lcom/sshtools/common/publickey/CertificateExtension;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getExtensionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sshtools/common/publickey/CertificateExtension;",
            ">;"
        }
    .end annotation

    .line 420
    iget-object v0, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->extensions:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getFingerprint()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 100
    invoke-virtual {p0}, Lcom/sshtools/common/publickey/OpenSshCertificate;->getSignedKey()Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object v0

    invoke-interface {v0}, Lcom/sshtools/common/ssh/components/SshPublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/sshtools/common/ssh/SshKeyFingerprint;->getFingerprint([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getForcedCommand()Ljava/lang/String;
    .locals 4

    .line 428
    iget-object v0, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->criticalOptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/common/publickey/CriticalOption;

    .line 429
    invoke-virtual {v1}, Lcom/sshtools/common/publickey/CriticalOption;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "force-command"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 430
    invoke-virtual {v1}, Lcom/sshtools/common/publickey/CriticalOption;->getStringValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKeyId()Ljava/lang/String;
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->keyId:Ljava/lang/String;

    return-object v0
.end method

.method public getPrincipals()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 412
    iget-object v0, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->validPrincipals:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSerial()Lcom/sshtools/common/util/UnsignedInteger64;
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->serial:Lcom/sshtools/common/util/UnsignedInteger64;

    return-object v0
.end method

.method public getSignedBy()Lcom/sshtools/common/ssh/components/SshPublicKey;
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->signedBy:Lcom/sshtools/common/ssh/components/SshPublicKey;

    return-object v0
.end method

.method public getSignedKey()Lcom/sshtools/common/ssh/components/SshPublicKey;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->publicKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    return-object v0
.end method

.method public getSourceAddresses()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 437
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 439
    iget-object v1, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->criticalOptions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sshtools/common/publickey/CriticalOption;

    .line 440
    invoke-virtual {v2}, Lcom/sshtools/common/publickey/CriticalOption;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "source-address"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 441
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-virtual {v2}, Lcom/sshtools/common/publickey/CriticalOption;->getStringValue()Ljava/lang/String;

    move-result-object v2

    const-string v4, ","

    invoke-direct {v3, v2, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 443
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 447
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 408
    iget v0, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->type:I

    return v0
.end method

.method public getValidAfter()Ljava/util/Date;
    .locals 5

    .line 455
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->validAfter:Lcom/sshtools/common/util/UnsignedInteger64;

    invoke-virtual {v1}, Lcom/sshtools/common/util/UnsignedInteger64;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getValidBefore()Ljava/util/Date;
    .locals 5

    .line 451
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->validBefore:Lcom/sshtools/common/util/UnsignedInteger64;

    invoke-virtual {v1}, Lcom/sshtools/common/util/UnsignedInteger64;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public init([BII)Lcom/sshtools/common/ssh/components/SshPublicKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 105
    new-instance v0, Lcom/sshtools/common/util/ByteArrayReader;

    invoke-direct {v0, p1, p2, p3}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([BII)V

    const/4 p1, 0x5

    .line 109
    :try_start_0
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object p2

    .line 111
    invoke-virtual {p0}, Lcom/sshtools/common/publickey/OpenSshCertificate;->getEncodingAlgorithm()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 116
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readBinaryString()[B

    move-result-object p2

    iput-object p2, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->nonce:[B

    .line 118
    invoke-virtual {p0, v0}, Lcom/sshtools/common/publickey/OpenSshCertificate;->decodePublicKey(Lcom/sshtools/common/util/ByteArrayReader;)V

    .line 120
    invoke-virtual {p0, v0}, Lcom/sshtools/common/publickey/OpenSshCertificate;->decodeCertificate(Lcom/sshtools/common/util/ByteArrayReader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-object p0

    .line 112
    :cond_0
    :try_start_1
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    const-string p3, "The encoded key is not DSA"

    invoke-direct {p2, p3, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p2

    .line 123
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 124
    new-instance p3, Lcom/sshtools/common/ssh/SshException;

    const-string v1, "Failed to obtain certificate key instance from JCE"

    invoke-direct {p3, v1, p1, p2}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    :goto_0
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 130
    throw p1
.end method

.method public isForceCommand()Z
    .locals 1

    .line 424
    invoke-virtual {p0}, Lcom/sshtools/common/publickey/OpenSshCertificate;->getForcedCommand()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isHostCertificate()Z
    .locals 2

    .line 92
    iget v0, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isUserCertificate()Z
    .locals 2

    .line 88
    iget v0, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public sign(Lcom/sshtools/common/ssh/components/SshPublicKey;Lcom/sshtools/common/util/UnsignedInteger64;ILjava/lang/String;Ljava/util/List;Lcom/sshtools/common/util/UnsignedInteger64;Lcom/sshtools/common/util/UnsignedInteger64;Ljava/util/List;Ljava/util/List;Lcom/sshtools/common/ssh/components/SshKeyPair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/common/ssh/components/SshPublicKey;",
            "Lcom/sshtools/common/util/UnsignedInteger64;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sshtools/common/util/UnsignedInteger64;",
            "Lcom/sshtools/common/util/UnsignedInteger64;",
            "Ljava/util/List<",
            "Lcom/sshtools/common/publickey/CriticalOption;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sshtools/common/publickey/CertificateExtension;",
            ">;",
            "Lcom/sshtools/common/ssh/components/SshKeyPair;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 286
    iput-object p1, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->publicKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    const/16 v0, 0x20

    .line 287
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->nonce:[B

    .line 288
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEComponentManager;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iget-object v1, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->nonce:[B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 289
    iput-object p2, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->serial:Lcom/sshtools/common/util/UnsignedInteger64;

    .line 290
    iput p3, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->type:I

    .line 291
    iput-object p4, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->keyId:Ljava/lang/String;

    .line 292
    iput-object p5, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->validPrincipals:Ljava/util/List;

    .line 293
    iput-object p6, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->validAfter:Lcom/sshtools/common/util/UnsignedInteger64;

    .line 294
    iput-object p7, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->validBefore:Lcom/sshtools/common/util/UnsignedInteger64;

    .line 295
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->criticalOptions:Ljava/util/List;

    .line 296
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->extensions:Ljava/util/List;

    .line 297
    const-string p2, ""

    iput-object p2, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->reserved:Ljava/lang/String;

    .line 298
    invoke-virtual {p10}, Lcom/sshtools/common/ssh/components/SshKeyPair;->getPublicKey()Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object p2

    iput-object p2, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->signedBy:Lcom/sshtools/common/ssh/components/SshPublicKey;

    .line 300
    new-instance p2, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {p2}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V

    const/4 p3, 0x5

    .line 304
    :try_start_0
    invoke-virtual {p0}, Lcom/sshtools/common/publickey/OpenSshCertificate;->getEncodingAlgorithm()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 305
    iget-object p4, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->nonce:[B

    invoke-virtual {p2, p4}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBinaryString([B)V

    .line 307
    new-instance p4, Lcom/sshtools/common/util/ByteArrayReader;

    invoke-interface {p1}, Lcom/sshtools/common/ssh/components/SshPublicKey;->getEncoded()[B

    move-result-object p1

    invoke-direct {p4, p1}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 309
    :try_start_1
    invoke-virtual {p4}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    .line 311
    invoke-virtual {p4}, Lcom/sshtools/common/util/ByteArrayReader;->array()[B

    move-result-object p1

    invoke-virtual {p4}, Lcom/sshtools/common/util/ByteArrayReader;->getPosition()I

    move-result p5

    invoke-virtual {p4}, Lcom/sshtools/common/util/ByteArrayReader;->available()I

    move-result p6

    invoke-virtual {p2, p1, p5, p6}, Lcom/sshtools/common/util/ByteArrayWriter;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 313
    :try_start_2
    invoke-virtual {p4}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 316
    invoke-virtual {p0, p2}, Lcom/sshtools/common/publickey/OpenSshCertificate;->encodeCertificate(Lcom/sshtools/common/util/ByteArrayWriter;)V

    .line 317
    invoke-virtual {p2}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object p1

    .line 319
    new-instance p4, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {p4}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 321
    :try_start_3
    invoke-virtual {p10}, Lcom/sshtools/common/ssh/components/SshKeyPair;->getPublicKey()Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object p5

    invoke-interface {p5}, Lcom/sshtools/common/ssh/components/SshPublicKey;->getSigningAlgorithm()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p10}, Lcom/sshtools/common/ssh/components/SshKeyPair;->getPrivateKey()Lcom/sshtools/common/ssh/components/SshPrivateKey;

    move-result-object p5

    invoke-interface {p5, p1}, Lcom/sshtools/common/ssh/components/SshPrivateKey;->sign([B)[B

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBinaryString([B)V

    .line 323
    invoke-virtual {p4}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->signature:[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 325
    :try_start_4
    invoke-virtual {p4}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V

    .line 328
    new-instance p1, Lcom/sshtools/common/util/ByteArrayReader;

    invoke-virtual {p0}, Lcom/sshtools/common/publickey/OpenSshCertificate;->getEncoded()[B

    move-result-object p4

    invoke-direct {p1, p4}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 331
    :try_start_5
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object p4

    .line 332
    invoke-virtual {p0}, Lcom/sshtools/common/publickey/OpenSshCertificate;->getAlgorithm()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_1

    .line 338
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readBinaryString()[B

    move-result-object p4

    .line 339
    iget-object p5, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->nonce:[B

    invoke-static {p5, p4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 343
    invoke-virtual {p0, p1}, Lcom/sshtools/common/publickey/OpenSshCertificate;->decodePublicKey(Lcom/sshtools/common/util/ByteArrayReader;)V

    .line 345
    invoke-virtual {p0, p1}, Lcom/sshtools/common/publickey/OpenSshCertificate;->decodeCertificate(Lcom/sshtools/common/util/ByteArrayReader;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 347
    :try_start_6
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 357
    :try_start_7
    invoke-virtual {p2}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    return-void

    .line 340
    :cond_0
    :try_start_8
    new-instance p4, Lcom/sshtools/common/ssh/SshException;

    const-string p5, "Unexpected encoding error generating signed certificate [nonce]"

    invoke-direct {p4, p5, p3}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p4

    .line 333
    :cond_1
    new-instance p5, Lcom/sshtools/common/ssh/SshException;

    const-string p6, "Unexpected encoding error generating signed certificate [%s] [%s]"

    .line 335
    invoke-virtual {p0}, Lcom/sshtools/common/publickey/OpenSshCertificate;->getAlgorithm()Ljava/lang/String;

    move-result-object p7

    filled-new-array {p4, p7}, [Ljava/lang/Object;

    move-result-object p4

    .line 333
    invoke-static {p6, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p5, p4, p3}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_0
    move-exception p4

    .line 347
    :try_start_9
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 348
    throw p4

    :catchall_1
    move-exception p1

    .line 325
    invoke-virtual {p4}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V

    .line 326
    throw p1

    :catchall_2
    move-exception p1

    .line 313
    invoke-virtual {p4}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 314
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception p1

    .line 351
    :try_start_a
    const-string p4, "Ssh certificate sign failed"

    const/4 p5, 0x0

    new-array p5, p5, [Ljava/lang/Object;

    invoke-static {p4, p1, p5}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 352
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 353
    new-instance p1, Lcom/sshtools/common/ssh/SshException;

    const-string p4, "Failed to encode public key"

    invoke-direct {p1, p4, p3}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception p1

    .line 357
    :try_start_b
    invoke-virtual {p2}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    .line 360
    :catch_1
    throw p1
.end method

.method public verify()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 365
    new-instance v0, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {v0}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V

    const/4 v1, 0x5

    .line 369
    :try_start_0
    invoke-virtual {p0}, Lcom/sshtools/common/publickey/OpenSshCertificate;->getEncodingAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 370
    iget-object v2, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->nonce:[B

    invoke-virtual {v0, v2}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBinaryString([B)V

    .line 372
    new-instance v2, Lcom/sshtools/common/util/ByteArrayReader;

    iget-object v3, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->publicKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    invoke-interface {v3}, Lcom/sshtools/common/ssh/components/SshPublicKey;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 374
    :try_start_1
    invoke-virtual {v2}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    .line 376
    invoke-virtual {v2}, Lcom/sshtools/common/util/ByteArrayReader;->array()[B

    move-result-object v3

    invoke-virtual {v2}, Lcom/sshtools/common/util/ByteArrayReader;->getPosition()I

    move-result v4

    invoke-virtual {v2}, Lcom/sshtools/common/util/ByteArrayReader;->available()I

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/sshtools/common/util/ByteArrayWriter;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 378
    :try_start_2
    invoke-virtual {v2}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 381
    invoke-virtual {p0, v0}, Lcom/sshtools/common/publickey/OpenSshCertificate;->encodeCertificate(Lcom/sshtools/common/util/ByteArrayWriter;)V

    .line 382
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object v2

    .line 384
    iget-object v3, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->signedBy:Lcom/sshtools/common/ssh/components/SshPublicKey;

    iget-object v4, p0, Lcom/sshtools/common/publickey/OpenSshCertificate;->signature:[B

    invoke-interface {v3, v4, v2}, Lcom/sshtools/common/ssh/components/SshPublicKey;->verifySignature([B[B)Z

    move-result v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_0

    .line 397
    :try_start_3
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    return-void

    .line 385
    :cond_0
    :try_start_4
    new-instance v2, Lcom/sshtools/common/ssh/SshException;

    const-string v3, "Failed to verify signature of certificate"

    invoke-direct {v2, v3, v1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw v2

    :catchall_0
    move-exception v3

    .line 378
    invoke-virtual {v2}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 379
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v2

    .line 391
    :try_start_5
    const-string v3, "Ssh certificate sign failed"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 392
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 393
    new-instance v2, Lcom/sshtools/common/ssh/SshException;

    const-string v3, "Failed to process signature verification"

    invoke-direct {v2, v3, v1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 397
    :goto_0
    :try_start_6
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 400
    :catch_2
    throw v1
.end method
