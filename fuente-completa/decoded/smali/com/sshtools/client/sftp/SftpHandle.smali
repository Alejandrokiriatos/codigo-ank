.class public final Lcom/sshtools/client/sftp/SftpHandle;
.super Ljava/lang/Object;
.source "SftpHandle.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private volatile closed:Z

.field private final file:Lcom/sshtools/client/sftp/SftpFile;

.field private final handle:[B

.field private volatile performVerification:Z

.field private final sftp:Lcom/sshtools/client/sftp/SftpChannel;


# direct methods
.method static bridge synthetic -$$Nest$fgetfile(Lcom/sshtools/client/sftp/SftpHandle;)Lcom/sshtools/client/sftp/SftpFile;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/sftp/SftpHandle;->file:Lcom/sshtools/client/sftp/SftpFile;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgethandle(Lcom/sshtools/client/sftp/SftpHandle;)[B
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/sftp/SftpHandle;->handle:[B

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsftp(Lcom/sshtools/client/sftp/SftpHandle;)Lcom/sshtools/client/sftp/SftpChannel;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    return-object p0
.end method

.method constructor <init>([BLcom/sshtools/client/sftp/SftpChannel;Lcom/sshtools/client/sftp/SftpFile;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/sshtools/client/sftp/SftpHandle;->performVerification:Z

    .line 65
    iput-object p1, p0, Lcom/sshtools/client/sftp/SftpHandle;->handle:[B

    .line 66
    iput-object p2, p0, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    .line 67
    iput-object p3, p0, Lcom/sshtools/client/sftp/SftpHandle;->file:Lcom/sshtools/client/sftp/SftpFile;

    return-void
.end method

.method private checkValidHandle()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;
        }
    .end annotation

    .line 1123
    iget-boolean v0, p0, Lcom/sshtools/client/sftp/SftpHandle;->closed:Z

    if-nez v0, :cond_0

    return-void

    .line 1124
    :cond_0
    new-instance v0, Lcom/sshtools/common/sftp/SftpStatusException;

    const/16 v1, 0x64

    const-string v2, "The handle is not an open file handle!"

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/sftp/SftpStatusException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private extractFiles(Lcom/sshtools/client/sftp/SftpMessage;Ljava/lang/String;)[Lcom/sshtools/client/sftp/SftpFile;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 1133
    const-string v0, "/"

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1137
    :cond_0
    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpMessage;->readInt()J

    move-result-wide v0

    long-to-int v0, v0

    .line 1138
    new-array v1, v0, [Lcom/sshtools/client/sftp/SftpFile;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    .line 1144
    iget-object v4, p0, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    iget-object v4, v4, Lcom/sshtools/client/sftp/SftpChannel;->CHARSET_ENCODING:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/sshtools/client/sftp/SftpMessage;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1146
    iget-object v5, p0, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    iget v5, v5, Lcom/sshtools/client/sftp/SftpChannel;->version:I

    const/4 v6, 0x3

    if-gt v5, v6, :cond_1

    .line 1149
    iget-object v2, p0, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    iget-object v2, v2, Lcom/sshtools/client/sftp/SftpChannel;->CHARSET_ENCODING:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/sshtools/client/sftp/SftpMessage;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1152
    :cond_1
    iget-object v5, p0, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v5}, Lcom/sshtools/client/sftp/SftpChannel;->getVersion()I

    move-result v5

    iget-object v7, p0, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v7}, Lcom/sshtools/client/sftp/SftpChannel;->getCharsetEncoding()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v5, v7}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->of(Lcom/sshtools/common/util/ByteArrayReader;ILjava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    move-result-object v5

    if-eqz v2, :cond_2

    .line 1155
    iget-object v7, p0, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    iget v7, v7, Lcom/sshtools/client/sftp/SftpChannel;->version:I
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-gt v7, v6, :cond_2

    .line 1157
    :try_start_1
    new-instance v6, Ljava/util/StringTokenizer;

    invoke-direct {v6, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 1158
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 1159
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 1160
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 1161
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 1163
    invoke-virtual {v5, v7}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->withUsername(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    .line 1164
    invoke-virtual {v5, v6}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->withGroup(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1172
    :catch_0
    :cond_2
    :try_start_2
    new-instance v6, Lcom/sshtools/client/sftp/SftpFile;

    if-eqz p2, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1173
    :cond_3
    invoke-virtual {v5}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->build()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v5

    invoke-direct {v6, v4, v5, v2}, Lcom/sshtools/client/sftp/SftpFile;-><init>(Ljava/lang/String;Lcom/sshtools/common/sftp/SftpFileAttributes;Ljava/lang/String;)V

    aput-object v6, v1, v3
    :try_end_2
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v1

    :catch_1
    move-exception p1

    .line 1180
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {p2, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 1178
    invoke-virtual {p1}, Lcom/sshtools/common/ssh/SshIOException;->getRealException()Lcom/sshtools/common/ssh/SshException;

    move-result-object p1

    throw p1
.end method

.method private writeFile(Lcom/sshtools/common/util/UnsignedInteger64;[BII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 1186
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {p1}, Lcom/sshtools/common/util/UnsignedInteger64;->longValue()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/sshtools/client/sftp/SftpHandle;->postWriteRequest(J[BII)Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object p1

    iget-object p2, v1, Lcom/sshtools/client/sftp/SftpHandle;->file:Lcom/sshtools/client/sftp/SftpFile;

    invoke-virtual {v0, p1, p2}, Lcom/sshtools/client/sftp/SftpChannel;->getOKRequestStatus(Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/client/sftp/SftpFile;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    iget-boolean v0, p0, Lcom/sshtools/client/sftp/SftpHandle;->closed:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 277
    iput-boolean v0, p0, Lcom/sshtools/client/sftp/SftpHandle;->closed:Z

    .line 279
    :try_start_0
    iget-object v1, p0, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v1}, Lcom/sshtools/client/sftp/SftpChannel;->nextRequestId()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v1

    .line 280
    iget-object v2, p0, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v2}, Lcom/sshtools/client/sftp/SftpChannel;->createPacket()Lcom/sshtools/common/ssh/Packet;

    move-result-object v2

    const/4 v3, 0x4

    .line 281
    invoke-virtual {v2, v3}, Lcom/sshtools/common/ssh/Packet;->write(I)V

    .line 282
    invoke-virtual {v1}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/sshtools/common/ssh/Packet;->writeInt(J)V

    .line 283
    iget-object v3, p0, Lcom/sshtools/client/sftp/SftpHandle;->handle:[B

    invoke-virtual {v2, v3}, Lcom/sshtools/common/ssh/Packet;->writeBinaryString([B)V

    .line 285
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 286
    const-string v3, "Sending SSH_FXP_CLOSE for {} requestId={}"

    iget-object v4, p0, Lcom/sshtools/client/sftp/SftpHandle;->file:Lcom/sshtools/client/sftp/SftpFile;

    invoke-virtual {v4}, Lcom/sshtools/client/sftp/SftpFile;->getFilename()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4, v1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    :cond_0
    iget-object v3, p0, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v3, v2}, Lcom/sshtools/client/sftp/SftpChannel;->sendMessage(Lcom/sshtools/common/ssh/Packet;)V

    .line 291
    iget-object v2, p0, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    iget-object v3, p0, Lcom/sshtools/client/sftp/SftpHandle;->file:Lcom/sshtools/client/sftp/SftpFile;

    invoke-virtual {v3}, Lcom/sshtools/client/sftp/SftpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/sshtools/client/sftp/SftpChannel;->getOKRequestStatus(Lcom/sshtools/common/util/UnsignedInteger32;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    invoke-static {}, Lcom/sshtools/common/events/EventServiceImplementation;->getInstance()Lcom/sshtools/common/events/EventService;

    move-result-object v1

    new-instance v2, Lcom/sshtools/common/events/Event;

    const v3, 0xff0025

    invoke-direct {v2, p0, v3, v0}, Lcom/sshtools/common/events/Event;-><init>(Ljava/lang/Object;IZ)V

    .line 297
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpHandle;->file:Lcom/sshtools/client/sftp/SftpFile;

    if-nez v0, :cond_1

    const-string v0, "<unknown>"

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v3, "FILE_NAME"

    invoke-virtual {v2, v3, v0}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    .line 296
    invoke-interface {v1, v0}, Lcom/sshtools/common/events/EventService;->fireEvent(Lcom/sshtools/common/events/Event;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    .line 293
    :goto_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to close handle."

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    return-void
.end method

.method public copyTo(Lcom/sshtools/client/sftp/SftpHandle;Lcom/sshtools/common/util/UnsignedInteger64;Lcom/sshtools/common/util/UnsignedInteger64;Lcom/sshtools/common/util/UnsignedInteger64;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpHandle;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpHandle;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    new-instance v0, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {v0}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V

    .line 196
    :try_start_0
    iget-object v1, p0, Lcom/sshtools/client/sftp/SftpHandle;->handle:[B

    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBinaryString([B)V

    .line 197
    invoke-virtual {v0, p2}, Lcom/sshtools/common/util/ByteArrayWriter;->writeUINT64(Lcom/sshtools/common/util/UnsignedInteger64;)V

    .line 198
    invoke-virtual {v0, p3}, Lcom/sshtools/common/util/ByteArrayWriter;->writeUINT64(Lcom/sshtools/common/util/UnsignedInteger64;)V

    .line 199
    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpHandle;->getHandle()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBinaryString([B)V

    .line 200
    invoke-virtual {v0, p4}, Lcom/sshtools/common/util/ByteArrayWriter;->writeUINT64(Lcom/sshtools/common/util/UnsignedInteger64;)V

    .line 202
    iget-object p1, p0, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    const-string p2, "copy-data"

    .line 203
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/sshtools/client/sftp/SftpChannel;->sendExtensionMessage(Ljava/lang/String;[B)Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object p2

    iget-object p3, p0, Lcom/sshtools/client/sftp/SftpHandle;->file:Lcom/sshtools/client/sftp/SftpFile;

    .line 204
    invoke-virtual {p3}, Lcom/sshtools/client/sftp/SftpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    .line 202
    invoke-virtual {p1, p2, p3}, Lcom/sshtools/client/sftp/SftpChannel;->getOKRequestStatus(Lcom/sshtools/common/util/UnsignedInteger32;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 195
    :try_start_1
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1

    .line 191
    :cond_0
    new-instance p1, Lcom/sshtools/common/sftp/SftpStatusException;

    const/16 p2, 0x9

    const-string p3, "source and desintation files must be open"

    invoke-direct {p1, p2, p3}, Lcom/sshtools/common/sftp/SftpStatusException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 84
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    .line 86
    :cond_2
    check-cast p1, Lcom/sshtools/client/sftp/SftpHandle;

    .line 87
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpHandle;->handle:[B

    iget-object p1, p1, Lcom/sshtools/client/sftp/SftpHandle;->handle:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public getAttributes()Lcom/sshtools/common/sftp/SftpFileAttributes;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 440
    invoke-direct {p0}, Lcom/sshtools/client/sftp/SftpHandle;->checkValidHandle()V

    .line 443
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpChannel;->nextRequestId()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v0

    .line 444
    iget-object v1, p0, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v1}, Lcom/sshtools/client/sftp/SftpChannel;->createPacket()Lcom/sshtools/common/ssh/Packet;

    move-result-object v1

    const/16 v2, 0x8

    .line 445
    invoke-virtual {v1, v2}, Lcom/sshtools/common/ssh/Packet;->write(I)V

    .line 446
    invoke-virtual {v0}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sshtools/common/ssh/Packet;->writeInt(J)V

    .line 447
    iget-object v2, p0, Lcom/sshtools/client/sftp/SftpHandle;->handle:[B

    invoke-virtual {v1, v2}, Lcom/sshtools/common/ssh/Packet;->writeBinaryString([B)V

    .line 448
    iget-object v2, p0, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    iget v2, v2, Lcom/sshtools/client/sftp/SftpChannel;->version:I

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    const-wide/32 v2, -0x7ffffe03

    .line 449
    invoke-virtual {v1, v2, v3}, Lcom/sshtools/common/ssh/Packet;->writeInt(J)V

    .line 460
    :cond_0
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 461
    const-string v2, "Sending SSH_FXP_FSTAT for {} requestId="

    iget-object v3, p0, Lcom/sshtools/client/sftp/SftpHandle;->file:Lcom/sshtools/client/sftp/SftpFile;

    invoke-virtual {v3}, Lcom/sshtools/client/sftp/SftpFile;->getFilename()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 464
    :cond_1
    iget-object v2, p0, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v2, v1}, Lcom/sshtools/client/sftp/SftpChannel;->sendMessage(Lcom/sshtools/common/ssh/Packet;)V

    .line 466
    iget-object v1, p0, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v1, v0}, Lcom/sshtools/client/sftp/SftpChannel;->getResponse(Lcom/sshtools/common/util/UnsignedInteger32;)Lcom/sshtools/client/sftp/SftpMessage;

    move-result-object v1
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    :try_start_1
    iget-object v2, p0, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpHandle;->getFile()Lcom/sshtools/client/sftp/SftpFile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sshtools/client/sftp/SftpFile;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v0}, Lcom/sshtools/client/sftp/SftpChannel;->extractAttributes(Lcom/sshtools/client/sftp/SftpMessage;Ljava/lang/String;Lcom/sshtools/common/util/UnsignedInteger32;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 470
    :try_start_2
    invoke-virtual {v1}, Lcom/sshtools/client/sftp/SftpMessage;->release()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/sshtools/client/sftp/SftpMessage;->release()V

    .line 471
    throw v0
    :try_end_2
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 475
    new-instance v1, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {v1, v0}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 473
    invoke-virtual {v0}, Lcom/sshtools/common/ssh/SshIOException;->getRealException()Lcom/sshtools/common/ssh/SshException;

    move-result-object v0

    throw v0
.end method

.method public getFile()Lcom/sshtools/client/sftp/SftpFile;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpHandle;->file:Lcom/sshtools/client/sftp/SftpFile;

    return-object v0
.end method

.method public getHandle()[B
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpHandle;->handle:[B

    return-object v0
.end method

.method getSFTPChannel()Lcom/sshtools/client/sftp/SftpChannel;
    .locals 1

    .line 1119
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpHandle;->handle:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public isOpen()Z
    .locals 1

    .line 256
    iget-boolean v0, p0, Lcom/sshtools/client/sftp/SftpHandle;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public listChildren(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sshtools/client/sftp/SftpFile;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 331
    invoke-direct {p0}, Lcom/sshtools/client/sftp/SftpHandle;->checkValidHandle()V

    .line 334
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpChannel;->nextRequestId()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v0

    .line 335
    iget-object v1, p0, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v1}, Lcom/sshtools/client/sftp/SftpChannel;->createPacket()Lcom/sshtools/common/ssh/Packet;

    move-result-object v1

    const/16 v2, 0xc

    .line 336
    invoke-virtual {v1, v2}, Lcom/sshtools/common/ssh/Packet;->write(I)V

    .line 337
    invoke-virtual {v0}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sshtools/common/ssh/Packet;->writeInt(J)V

    .line 338
    iget-object v2, p0, Lcom/sshtools/client/sftp/SftpHandle;->handle:[B

    invoke-virtual {v1, v2}, Lcom/sshtools/common/ssh/Packet;->writeBinaryString([B)V

    .line 340
    iget-object v2, p0, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v2, v1}, Lcom/sshtools/client/sftp/SftpChannel;->sendMessage(Lcom/sshtools/common/ssh/Packet;)V

    .line 342
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    const-string v1, "Sending SSH_FXP_READDIR for {} requestId={}"

    iget-object v2, p0, Lcom/sshtools/client/sftp/SftpHandle;->file:Lcom/sshtools/client/sftp/SftpFile;

    invoke-virtual {v2}, Lcom/sshtools/client/sftp/SftpFile;->getFilename()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 346
    :cond_0
    iget-object v1, p0, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v1, v0}, Lcom/sshtools/client/sftp/SftpChannel;->getResponse(Lcom/sshtools/common/util/UnsignedInteger32;)Lcom/sshtools/client/sftp/SftpMessage;

    move-result-object v0
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    :try_start_1
    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpMessage;->getType()I

    move-result v1

    const/16 v2, 0x68

    if-ne v1, v2, :cond_4

    .line 351
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 352
    const-string v1, "Received results"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 355
    :cond_1
    iget-object v1, p0, Lcom/sshtools/client/sftp/SftpHandle;->file:Lcom/sshtools/client/sftp/SftpFile;

    invoke-virtual {v1}, Lcom/sshtools/client/sftp/SftpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sshtools/client/sftp/SftpHandle;->extractFiles(Lcom/sshtools/client/sftp/SftpMessage;Ljava/lang/String;)[Lcom/sshtools/client/sftp/SftpFile;

    move-result-object v1

    .line 357
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 358
    const-string v3, "There are {} results in this packet"

    array-length v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 361
    :cond_2
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_3

    .line 362
    aget-object v3, v1, v2

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 364
    :cond_3
    array-length p1, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 387
    :try_start_2
    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpMessage;->release()V
    :try_end_2
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return p1

    .line 365
    :cond_4
    :try_start_3
    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpMessage;->getType()I

    move-result p1

    const/16 v1, 0x65

    if-ne p1, v1, :cond_8

    .line 366
    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpMessage;->readInt()J

    move-result-wide v1

    long-to-int p1, v1

    .line 368
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 369
    const-string v1, "Received status {}"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    const/4 v1, 0x1

    if-ne p1, v1, :cond_6

    const/4 p1, -0x1

    .line 387
    :try_start_4
    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpMessage;->release()V
    :try_end_4
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return p1

    .line 375
    :cond_6
    :try_start_5
    iget-object v1, p0, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    iget v1, v1, Lcom/sshtools/client/sftp/SftpChannel;->version:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_7

    .line 376
    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpMessage;->readString()Ljava/lang/String;

    move-result-object v1

    .line 377
    new-instance v2, Lcom/sshtools/common/sftp/SftpStatusException;

    invoke-direct {v2, p1, v1}, Lcom/sshtools/common/sftp/SftpStatusException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 379
    :cond_7
    new-instance v1, Lcom/sshtools/common/sftp/SftpStatusException;

    invoke-direct {v1, p1}, Lcom/sshtools/common/sftp/SftpStatusException;-><init>(I)V

    throw v1

    .line 382
    :cond_8
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpHandle;->close()V

    .line 383
    new-instance p1, Lcom/sshtools/common/ssh/SshException;

    const-string v1, "The server responded with an unexpected message"

    const/4 v2, 0x6

    invoke-direct {p1, v1, v2}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception p1

    .line 387
    :try_start_6
    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpMessage;->release()V

    .line 388
    throw p1
    :try_end_6
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p1

    .line 392
    new-instance v0, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {v0, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 390
    invoke-virtual {p1}, Lcom/sshtools/common/ssh/SshIOException;->getRealException()Lcom/sshtools/common/ssh/SshException;

    move-result-object p1

    throw p1
.end method

.method public lock()Ljava/io/Closeable;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    const-wide/16 v3, 0x0

    const/16 v5, 0x1c0

    const-wide/16 v1, 0x0

    move-object v0, p0

    .line 107
    invoke-virtual/range {v0 .. v5}, Lcom/sshtools/client/sftp/SftpHandle;->lock(JJI)Ljava/io/Closeable;

    move-result-object v1

    return-object v1
.end method

.method public lock(I)Ljava/io/Closeable;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    move-object v0, p0

    move v5, p1

    .line 121
    invoke-virtual/range {v0 .. v5}, Lcom/sshtools/client/sftp/SftpHandle;->lock(JJI)Ljava/io/Closeable;

    move-result-object p1

    return-object p1
.end method

.method public lock(JJI)Ljava/io/Closeable;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    iget v0, v0, Lcom/sshtools/client/sftp/SftpChannel;->version:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpChannel;->nextRequestId()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v1}, Lcom/sshtools/client/sftp/SftpChannel;->createPacket()Lcom/sshtools/common/ssh/Packet;

    move-result-object v1

    const/16 v2, 0x16

    .line 148
    invoke-virtual {v1, v2}, Lcom/sshtools/common/ssh/Packet;->write(I)V

    .line 149
    invoke-virtual {v0}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sshtools/common/ssh/Packet;->writeInt(J)V

    .line 150
    iget-object v2, p0, Lcom/sshtools/client/sftp/SftpHandle;->handle:[B

    invoke-virtual {v1, v2}, Lcom/sshtools/common/ssh/Packet;->writeBinaryString([B)V

    .line 151
    invoke-virtual {v1, p1, p2}, Lcom/sshtools/common/ssh/Packet;->writeUINT64(J)V

    .line 152
    invoke-virtual {v1, p3, p4}, Lcom/sshtools/common/ssh/Packet;->writeUINT64(J)V

    .line 153
    invoke-virtual {v1, p5}, Lcom/sshtools/common/ssh/Packet;->writeInt(I)V

    .line 155
    iget-object p5, p0, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {p5, v1}, Lcom/sshtools/client/sftp/SftpChannel;->sendMessage(Lcom/sshtools/common/ssh/Packet;)V

    .line 157
    iget-object p5, p0, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    iget-object v1, p0, Lcom/sshtools/client/sftp/SftpHandle;->file:Lcom/sshtools/client/sftp/SftpFile;

    invoke-virtual {p5, v0, v1}, Lcom/sshtools/client/sftp/SftpChannel;->getOKRequestStatus(Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/client/sftp/SftpFile;)V
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    new-instance v2, Lcom/sshtools/client/sftp/SftpHandle$1;

    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/sshtools/client/sftp/SftpHandle$1;-><init>(Lcom/sshtools/client/sftp/SftpHandle;JJ)V

    return-object v2

    :catch_0
    move-exception v0

    move-object v3, p0

    move-object p1, v0

    .line 161
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {p2, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception v0

    move-object v3, p0

    move-object p1, v0

    .line 159
    invoke-virtual {p1}, Lcom/sshtools/common/ssh/SshIOException;->getRealException()Lcom/sshtools/common/ssh/SshException;

    move-result-object p1

    throw p1

    :cond_0
    move-object v3, p0

    .line 140
    new-instance p1, Lcom/sshtools/common/sftp/SftpStatusException;

    iget-object p2, v3, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    iget p2, p2, Lcom/sshtools/client/sftp/SftpChannel;->version:I

    .line 143
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Locks are not supported by the server SFTP version "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x8

    invoke-direct {p1, p3, p2}, Lcom/sshtools/common/sftp/SftpStatusException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public performOptimizedRead(JILjava/io/OutputStream;ILcom/sshtools/client/tasks/FileTransferProgress;J)V
    .locals 36
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move/from16 v0, p3

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-wide/from16 v6, p7

    .line 759
    const-string v8, "Remote file digest does not match local digest"

    const-string v9, "md5-hash-handle"

    const-string v10, "Could not verify file"

    const-string v11, "Error processing remote digest"

    const-string v12, "Optimized read of {} took seconds {} at {} per second"

    const-string v13, "Optimized read did not transfer any data"

    invoke-direct {v1}, Lcom/sshtools/client/sftp/SftpHandle;->checkValidHandle()V

    .line 763
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-wide/from16 v16, v14

    const/4 v14, 0x4

    if-lez v0, :cond_1

    const/16 v15, 0x1000

    if-lt v0, v15, :cond_0

    goto :goto_0

    .line 766
    :cond_0
    new-instance v0, Lcom/sshtools/common/ssh/SshException;

    const-string v2, "Block size cannot be less than 4096"

    invoke-direct {v0, v2, v14}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    :goto_0
    if-lez v0, :cond_3

    const/high16 v15, 0x10000

    if-le v0, v15, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v15, v0, 0xd

    .line 771
    iget-object v14, v1, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v14}, Lcom/sshtools/client/sftp/SftpChannel;->getSession()Lcom/sshtools/client/SessionChannelNG;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sshtools/client/SessionChannelNG;->getMaximumLocalPacketLength()I

    move-result v14

    if-le v15, v14, :cond_4

    .line 772
    iget-object v0, v1, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpChannel;->getSession()Lcom/sshtools/client/SessionChannelNG;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/client/SessionChannelNG;->getMaximumLocalPacketLength()I

    move-result v0

    goto :goto_2

    .line 770
    :cond_3
    :goto_1
    iget-object v0, v1, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpChannel;->getSession()Lcom/sshtools/client/SessionChannelNG;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/client/SessionChannelNG;->getMaximumLocalPacketLength()I

    move-result v0

    :goto_2
    add-int/lit8 v0, v0, -0xd

    .line 775
    :cond_4
    iget-object v14, v1, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v14}, Lcom/sshtools/client/sftp/SftpChannel;->getSession()Lcom/sshtools/client/SessionChannelNG;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sshtools/client/SessionChannelNG;->getMaximumWindowSpace()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v14

    long-to-double v14, v14

    const-wide v19, 0x3feccccccccccccdL    # 0.9

    mul-double v14, v14, v19

    move-wide/from16 v19, v14

    int-to-double v14, v0

    div-double v14, v19, v14

    double-to-int v14, v14

    if-lez v4, :cond_5

    if-ge v14, v4, :cond_6

    .line 777
    :cond_5
    div-int/lit8 v4, v14, 0x2

    .line 780
    :cond_6
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v19, v11

    const-string v11, "maverick.read.optimizedBlock"

    invoke-static {v11, v15}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 781
    const-string v15, "maverick.read.asyncRequests"

    move-object/from16 v20, v10

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v15, v10}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 783
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 784
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v15, "Performing optimized read length="

    invoke-direct {v10, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v15, " postion="

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v15, " blocksize="

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v15, " outstandingRequests="

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v15, 0x0

    new-array v2, v15, [Ljava/lang/Object;

    invoke-static {v10, v2}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    const-wide/16 v2, 0x0

    cmp-long v10, p1, v2

    if-gtz v10, :cond_8

    const-wide v21, 0x7fffffffffffffffL

    goto :goto_3

    :cond_8
    move-wide/from16 v21, p1

    .line 798
    :goto_3
    iget-boolean v10, v1, Lcom/sshtools/client/sftp/SftpHandle;->performVerification:Z

    if-eqz v10, :cond_9

    .line 800
    :try_start_0
    const-string v10, "MD5"

    invoke-static {v10}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v10
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 805
    new-instance v15, Ljava/security/DigestOutputStream;

    move-wide/from16 v23, v2

    move-object/from16 v2, p4

    invoke-direct {v15, v2, v10}, Ljava/security/DigestOutputStream;-><init>(Ljava/io/OutputStream;Ljava/security/MessageDigest;)V

    move-object/from16 v35, v10

    move-object v10, v2

    move-object/from16 v2, v35

    goto :goto_4

    :catch_0
    move-exception v0

    .line 802
    new-instance v2, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {v2, v0}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_9
    move-wide/from16 v23, v2

    move-object/from16 v2, p4

    const/4 v10, 0x0

    move-object v15, v2

    move-object v2, v10

    :goto_4
    cmp-long v3, v6, v23

    if-ltz v3, :cond_2e

    const-wide/high16 v25, 0x3ff0000000000000L    # 1.0

    const-wide/16 v27, 0x3e8

    .line 820
    :try_start_1
    new-array v3, v0, [B

    .line 822
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v29
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_f

    move-object/from16 p5, v2

    .line 823
    :try_start_2
    new-instance v2, Lcom/sshtools/common/util/UnsignedInteger64;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_e

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move-wide/from16 v8, v23

    :try_start_3
    invoke-direct {v2, v8, v9}, Lcom/sshtools/common/util/UnsignedInteger64;-><init>(J)V

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v3, v8, v0}, Lcom/sshtools/client/sftp/SftpHandle;->readFile(Lcom/sshtools/common/util/UnsignedInteger64;[BII)I

    move-result v2

    .line 824
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v8, v8, v29

    move-wide/from16 v29, v8

    .line 826
    const-string v8, "maverick.read.blockRoundtrip"

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_d

    const/4 v8, -0x1

    if-ne v2, v8, :cond_b

    .line 952
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v16

    cmp-long v0, v2, v27

    if-lez v0, :cond_a

    .line 954
    div-long v2, v2, v27

    :cond_a
    const/4 v8, 0x0

    .line 959
    new-array v0, v8, [Ljava/lang/Object;

    invoke-static {v13, v0}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_b
    int-to-long v8, v2

    cmp-long v18, v8, v6

    if-lez v18, :cond_d

    move-wide/from16 v29, v8

    long-to-int v8, v6

    sub-long v6, v29, v6

    long-to-int v9, v6

    .line 839
    :try_start_4
    invoke-virtual {v15, v3, v8, v9}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    sub-long v21, v21, v6

    if-eqz v5, :cond_c

    .line 846
    :try_start_5
    invoke-interface {v5, v6, v7}, Lcom/sshtools/client/tasks/FileTransferProgress;->progressed(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-wide v8, v6

    :goto_5
    move-object/from16 v21, v10

    :goto_6
    move-object/from16 v6, v19

    move-object/from16 v4, v20

    move-object/from16 v3, v31

    move-object/from16 v5, v32

    goto/16 :goto_15

    :cond_c
    :goto_7
    move-wide v8, v6

    move-wide/from16 v6, v29

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object/from16 v21, v10

    move-object/from16 v6, v19

    move-object/from16 v4, v20

    move-object/from16 v3, v31

    move-object/from16 v5, v32

    goto/16 :goto_18

    .line 841
    :catch_1
    :try_start_6
    new-instance v0, Lcom/sshtools/client/sftp/TransferCancelledException;

    invoke-direct {v0}, Lcom/sshtools/client/sftp/TransferCancelledException;-><init>()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_d
    move-wide/from16 v29, v8

    const-wide/16 v8, 0x0

    :goto_8
    add-long v33, v6, v21

    cmp-long v3, v33, v29

    if-gtz v3, :cond_10

    .line 952
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v16

    cmp-long v0, v2, v27

    if-lez v0, :cond_e

    .line 954
    div-long v2, v2, v27

    long-to-double v2, v2

    move-wide/from16 v25, v2

    :cond_e
    const-wide/16 v23, 0x0

    cmp-long v0, v8, v23

    if-lez v0, :cond_f

    long-to-double v2, v8

    .line 957
    invoke-static {v2, v3}, Lcom/sshtools/common/util/IOUtils;->toByteSize(D)Ljava/lang/String;

    move-result-object v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    div-double v2, v2, v25

    const/4 v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/sshtools/common/util/IOUtils;->toByteSize(DI)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v4, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 956
    invoke-static {v12, v0}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_f
    const/4 v8, 0x0

    .line 959
    new-array v0, v8, [Ljava/lang/Object;

    invoke-static {v13, v0}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_10
    if-ge v2, v0, :cond_11

    cmp-long v3, v21, v29

    if-lez v3, :cond_11

    .line 861
    :try_start_7
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move v0, v2

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v2, v0

    goto :goto_5

    .line 864
    :cond_11
    :goto_9
    :try_start_8
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3, v4}, Ljava/util/Vector;-><init>(I)V

    move v4, v14

    .line 874
    :goto_a
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_c

    if-ge v11, v4, :cond_16

    if-lez v2, :cond_12

    .line 876
    :try_start_9
    iget-object v11, v1, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v11}, Lcom/sshtools/client/sftp/SftpChannel;->getSession()Lcom/sshtools/client/SessionChannelNG;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sshtools/client/SessionChannelNG;->getRemoteWindow()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v21

    const-wide/16 v29, 0x1d

    cmp-long v11, v21, v29

    if-gez v11, :cond_12

    .line 877
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v11

    if-eqz v11, :cond_16

    .line 878
    const-string v11, "Deferring post requests due to lack of remote window"
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move/from16 v18, v2

    move-object/from16 v21, v10

    const/4 v2, 0x0

    :try_start_a
    new-array v10, v2, [Ljava/lang/Object;

    invoke-static {v11, v10}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d

    :catchall_3
    move-exception v0

    move-object/from16 v21, v10

    goto :goto_c

    :cond_12
    move/from16 v18, v2

    move-object/from16 v21, v10

    .line 881
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 882
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Posting request for file offset "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x0

    new-array v11, v10, [Ljava/lang/Object;

    invoke-static {v2, v11}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 884
    :cond_13
    invoke-virtual {v1, v6, v7, v0}, Lcom/sshtools/client/sftp/SftpHandle;->postReadRequest(JI)Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    int-to-long v10, v0

    add-long/2addr v6, v10

    if-eqz v5, :cond_15

    .line 887
    invoke-interface {v5}, Lcom/sshtools/client/tasks/FileTransferProgress;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_b

    .line 888
    :cond_14
    new-instance v0, Lcom/sshtools/client/sftp/TransferCancelledException;

    invoke-direct {v0}, Lcom/sshtools/client/sftp/TransferCancelledException;-><init>()V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :cond_15
    :goto_b
    move/from16 v2, v18

    move-object/from16 v10, v21

    goto :goto_a

    :catchall_4
    move-exception v0

    :goto_c
    move-object v2, v0

    goto/16 :goto_6

    :cond_16
    move/from16 v18, v2

    move-object/from16 v21, v10

    :goto_d
    const/4 v10, 0x0

    .line 892
    :try_start_b
    invoke-virtual {v3, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sshtools/common/util/UnsignedInteger32;

    .line 893
    invoke-virtual {v3, v10}, Ljava/util/Vector;->removeElementAt(I)V

    .line 894
    iget-object v10, v1, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v10, v2}, Lcom/sshtools/client/sftp/SftpChannel;->getResponse(Lcom/sshtools/common/util/UnsignedInteger32;)Lcom/sshtools/client/sftp/SftpMessage;

    move-result-object v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    .line 896
    :try_start_c
    invoke-virtual {v2}, Lcom/sshtools/client/sftp/SftpMessage;->getType()I

    move-result v11

    const/16 v10, 0x67

    if-ne v11, v10, :cond_1a

    .line 897
    invoke-virtual {v2}, Lcom/sshtools/client/sftp/SftpMessage;->readInt()J

    move-result-wide v10

    long-to-int v10, v10

    .line 899
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v11

    if-eqz v11, :cond_17

    .line 900
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v22, v0

    const-string v0, "Got "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, " bytes of data"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    move-object/from16 p8, v2

    const/4 v11, 0x0

    :try_start_d
    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    goto :goto_e

    :cond_17
    move/from16 v22, v0

    move-object/from16 p8, v2

    .line 903
    :goto_e
    :try_start_e
    invoke-virtual/range {p8 .. p8}, Lcom/sshtools/client/sftp/SftpMessage;->array()[B

    move-result-object v0

    invoke-virtual/range {p8 .. p8}, Lcom/sshtools/client/sftp/SftpMessage;->getPosition()I

    move-result v2

    invoke-virtual {v15, v0, v2, v10}, Ljava/io/OutputStream;->write([BII)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    int-to-long v10, v10

    add-long/2addr v8, v10

    if-eqz v5, :cond_18

    .line 910
    :try_start_f
    invoke-interface {v5, v8, v9}, Lcom/sshtools/client/tasks/FileTransferProgress;->progressed(J)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 942
    :cond_18
    :try_start_10
    invoke-virtual/range {p8 .. p8}, Lcom/sshtools/client/sftp/SftpMessage;->release()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    if-ge v4, v14, :cond_19

    add-int/lit8 v4, v4, 0x1

    :cond_19
    move/from16 v2, v18

    move-object/from16 v10, v21

    move/from16 v0, v22

    goto/16 :goto_a

    .line 905
    :catch_2
    :try_start_11
    new-instance v0, Lcom/sshtools/client/sftp/TransferCancelledException;

    invoke-direct {v0}, Lcom/sshtools/client/sftp/TransferCancelledException;-><init>()V

    throw v0

    :cond_1a
    move-object/from16 p8, v2

    .line 912
    invoke-virtual/range {p8 .. p8}, Lcom/sshtools/client/sftp/SftpMessage;->getType()I

    move-result v0

    const/16 v2, 0x65

    if-ne v0, v2, :cond_26

    .line 913
    invoke-virtual/range {p8 .. p8}, Lcom/sshtools/client/sftp/SftpMessage;->readInt()J

    move-result-wide v2

    long-to-int v0, v2

    const/4 v5, 0x1

    if-ne v0, v5, :cond_22

    .line 916
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 917
    const-string v0, "Received file EOF"

    const/4 v10, 0x0

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_8
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 942
    :cond_1b
    :try_start_12
    invoke-virtual/range {p8 .. p8}, Lcom/sshtools/client/sftp/SftpMessage;->release()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 952
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v16

    cmp-long v0, v2, v27

    if-lez v0, :cond_1c

    .line 954
    div-long v2, v2, v27

    long-to-double v2, v2

    move-wide/from16 v25, v2

    :cond_1c
    const-wide/16 v23, 0x0

    cmp-long v0, v8, v23

    if-lez v0, :cond_1d

    long-to-double v2, v8

    .line 957
    invoke-static {v2, v3}, Lcom/sshtools/common/util/IOUtils;->toByteSize(D)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v25 .. v26}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    div-double v2, v2, v25

    const/4 v6, 0x1

    invoke-static {v2, v3, v6}, Lcom/sshtools/common/util/IOUtils;->toByteSize(DI)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v4, v5, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 956
    invoke-static {v12, v2}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_f

    :cond_1d
    const/4 v10, 0x0

    .line 959
    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v13, v2}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 962
    :goto_f
    iget-boolean v2, v1, Lcom/sshtools/client/sftp/SftpHandle;->performVerification:Z

    if-eqz v2, :cond_21

    if-lez v0, :cond_21

    .line 964
    :try_start_13
    invoke-virtual {v15}, Ljava/io/OutputStream;->flush()V

    .line 965
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_6
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_13 .. :try_end_13} :catch_5
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_13 .. :try_end_13} :catch_4

    .line 967
    :try_start_14
    invoke-virtual/range {v21 .. v21}, Ljava/io/OutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_3
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_14 .. :try_end_14} :catch_5
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_14 .. :try_end_14} :catch_4

    .line 971
    :catch_3
    :try_start_15
    invoke-virtual/range {p5 .. p5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 973
    new-instance v2, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {v2}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_6
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_15 .. :try_end_15} :catch_5
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_15 .. :try_end_15} :catch_4

    .line 976
    :try_start_16
    iget-object v3, v1, Lcom/sshtools/client/sftp/SftpHandle;->handle:[B

    invoke-virtual {v2, v3}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBinaryString([B)V

    const-wide/16 v3, 0x0

    .line 977
    invoke-virtual {v2, v3, v4}, Lcom/sshtools/common/util/ByteArrayWriter;->writeUINT64(J)V

    .line 978
    invoke-virtual {v2, v8, v9}, Lcom/sshtools/common/util/ByteArrayWriter;->writeUINT64(J)V

    const/4 v10, 0x0

    .line 979
    new-array v3, v10, [B

    invoke-virtual {v2, v3}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBinaryString([B)V

    .line 981
    iget-object v3, v1, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    .line 982
    invoke-virtual {v2}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object v4

    move-object/from16 v5, v32

    invoke-virtual {v3, v5, v4}, Lcom/sshtools/client/sftp/SftpChannel;->sendExtensionMessage(Ljava/lang/String;[B)Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v4

    iget-object v5, v1, Lcom/sshtools/client/sftp/SftpHandle;->file:Lcom/sshtools/client/sftp/SftpFile;

    .line 983
    invoke-virtual {v5}, Lcom/sshtools/client/sftp/SftpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 981
    invoke-virtual {v3, v4, v5}, Lcom/sshtools/client/sftp/SftpChannel;->getExtensionResponse(Lcom/sshtools/common/util/UnsignedInteger32;Ljava/lang/String;)Lcom/sshtools/client/sftp/SftpMessage;

    move-result-object v3

    .line 985
    invoke-virtual {v3}, Lcom/sshtools/client/sftp/SftpMessage;->readString()Ljava/lang/String;

    .line 986
    invoke-virtual {v3}, Lcom/sshtools/client/sftp/SftpMessage;->readBinaryString()[B

    move-result-object v3

    .line 988
    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    if-eqz v0, :cond_1e

    .line 993
    :try_start_17
    invoke-virtual {v2}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_6
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_17 .. :try_end_17} :catch_5
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_17 .. :try_end_17} :catch_4

    goto :goto_10

    .line 989
    :cond_1e
    :try_start_18
    new-instance v0, Lcom/sshtools/common/ssh/SshException;

    move-object/from16 v3, v31

    const/16 v4, 0x11

    invoke-direct {v0, v3, v4}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    :catchall_5
    move-exception v0

    .line 993
    :try_start_19
    invoke-virtual {v2}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V

    .line 994
    throw v0
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_6
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_19 .. :try_end_19} :catch_5
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_19 .. :try_end_19} :catch_4

    :catch_4
    move-exception v0

    .line 1004
    invoke-virtual {v0}, Lcom/sshtools/common/ssh/SshException;->getReason()I

    move-result v2

    const/16 v4, 0x11

    if-eq v2, v4, :cond_1f

    goto :goto_10

    .line 1005
    :cond_1f
    throw v0

    :catch_5
    move-exception v0

    .line 998
    invoke-virtual {v0}, Lcom/sshtools/common/sftp/SftpStatusException;->getStatus()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_20

    const/4 v10, 0x0

    .line 999
    iput-boolean v10, v1, Lcom/sshtools/client/sftp/SftpHandle;->performVerification:Z

    goto :goto_10

    :cond_20
    const/4 v10, 0x0

    .line 1001
    new-array v2, v10, [Ljava/lang/Object;

    move-object/from16 v4, v20

    invoke-static {v4, v0, v2}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_10

    :catch_6
    move-exception v0

    const/4 v10, 0x0

    .line 996
    new-array v2, v10, [Ljava/lang/Object;

    move-object/from16 v6, v19

    invoke-static {v6, v0, v2}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_21
    :goto_10
    return-void

    :catchall_6
    move-exception v0

    move-object/from16 v6, v19

    move-object/from16 v4, v20

    move-object/from16 v3, v31

    move-object/from16 v5, v32

    move-object v2, v0

    const/4 v7, 0x1

    goto/16 :goto_19

    :cond_22
    move-object/from16 v6, v19

    move-object/from16 v4, v20

    move-object/from16 v3, v31

    move-object/from16 v5, v32

    .line 921
    :try_start_1a
    iget-object v2, v1, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    iget v2, v2, Lcom/sshtools/client/sftp/SftpChannel;->version:I
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_9
    .catchall {:try_start_1a .. :try_end_1a} :catchall_9

    const/4 v7, 0x3

    const-string v10, "Received status "

    if-lt v2, v7, :cond_24

    .line 922
    :try_start_1b
    invoke-virtual/range {p8 .. p8}, Lcom/sshtools/client/sftp/SftpMessage;->readString()Ljava/lang/String;

    move-result-object v2

    .line 924
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v7

    if-eqz v7, :cond_23

    .line 925
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    new-array v11, v10, [Ljava/lang/Object;

    invoke-static {v7, v11}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 927
    :cond_23
    new-instance v7, Lcom/sshtools/common/sftp/SftpStatusException;

    invoke-direct {v7, v0, v2}, Lcom/sshtools/common/sftp/SftpStatusException;-><init>(ILjava/lang/String;)V

    throw v7

    .line 930
    :cond_24
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 931
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x0

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v2, v7}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 933
    :cond_25
    new-instance v2, Lcom/sshtools/common/sftp/SftpStatusException;

    invoke-direct {v2, v0}, Lcom/sshtools/common/sftp/SftpStatusException;-><init>(I)V

    throw v2

    :cond_26
    move-object/from16 v6, v19

    move-object/from16 v4, v20

    move-object/from16 v3, v31

    move-object/from16 v5, v32

    .line 935
    new-instance v0, Lcom/sshtools/common/ssh/SshException;

    const-string v2, "The server responded with an unexpected message"

    const/4 v7, 0x6

    invoke-direct {v0, v2, v7}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_9
    .catchall {:try_start_1b .. :try_end_1b} :catchall_9

    :catchall_7
    move-exception v0

    goto :goto_11

    :catchall_8
    move-exception v0

    move-object/from16 p8, v2

    :goto_11
    move-object/from16 v6, v19

    move-object/from16 v4, v20

    move-object/from16 v3, v31

    move-object/from16 v5, v32

    goto :goto_12

    :catch_7
    move-object/from16 p8, v2

    :catch_8
    move-object/from16 v6, v19

    move-object/from16 v4, v20

    move-object/from16 v3, v31

    move-object/from16 v5, v32

    .line 939
    :catch_9
    :try_start_1c
    new-instance v0, Lcom/sshtools/common/ssh/SshException;

    const-string v2, "Failed to read expected data from server response"

    const/4 v7, 0x6

    invoke-direct {v0, v2, v7}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_9

    :catchall_9
    move-exception v0

    .line 942
    :goto_12
    :try_start_1d
    invoke-virtual/range {p8 .. p8}, Lcom/sshtools/client/sftp/SftpMessage;->release()V

    .line 943
    throw v0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_a

    :catchall_a
    move-exception v0

    goto :goto_14

    :catchall_b
    move-exception v0

    goto :goto_13

    :catchall_c
    move-exception v0

    move-object/from16 v21, v10

    :goto_13
    move-object/from16 v6, v19

    move-object/from16 v4, v20

    move-object/from16 v3, v31

    move-object/from16 v5, v32

    :goto_14
    move-object v2, v0

    :goto_15
    const/4 v7, 0x0

    goto :goto_19

    :catchall_d
    move-exception v0

    move-object/from16 v21, v10

    move-object/from16 v6, v19

    move-object/from16 v4, v20

    move-object/from16 v3, v31

    move-object/from16 v5, v32

    goto :goto_17

    :catchall_e
    move-exception v0

    goto :goto_16

    :catchall_f
    move-exception v0

    move-object/from16 p5, v2

    :goto_16
    move-object v3, v8

    move-object v5, v9

    move-object/from16 v21, v10

    move-object/from16 v6, v19

    move-object/from16 v4, v20

    :goto_17
    move-object v2, v0

    :goto_18
    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    .line 952
    :goto_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v10, v10, v16

    cmp-long v0, v10, v27

    if-lez v0, :cond_27

    .line 954
    div-long v10, v10, v27

    long-to-double v10, v10

    move-wide/from16 v25, v10

    :cond_27
    const-wide/16 v23, 0x0

    cmp-long v0, v8, v23

    if-lez v0, :cond_28

    long-to-double v10, v8

    .line 957
    invoke-static {v10, v11}, Lcom/sshtools/common/util/IOUtils;->toByteSize(D)Ljava/lang/String;

    move-result-object v13

    invoke-static/range {v25 .. v26}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    div-double v10, v10, v25

    move-object/from16 p6, v2

    const/4 v2, 0x1

    invoke-static {v10, v11, v2}, Lcom/sshtools/common/util/IOUtils;->toByteSize(DI)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v13, v14, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 956
    invoke-static {v12, v2}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1a

    :cond_28
    move-object/from16 p6, v2

    const/4 v10, 0x0

    .line 959
    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v13, v2}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1a
    if-eqz v7, :cond_2d

    .line 962
    iget-boolean v2, v1, Lcom/sshtools/client/sftp/SftpHandle;->performVerification:Z

    if-eqz v2, :cond_2d

    if-lez v0, :cond_2d

    .line 964
    :try_start_1e
    invoke-virtual {v15}, Ljava/io/OutputStream;->flush()V

    .line 965
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_d
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_1e .. :try_end_1e} :catch_c
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_1e .. :try_end_1e} :catch_b

    .line 967
    :try_start_1f
    invoke-virtual/range {v21 .. v21}, Ljava/io/OutputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_a
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_1f .. :try_end_1f} :catch_c
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_1f .. :try_end_1f} :catch_b

    .line 971
    :catch_a
    :try_start_20
    invoke-virtual/range {p5 .. p5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 973
    new-instance v2, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {v2}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_d
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_20 .. :try_end_20} :catch_c
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_20 .. :try_end_20} :catch_b

    .line 976
    :try_start_21
    iget-object v10, v1, Lcom/sshtools/client/sftp/SftpHandle;->handle:[B

    invoke-virtual {v2, v10}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBinaryString([B)V

    const-wide/16 v10, 0x0

    .line 977
    invoke-virtual {v2, v10, v11}, Lcom/sshtools/common/util/ByteArrayWriter;->writeUINT64(J)V

    .line 978
    invoke-virtual {v2, v8, v9}, Lcom/sshtools/common/util/ByteArrayWriter;->writeUINT64(J)V

    const/4 v10, 0x0

    .line 979
    new-array v8, v10, [B

    invoke-virtual {v2, v8}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBinaryString([B)V

    .line 981
    iget-object v8, v1, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    .line 982
    invoke-virtual {v2}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v8, v5, v9}, Lcom/sshtools/client/sftp/SftpChannel;->sendExtensionMessage(Ljava/lang/String;[B)Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v5

    iget-object v9, v1, Lcom/sshtools/client/sftp/SftpHandle;->file:Lcom/sshtools/client/sftp/SftpFile;

    .line 983
    invoke-virtual {v9}, Lcom/sshtools/client/sftp/SftpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 981
    invoke-virtual {v8, v5, v9}, Lcom/sshtools/client/sftp/SftpChannel;->getExtensionResponse(Lcom/sshtools/common/util/UnsignedInteger32;Ljava/lang/String;)Lcom/sshtools/client/sftp/SftpMessage;

    move-result-object v5

    .line 985
    invoke-virtual {v5}, Lcom/sshtools/client/sftp/SftpMessage;->readString()Ljava/lang/String;

    .line 986
    invoke-virtual {v5}, Lcom/sshtools/client/sftp/SftpMessage;->readBinaryString()[B

    move-result-object v5

    .line 988
    invoke-static {v0, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_29

    .line 989
    new-instance v0, Lcom/sshtools/common/ssh/SshException;

    const/16 v5, 0x11

    invoke-direct {v0, v3, v5}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_10

    .line 993
    :cond_29
    :try_start_22
    invoke-virtual {v2}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V

    goto :goto_1c

    :catchall_10
    move-exception v0

    invoke-virtual {v2}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V

    .line 994
    throw v0
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_d
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_22 .. :try_end_22} :catch_c
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_22 .. :try_end_22} :catch_b

    :catch_b
    move-exception v0

    if-eqz v7, :cond_2b

    .line 1004
    invoke-virtual {v0}, Lcom/sshtools/common/ssh/SshException;->getReason()I

    move-result v2

    const/16 v4, 0x11

    if-eq v2, v4, :cond_2a

    goto :goto_1b

    .line 1005
    :cond_2a
    throw v0

    :cond_2b
    :goto_1b
    if-nez v7, :cond_2d

    .line 1007
    throw v0

    :catch_c
    move-exception v0

    .line 998
    invoke-virtual {v0}, Lcom/sshtools/common/sftp/SftpStatusException;->getStatus()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2c

    const/4 v10, 0x0

    .line 999
    iput-boolean v10, v1, Lcom/sshtools/client/sftp/SftpHandle;->performVerification:Z

    goto :goto_1c

    :cond_2c
    const/4 v10, 0x0

    .line 1001
    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v4, v0, v2}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1c

    :catch_d
    move-exception v0

    const/4 v10, 0x0

    .line 996
    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v6, v0, v2}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 1011
    :cond_2d
    :goto_1c
    throw p6

    .line 816
    :cond_2e
    new-instance v0, Lcom/sshtools/common/ssh/SshException;

    const-string v2, "Position value must be greater than zero!"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public performOptimizedWrite(Ljava/lang/String;IILjava/io/InputStream;ILcom/sshtools/client/tasks/FileTransferProgress;J)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move/from16 v0, p2

    move-object/from16 v2, p4

    move-object/from16 v8, p6

    move-wide/from16 v3, p7

    const-string v5, "Performing optimized write length="

    .line 506
    invoke-direct {v1}, Lcom/sshtools/client/sftp/SftpHandle;->checkValidHandle()V

    .line 508
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 512
    const-string v12, "Optimized write of {} to {} took {} seconds at {} per second"

    const-string v13, "Optimized write did not transfer any data"

    const-wide/16 v16, 0x0

    const/4 v6, 0x4

    const-wide/16 v18, 0x3e8

    if-lez v0, :cond_1

    const/16 v15, 0x1000

    if-lt v0, v15, :cond_0

    goto :goto_0

    .line 513
    :cond_0
    :try_start_0
    new-instance v0, Lcom/sshtools/common/ssh/SshException;

    const-string v2, "Block size cannot be less than 4096"

    invoke-direct {v0, v2, v6}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    move-object v2, v12

    goto/16 :goto_15

    :catch_0
    move v0, v6

    move-object v2, v12

    goto/16 :goto_12

    :catch_1
    move-object v2, v12

    goto/16 :goto_14

    :cond_1
    :goto_0
    if-lez v0, :cond_3

    const/high16 v15, 0x10000

    if-le v0, v15, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v15, v0, 0xd

    .line 518
    :try_start_1
    iget-object v6, v1, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v6}, Lcom/sshtools/client/sftp/SftpChannel;->getSession()Lcom/sshtools/client/SessionChannelNG;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sshtools/client/SessionChannelNG;->getMaxiumRemotePacketSize()I

    move-result v6

    if-le v15, v6, :cond_4

    .line 519
    iget-object v0, v1, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpChannel;->getSession()Lcom/sshtools/client/SessionChannelNG;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/client/SessionChannelNG;->getMaximumRemotePacketLength()I

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_2
    move-object v2, v12

    :goto_1
    const/4 v0, 0x4

    goto/16 :goto_12

    .line 517
    :cond_3
    :goto_2
    :try_start_2
    iget-object v0, v1, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpChannel;->getSession()Lcom/sshtools/client/SessionChannelNG;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/client/SessionChannelNG;->getMaximumRemotePacketLength()I

    move-result v0

    :goto_3
    add-int/lit8 v0, v0, -0xd

    .line 522
    :cond_4
    iget-object v6, v1, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v6}, Lcom/sshtools/client/sftp/SftpChannel;->getSession()Lcom/sshtools/client/SessionChannelNG;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sshtools/client/SessionChannelNG;->getRemoteWindow()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_e
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    move-object/from16 v22, v12

    :try_start_3
    invoke-virtual {v6}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v11

    long-to-double v11, v11

    const-wide v23, 0x3feccccccccccccdL    # 0.9

    mul-double v11, v11, v23

    int-to-double v14, v0

    div-double/2addr v11, v14

    double-to-int v6, v11

    if-gtz p3, :cond_5

    move v11, v6

    goto :goto_4

    :cond_5
    move/from16 v11, p3

    .line 528
    :goto_4
    const-string v6, "maverick.write.optimizedBlock"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 529
    const-string v6, "maverick.write.asyncRequestsMax"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 531
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v6
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    if-eqz v6, :cond_6

    .line 532
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v6

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " postion="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " blocksize="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " maxAsyncRequests="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v12, v6, [Ljava/lang/Object;

    invoke-static {v5, v12}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    :catchall_1
    move-exception v0

    :goto_5
    move-object/from16 v2, v22

    goto/16 :goto_15

    :catch_3
    :goto_6
    move-object/from16 v2, v22

    goto/16 :goto_1

    :catch_4
    :goto_7
    move-object/from16 v2, v22

    goto/16 :goto_14

    :cond_6
    :goto_8
    cmp-long v5, v3, v16

    if-ltz v5, :cond_14

    if-lez v5, :cond_7

    if-eqz v8, :cond_7

    .line 541
    invoke-interface/range {p6 .. p8}, Lcom/sshtools/client/tasks/FileTransferProgress;->progressed(J)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_7
    if-gtz p5, :cond_8

    move v5, v0

    goto :goto_9

    :cond_8
    move/from16 v5, p5

    .line 548
    :goto_9
    :try_start_5
    new-array v0, v0, [B

    .line 552
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_c
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    const/4 v12, -0x1

    if-eq v6, v12, :cond_f

    .line 555
    :try_start_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 556
    new-instance v12, Lcom/sshtools/common/util/UnsignedInteger64;

    invoke-direct {v12, v3, v4}, Lcom/sshtools/common/util/UnsignedInteger64;-><init>(J)V

    const/4 v3, 0x0

    invoke-direct {v1, v12, v0, v3, v6}, Lcom/sshtools/client/sftp/SftpHandle;->writeFile(Lcom/sshtools/common/util/UnsignedInteger64;[BII)V

    .line 557
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v14

    .line 559
    const-string v12, "maverick.write.blockRoundtrip"

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_a
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    int-to-long v3, v6

    add-long v3, p7, v3

    if-eqz v8, :cond_a

    .line 564
    :try_start_7
    invoke-interface {v8}, Lcom/sshtools/client/tasks/FileTransferProgress;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_9

    .line 566
    invoke-interface {v8, v3, v4}, Lcom/sshtools/client/tasks/FileTransferProgress;->progressed(J)V

    goto :goto_a

    .line 565
    :cond_9
    new-instance v0, Lcom/sshtools/client/sftp/TransferCancelledException;

    invoke-direct {v0}, Lcom/sshtools/client/sftp/TransferCancelledException;-><init>()V

    throw v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 569
    :cond_a
    :goto_a
    :try_start_8
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 573
    new-instance v14, Ljava/io/BufferedInputStream;

    invoke-direct {v14, v2, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-wide v2, v3

    .line 577
    :goto_b
    :try_start_9
    invoke-virtual {v14, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    const/4 v15, -0x1

    if-ne v6, v15, :cond_b

    .line 600
    :goto_c
    :try_start_a
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_10

    .line 601
    iget-object v0, v1, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    const/4 v6, 0x0

    invoke-interface {v12, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sshtools/common/util/UnsignedInteger32;

    iget-object v5, v1, Lcom/sshtools/client/sftp/SftpHandle;->file:Lcom/sshtools/client/sftp/SftpFile;

    invoke-virtual {v5}, Lcom/sshtools/client/sftp/SftpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/sshtools/client/sftp/SftpChannel;->getOKRequestStatus(Lcom/sshtools/common/util/UnsignedInteger32;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_c

    :catch_5
    move-wide v3, v2

    goto :goto_6

    :cond_b
    const/4 v5, 0x0

    move-object v4, v0

    const/4 v0, 0x4

    .line 581
    :try_start_b
    invoke-virtual/range {v1 .. v6}, Lcom/sshtools/client/sftp/SftpHandle;->postWriteRequest(J[BII)Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v5

    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    int-to-long v5, v6

    add-long/2addr v2, v5

    if-eqz v8, :cond_d

    .line 587
    invoke-interface {v8}, Lcom/sshtools/client/tasks/FileTransferProgress;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_c

    .line 590
    invoke-interface {v8, v2, v3}, Lcom/sshtools/client/tasks/FileTransferProgress;->progressed(J)V

    goto :goto_d

    .line 588
    :cond_c
    new-instance v4, Lcom/sshtools/client/sftp/TransferCancelledException;

    invoke-direct {v4}, Lcom/sshtools/client/sftp/TransferCancelledException;-><init>()V

    throw v4

    .line 593
    :cond_d
    :goto_d
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v11, :cond_e

    const/4 v6, 0x0

    .line 594
    invoke-interface {v12, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sshtools/common/util/UnsignedInteger32;

    .line 595
    iget-object v6, v1, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    iget-object v15, v1, Lcom/sshtools/client/sftp/SftpHandle;->file:Lcom/sshtools/client/sftp/SftpFile;

    invoke-virtual {v15}, Lcom/sshtools/client/sftp/SftpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v5, v15}, Lcom/sshtools/client/sftp/SftpChannel;->getOKRequestStatus(Lcom/sshtools/common/util/UnsignedInteger32;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :cond_e
    move-object v0, v4

    goto :goto_b

    :catchall_2
    move-exception v0

    move-wide v3, v2

    goto/16 :goto_5

    :catch_6
    const/4 v0, 0x4

    :catch_7
    move-wide v3, v2

    goto :goto_e

    :catch_8
    move-wide v3, v2

    goto/16 :goto_7

    :catch_9
    const/4 v0, 0x4

    goto :goto_e

    :catchall_3
    move-exception v0

    move-wide/from16 v3, p7

    goto/16 :goto_5

    :catch_a
    const/4 v0, 0x4

    move-wide/from16 v3, p7

    :goto_e
    move-object/from16 v2, v22

    goto :goto_12

    :catch_b
    move-wide/from16 v3, p7

    goto/16 :goto_7

    :cond_f
    move-wide/from16 v2, p7

    .line 611
    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v9

    cmp-long v0, v4, v18

    if-lez v0, :cond_11

    .line 613
    div-long v4, v4, v18

    long-to-double v14, v4

    goto :goto_f

    :cond_11
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    .line 614
    :goto_f
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_13

    cmp-long v0, v2, v16

    if-lez v0, :cond_12

    long-to-double v2, v2

    .line 617
    invoke-static {v2, v3}, Lcom/sshtools/common/util/IOUtils;->toByteSize(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    div-double/2addr v2, v14

    const/4 v15, 0x1

    .line 618
    invoke-static {v2, v3, v15}, Lcom/sshtools/common/util/IOUtils;->toByteSize(DI)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v7, v4, v2}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v2, v22

    .line 616
    invoke-static {v2, v0}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_12
    const/4 v6, 0x0

    .line 620
    new-array v0, v6, [Ljava/lang/Object;

    invoke-static {v13, v0}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_13
    return-void

    :cond_14
    move-object/from16 v2, v22

    const/4 v0, 0x4

    .line 537
    :try_start_c
    new-instance v3, Lcom/sshtools/common/ssh/SshException;

    const-string v4, "Position value must be greater than zero!"

    invoke-direct {v3, v4, v0}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_11
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_c} :catch_f
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :catchall_4
    move-exception v0

    goto :goto_10

    :catchall_5
    move-exception v0

    move-object/from16 v2, v22

    goto :goto_10

    :catch_c
    move-object/from16 v2, v22

    goto :goto_11

    :catch_d
    move-object/from16 v2, v22

    goto :goto_13

    :catchall_6
    move-exception v0

    move-object v2, v12

    :goto_10
    move-wide/from16 v3, p7

    goto :goto_15

    :catch_e
    move-object v2, v12

    :goto_11
    const/4 v0, 0x4

    :catch_f
    move-wide/from16 v3, p7

    .line 608
    :goto_12
    :try_start_d
    new-instance v5, Lcom/sshtools/common/ssh/SshException;

    const-string v6, "Resource Shortage: try reducing the local file buffer size"

    invoke-direct {v5, v6, v0}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw v5

    :catch_10
    move-object v2, v12

    :catch_11
    :goto_13
    move-wide/from16 v3, p7

    .line 606
    :goto_14
    new-instance v0, Lcom/sshtools/client/sftp/TransferCancelledException;

    invoke-direct {v0}, Lcom/sshtools/client/sftp/TransferCancelledException;-><init>()V

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    :catchall_7
    move-exception v0

    .line 611
    :goto_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v9

    cmp-long v8, v5, v18

    if-lez v8, :cond_15

    .line 613
    div-long v5, v5, v18

    long-to-double v5, v5

    move-wide/from16 v20, v5

    goto :goto_16

    :cond_15
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    .line 614
    :goto_16
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v5

    if-eqz v5, :cond_17

    cmp-long v5, v3, v16

    if-lez v5, :cond_16

    long-to-double v3, v3

    .line 617
    invoke-static {v3, v4}, Lcom/sshtools/common/util/IOUtils;->toByteSize(D)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    div-double v3, v3, v20

    const/4 v15, 0x1

    .line 618
    invoke-static {v3, v4, v15}, Lcom/sshtools/common/util/IOUtils;->toByteSize(DI)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v5, v7, v6, v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 616
    invoke-static {v2, v3}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_17

    :cond_16
    const/4 v6, 0x0

    .line 620
    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v13, v2}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 623
    :cond_17
    :goto_17
    throw v0
.end method

.method public performSynchronousRead(ILjava/io/OutputStream;Lcom/sshtools/client/tasks/FileTransferProgress;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;
        }
    .end annotation

    .line 1031
    invoke-direct {p0}, Lcom/sshtools/client/sftp/SftpHandle;->checkValidHandle()V

    .line 1033
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1034
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Performing synchronous read postion="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " blocksize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    if-lt p1, v0, :cond_2

    const/high16 v0, 0x10000

    if-le p1, v0, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, p1, 0xd

    .line 1038
    iget-object v2, p0, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v2}, Lcom/sshtools/client/sftp/SftpChannel;->getSession()Lcom/sshtools/client/SessionChannelNG;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sshtools/client/SessionChannelNG;->getMaxiumRemotePacketSize()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1039
    iget-object p1, p0, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpChannel;->getSession()Lcom/sshtools/client/SessionChannelNG;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sshtools/client/SessionChannelNG;->getMaximumLocalPacketLength()I

    move-result p1

    goto :goto_1

    .line 1037
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpChannel;->getSession()Lcom/sshtools/client/SessionChannelNG;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sshtools/client/SessionChannelNG;->getMaximumRemotePacketLength()I

    move-result p1

    :goto_1
    add-int/lit8 p1, p1, -0xd

    .line 1042
    :cond_3
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1043
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Optimised block size will be {}"

    invoke-static {v2, v0}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    const-wide/16 v2, 0x0

    cmp-long v0, p4, v2

    if-ltz v0, :cond_9

    .line 1050
    new-array v2, p1, [B

    .line 1053
    new-instance v3, Lcom/sshtools/common/util/UnsignedInteger64;

    invoke-direct {v3, p4, p5}, Lcom/sshtools/common/util/UnsignedInteger64;-><init>(J)V

    if-lez v0, :cond_5

    if-eqz p3, :cond_5

    .line 1057
    invoke-interface {p3, p4, p5}, Lcom/sshtools/client/tasks/FileTransferProgress;->progressed(J)V

    .line 1061
    :cond_5
    :goto_2
    :try_start_0
    invoke-virtual {p0, v3, v2, v1, p1}, Lcom/sshtools/client/sftp/SftpHandle;->readFile(Lcom/sshtools/common/util/UnsignedInteger64;[BII)I

    move-result p4

    const/4 p5, -0x1

    if-le p4, p5, :cond_8

    if-eqz p3, :cond_7

    .line 1062
    invoke-interface {p3}, Lcom/sshtools/client/tasks/FileTransferProgress;->isCancelled()Z

    move-result p5

    if-nez p5, :cond_6

    goto :goto_3

    .line 1063
    :cond_6
    new-instance p1, Lcom/sshtools/client/sftp/TransferCancelledException;

    invoke-direct {p1}, Lcom/sshtools/client/sftp/TransferCancelledException;-><init>()V

    throw p1

    .line 1065
    :cond_7
    :goto_3
    invoke-virtual {p2, v2, v1, p4}, Ljava/io/OutputStream;->write([BII)V

    .line 1066
    invoke-static {v3, p4}, Lcom/sshtools/common/util/UnsignedInteger64;->add(Lcom/sshtools/common/util/UnsignedInteger64;I)Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object v3

    if-eqz p3, :cond_5

    .line 1068
    invoke-virtual {v3}, Lcom/sshtools/common/util/UnsignedInteger64;->longValue()J

    move-result-wide p4

    invoke-interface {p3, p4, p5}, Lcom/sshtools/client/tasks/FileTransferProgress;->progressed(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_8
    return-void

    :catch_0
    move-exception p1

    .line 1071
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {p2, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 1047
    :cond_9
    new-instance p1, Lcom/sshtools/common/ssh/SshException;

    const-string p2, "Position value must be greater than zero!"

    const/4 p3, 0x4

    invoke-direct {p1, p2, p3}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public postReadRequest(JI)Lcom/sshtools/common/util/UnsignedInteger32;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 713
    invoke-direct {p0}, Lcom/sshtools/client/sftp/SftpHandle;->checkValidHandle()V

    .line 716
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpChannel;->nextRequestId()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v0

    .line 717
    iget-object v1, p0, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v1}, Lcom/sshtools/client/sftp/SftpChannel;->createPacket()Lcom/sshtools/common/ssh/Packet;

    move-result-object v1

    const/4 v2, 0x5

    .line 718
    invoke-virtual {v1, v2}, Lcom/sshtools/common/ssh/Packet;->write(I)V

    .line 719
    invoke-virtual {v0}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sshtools/common/ssh/Packet;->writeInt(J)V

    .line 720
    iget-object v2, p0, Lcom/sshtools/client/sftp/SftpHandle;->handle:[B

    invoke-virtual {v1, v2}, Lcom/sshtools/common/ssh/Packet;->writeBinaryString([B)V

    .line 721
    invoke-virtual {v1, p1, p2}, Lcom/sshtools/common/ssh/Packet;->writeUINT64(J)V

    .line 722
    invoke-virtual {v1, p3}, Lcom/sshtools/common/ssh/Packet;->writeInt(I)V

    .line 724
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 725
    const-string v2, "Sending SSH_FXP_READ for {} bytes at position {} for {} requestId={}"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object p2, p0, Lcom/sshtools/client/sftp/SftpHandle;->file:Lcom/sshtools/client/sftp/SftpFile;

    invoke-virtual {p2}, Lcom/sshtools/client/sftp/SftpFile;->getFilename()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p3, p1, p2, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 727
    :cond_0
    iget-object p1, p0, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {p1, v1}, Lcom/sshtools/client/sftp/SftpChannel;->sendMessage(Lcom/sshtools/common/ssh/Packet;)V
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 733
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {p2, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 731
    invoke-virtual {p1}, Lcom/sshtools/common/ssh/SshIOException;->getRealException()Lcom/sshtools/common/ssh/SshException;

    move-result-object p1

    throw p1
.end method

.method public postWriteRequest(J[BII)Lcom/sshtools/common/util/UnsignedInteger32;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 1089
    invoke-direct {p0}, Lcom/sshtools/client/sftp/SftpHandle;->checkValidHandle()V

    .line 1091
    array-length v0, p3

    sub-int/2addr v0, p4

    if-lt v0, p5, :cond_1

    .line 1096
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpChannel;->nextRequestId()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v0

    .line 1097
    iget-object v1, p0, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v1}, Lcom/sshtools/client/sftp/SftpChannel;->createPacket()Lcom/sshtools/common/ssh/Packet;

    move-result-object v1

    const/4 v2, 0x6

    .line 1098
    invoke-virtual {v1, v2}, Lcom/sshtools/common/ssh/Packet;->write(I)V

    .line 1099
    invoke-virtual {v0}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sshtools/common/ssh/Packet;->writeInt(J)V

    .line 1100
    iget-object v2, p0, Lcom/sshtools/client/sftp/SftpHandle;->handle:[B

    invoke-virtual {v1, v2}, Lcom/sshtools/common/ssh/Packet;->writeBinaryString([B)V

    .line 1101
    invoke-virtual {v1, p1, p2}, Lcom/sshtools/common/ssh/Packet;->writeUINT64(J)V

    .line 1102
    invoke-virtual {v1, p3, p4, p5}, Lcom/sshtools/common/ssh/Packet;->writeBinaryString([BII)V

    .line 1104
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 1105
    const-string p3, "Sending SSH_FXP_WRITE with {} bytes at position {} for {} requestId={}"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object p2, p0, Lcom/sshtools/client/sftp/SftpHandle;->file:Lcom/sshtools/client/sftp/SftpFile;

    invoke-virtual {p2}, Lcom/sshtools/client/sftp/SftpFile;->getFilename()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p4, p1, p2, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1108
    :cond_0
    iget-object p1, p0, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {p1, v1}, Lcom/sshtools/client/sftp/SftpChannel;->sendMessage(Lcom/sshtools/common/ssh/Packet;)V
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 1114
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {p2, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 1112
    invoke-virtual {p1}, Lcom/sshtools/common/ssh/SshIOException;->getRealException()Lcom/sshtools/common/ssh/SshException;

    move-result-object p1

    throw p1

    .line 1092
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "Incorrect data array size!"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public read(J[BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 226
    invoke-direct {p0}, Lcom/sshtools/client/sftp/SftpHandle;->checkValidHandle()V

    .line 227
    new-instance v0, Lcom/sshtools/common/util/UnsignedInteger64;

    invoke-direct {v0, p1, p2}, Lcom/sshtools/common/util/UnsignedInteger64;-><init>(J)V

    invoke-virtual {p0, v0, p3, p4, p5}, Lcom/sshtools/client/sftp/SftpHandle;->readFile(Lcom/sshtools/common/util/UnsignedInteger64;[BII)I

    move-result p1

    return p1
.end method

.method public readFile(Lcom/sshtools/common/util/UnsignedInteger64;[BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 641
    invoke-direct {p0}, Lcom/sshtools/client/sftp/SftpHandle;->checkValidHandle()V

    .line 644
    :try_start_0
    array-length v0, p2

    sub-int/2addr v0, p3

    if-lt v0, p4, :cond_6

    .line 648
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpChannel;->nextRequestId()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v0

    .line 649
    iget-object v1, p0, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v1}, Lcom/sshtools/client/sftp/SftpChannel;->createPacket()Lcom/sshtools/common/ssh/Packet;

    move-result-object v1

    const/4 v2, 0x5

    .line 650
    invoke-virtual {v1, v2}, Lcom/sshtools/common/ssh/Packet;->write(I)V

    .line 651
    invoke-virtual {v0}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sshtools/common/ssh/Packet;->writeInt(J)V

    .line 652
    iget-object v2, p0, Lcom/sshtools/client/sftp/SftpHandle;->handle:[B

    invoke-virtual {v1, v2}, Lcom/sshtools/common/ssh/Packet;->writeBinaryString([B)V

    .line 653
    invoke-virtual {p1}, Lcom/sshtools/common/util/UnsignedInteger64;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sshtools/common/ssh/Packet;->write([B)V

    .line 654
    invoke-virtual {v1, p4}, Lcom/sshtools/common/ssh/Packet;->writeInt(I)V

    .line 656
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 657
    const-string v2, "Sending SSH_FXP_READ for {} bytes at position {} for {} requestId={}"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1}, Lcom/sshtools/common/util/UnsignedInteger64;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sshtools/client/sftp/SftpHandle;->file:Lcom/sshtools/client/sftp/SftpFile;

    invoke-virtual {v4}, Lcom/sshtools/client/sftp/SftpFile;->getFilename()Ljava/lang/String;

    move-result-object v4

    filled-new-array {p4, v3, v4, v0}, [Ljava/lang/Object;

    move-result-object p4

    invoke-static {v2, p4}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 660
    :cond_0
    iget-object p4, p0, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {p4, v1}, Lcom/sshtools/client/sftp/SftpChannel;->sendMessage(Lcom/sshtools/common/ssh/Packet;)V

    .line 662
    iget-object p4, p0, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {p4, v0}, Lcom/sshtools/client/sftp/SftpChannel;->getResponse(Lcom/sshtools/common/util/UnsignedInteger32;)Lcom/sshtools/client/sftp/SftpMessage;

    move-result-object p4
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    :try_start_1
    invoke-virtual {p4}, Lcom/sshtools/client/sftp/SftpMessage;->getType()I

    move-result v1

    const/16 v2, 0x67

    if-ne v1, v2, :cond_2

    .line 666
    invoke-virtual {p4}, Lcom/sshtools/client/sftp/SftpMessage;->readBinaryString()[B

    move-result-object v1

    .line 667
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, p2, p3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 669
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 670
    const-string p2, "Received SSH_FXP_DATA with {} bytes at position {} for {} requestId={}"

    array-length p3, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1}, Lcom/sshtools/common/util/UnsignedInteger64;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/sshtools/client/sftp/SftpHandle;->file:Lcom/sshtools/client/sftp/SftpFile;

    invoke-virtual {v2}, Lcom/sshtools/client/sftp/SftpFile;->getFilename()Ljava/lang/String;

    move-result-object v2

    filled-new-array {p3, p1, v2, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 673
    :cond_1
    array-length p1, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 689
    :try_start_2
    invoke-virtual {p4}, Lcom/sshtools/client/sftp/SftpMessage;->release()V
    :try_end_2
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return p1

    .line 674
    :cond_2
    :try_start_3
    invoke-virtual {p4}, Lcom/sshtools/client/sftp/SftpMessage;->getType()I

    move-result p1

    const/16 p2, 0x65

    if-ne p1, p2, :cond_5

    .line 675
    invoke-virtual {p4}, Lcom/sshtools/client/sftp/SftpMessage;->readInt()J

    move-result-wide p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    long-to-int p1, p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    const/4 p1, -0x1

    .line 689
    :try_start_4
    invoke-virtual {p4}, Lcom/sshtools/client/sftp/SftpMessage;->release()V
    :try_end_4
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return p1

    .line 678
    :cond_3
    :try_start_5
    iget-object p2, p0, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {p2}, Lcom/sshtools/client/sftp/SftpChannel;->getVersion()I

    move-result p2

    const/4 p3, 0x3

    if-lt p2, p3, :cond_4

    .line 679
    invoke-virtual {p4}, Lcom/sshtools/client/sftp/SftpMessage;->readString()Ljava/lang/String;

    move-result-object p2

    .line 680
    new-instance p3, Lcom/sshtools/common/sftp/SftpStatusException;

    invoke-direct {p3, p1, p2}, Lcom/sshtools/common/sftp/SftpStatusException;-><init>(ILjava/lang/String;)V

    throw p3

    .line 682
    :cond_4
    new-instance p2, Lcom/sshtools/common/sftp/SftpStatusException;

    invoke-direct {p2, p1}, Lcom/sshtools/common/sftp/SftpStatusException;-><init>(I)V

    throw p2

    .line 684
    :cond_5
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpHandle;->close()V

    .line 685
    new-instance p1, Lcom/sshtools/common/ssh/SshException;

    const-string p2, "The server responded with an unexpected message"

    const/4 p3, 0x6

    invoke-direct {p1, p2, p3}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception p1

    .line 689
    :try_start_6
    invoke-virtual {p4}, Lcom/sshtools/client/sftp/SftpMessage;->release()V

    .line 690
    throw p1

    .line 645
    :cond_6
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "Output array size is smaller than read length!"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_6
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p1

    .line 694
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {p2, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 692
    invoke-virtual {p1}, Lcom/sshtools/common/ssh/SshIOException;->getRealException()Lcom/sshtools/common/ssh/SshException;

    move-result-object p1

    throw p1
.end method

.method public setAttributes(Lcom/sshtools/common/sftp/SftpFileAttributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 407
    invoke-direct {p0}, Lcom/sshtools/client/sftp/SftpHandle;->checkValidHandle()V

    .line 410
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpChannel;->nextRequestId()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v0

    .line 411
    iget-object v1, p0, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v1}, Lcom/sshtools/client/sftp/SftpChannel;->createPacket()Lcom/sshtools/common/ssh/Packet;

    move-result-object v1

    const/16 v2, 0xa

    .line 412
    invoke-virtual {v1, v2}, Lcom/sshtools/common/ssh/Packet;->write(I)V

    .line 413
    invoke-virtual {v0}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sshtools/common/ssh/Packet;->writeInt(J)V

    .line 414
    iget-object v2, p0, Lcom/sshtools/client/sftp/SftpHandle;->handle:[B

    invoke-virtual {v1, v2}, Lcom/sshtools/common/ssh/Packet;->writeBinaryString([B)V

    .line 415
    iget-object v2, p0, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v2}, Lcom/sshtools/client/sftp/SftpChannel;->getVersion()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/sshtools/common/sftp/SftpFileAttributes;->toByteArray(I)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/sshtools/common/ssh/Packet;->write([B)V

    .line 417
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 418
    const-string p1, "Sending SSH_FXP_FSETSTAT for {} requestId="

    iget-object v2, p0, Lcom/sshtools/client/sftp/SftpHandle;->file:Lcom/sshtools/client/sftp/SftpFile;

    invoke-virtual {v2}, Lcom/sshtools/client/sftp/SftpFile;->getFilename()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 421
    :cond_0
    iget-object p1, p0, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {p1, v1}, Lcom/sshtools/client/sftp/SftpChannel;->sendMessage(Lcom/sshtools/common/ssh/Packet;)V

    .line 423
    iget-object p1, p0, Lcom/sshtools/client/sftp/SftpHandle;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    iget-object v1, p0, Lcom/sshtools/client/sftp/SftpHandle;->file:Lcom/sshtools/client/sftp/SftpFile;

    invoke-virtual {v1}, Lcom/sshtools/client/sftp/SftpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/sshtools/client/sftp/SftpChannel;->getOKRequestStatus(Lcom/sshtools/common/util/UnsignedInteger32;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 427
    new-instance v0, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {v0, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 425
    invoke-virtual {p1}, Lcom/sshtools/common/ssh/SshIOException;->getRealException()Lcom/sshtools/common/ssh/SshException;

    move-result-object p1

    throw p1
.end method

.method public write(J[BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 246
    invoke-direct {p0}, Lcom/sshtools/client/sftp/SftpHandle;->checkValidHandle()V

    .line 247
    new-instance v0, Lcom/sshtools/common/util/UnsignedInteger64;

    invoke-direct {v0, p1, p2}, Lcom/sshtools/common/util/UnsignedInteger64;-><init>(J)V

    invoke-direct {p0, v0, p3, p4, p5}, Lcom/sshtools/client/sftp/SftpHandle;->writeFile(Lcom/sshtools/common/util/UnsignedInteger64;[BII)V

    return-void
.end method
