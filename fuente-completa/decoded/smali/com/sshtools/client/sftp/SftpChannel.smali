.class public Lcom/sshtools/client/sftp/SftpChannel;
.super Lcom/sshtools/client/tasks/AbstractSubsystem;
.source "SftpChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/client/sftp/SftpChannel$SftpThreadSynchronizer;
    }
.end annotation


# static fields
.field public static final DEFAULT_CHARSET_ENCODING:Ljava/lang/String; = "UTF-8"

.field public static final MAX_VERSION:I = 0x6

.field public static final OPEN_APPEND:I = 0x4

.field public static final OPEN_CREATE:I = 0x8

.field public static final OPEN_EXCLUSIVE:I = 0x20

.field public static final OPEN_READ:I = 0x1

.field public static final OPEN_TEXT:I = 0x40

.field public static final OPEN_TRUNCATE:I = 0x10

.field public static final OPEN_WRITE:I = 0x2

.field public static final SSH_FXF_ACCESS_APPEND_DATA:I = 0x8

.field public static final SSH_FXF_ACCESS_APPEND_DATA_ATOMIC:I = 0x10

.field public static final SSH_FXF_ACCESS_AUDIT_ALARM_INFO:I = 0x1000

.field public static final SSH_FXF_ACCESS_BACKUP:I = 0x2000

.field public static final SSH_FXF_ACCESS_BLOCK_ADVISORY:I = 0x200

.field public static final SSH_FXF_ACCESS_BLOCK_DELETE:I = 0x100

.field public static final SSH_FXF_ACCESS_BLOCK_READ:I = 0x40

.field public static final SSH_FXF_ACCESS_BLOCK_WRITE:I = 0x80

.field public static final SSH_FXF_ACCESS_DISPOSITION:I = 0x7

.field public static final SSH_FXF_ACCESS_TEXT_MODE:I = 0x20

.field public static final SSH_FXF_BACKUP_STREAM:I = 0x4000

.field public static final SSH_FXF_CREATE_NEW:I = 0x0

.field public static final SSH_FXF_CREATE_TRUNCATE:I = 0x1

.field public static final SSH_FXF_DELETE_ON_CLOSE:I = 0x800

.field public static final SSH_FXF_NOFOLLOW:I = 0x400

.field public static final SSH_FXF_OPEN_EXISTING:I = 0x2

.field public static final SSH_FXF_OPEN_OR_CREATE:I = 0x3

.field public static final SSH_FXF_OVERRIDE_OWNER:I = 0x8000

.field public static final SSH_FXF_TRUNCATE_EXISTING:I = 0x4

.field public static final SSH_FXP_ATTRS:I = 0x69

.field static final SSH_FXP_BLOCK:I = 0x16

.field static final SSH_FXP_CLOSE:I = 0x4

.field public static final SSH_FXP_DATA:I = 0x67

.field public static final SSH_FXP_EXTENDED:I = 0xc8

.field public static final SSH_FXP_EXTENDED_REPLY:I = 0xc9

.field static final SSH_FXP_FSETSTAT:I = 0xa

.field static final SSH_FXP_FSTAT:I = 0x8

.field public static final SSH_FXP_HANDLE:I = 0x66

.field static final SSH_FXP_INIT:I = 0x1

.field static final SSH_FXP_LINK:I = 0x15

.field static final SSH_FXP_LSTAT:I = 0x7

.field static final SSH_FXP_MKDIR:I = 0xe

.field public static final SSH_FXP_NAME:I = 0x68

.field static final SSH_FXP_OPEN:I = 0x3

.field static final SSH_FXP_OPENDIR:I = 0xb

.field static final SSH_FXP_READ:I = 0x5

.field static final SSH_FXP_READDIR:I = 0xc

.field static final SSH_FXP_READLINK:I = 0x13

.field static final SSH_FXP_REALPATH:I = 0x10

.field static final SSH_FXP_REMOVE:I = 0xd

.field static final SSH_FXP_RENAME:I = 0x12

.field public static final SSH_FXP_RENAME_ATOMIC:I = 0x2

.field public static final SSH_FXP_RENAME_NATIVE:I = 0x4

.field public static final SSH_FXP_RENAME_OVERWRITE:I = 0x1

.field static final SSH_FXP_RMDIR:I = 0xf

.field static final SSH_FXP_SETSTAT:I = 0x9

.field static final SSH_FXP_STAT:I = 0x11

.field public static final SSH_FXP_STATUS:I = 0x65

.field static final SSH_FXP_SYMLINK:I = 0x14

.field static final SSH_FXP_UNBLOCK:I = 0x17

.field static final SSH_FXP_VERSION:I = 0x2

.field static final SSH_FXP_WRITE:I = 0x6

.field static final STATUS_FX_EOF:I = 0x1

.field static final STATUS_FX_OK:I


# instance fields
.field CHARSET_ENCODING:Ljava/lang/String;

.field extensions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field handles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "[B",
            "Lcom/sshtools/client/sftp/SftpHandle;",
            ">;"
        }
    .end annotation
.end field

.field maxReadSize:Ljava/lang/Integer;

.field nextRequestId:Lcom/sshtools/common/util/UnsignedInteger32;

.field responses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sshtools/common/util/UnsignedInteger32;",
            "Lcom/sshtools/client/sftp/SftpMessage;",
            ">;"
        }
    .end annotation
.end field

.field serverVersion:I

.field supportedAccessMask:Ljava/lang/Long;

.field supportedAttrExtensions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field supportedAttributeBits:Ljava/lang/Long;

.field supportedAttributeMask:Ljava/lang/Long;

.field supportedBlockVector:S

.field supportedExtensions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field supportedOpenBlockVector:S

.field supportedOpenFileFlags:Ljava/lang/Long;

.field sync:Lcom/sshtools/client/sftp/SftpChannel$SftpThreadSynchronizer;

.field version:I


# direct methods
.method public constructor <init>(Lcom/sshtools/common/ssh/SshConnection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 204
    invoke-direct {p0, p1}, Lcom/sshtools/client/tasks/AbstractSubsystem;-><init>(Lcom/sshtools/common/ssh/SshConnection;)V

    .line 73
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/sshtools/client/sftp/SftpChannel;->CHARSET_ENCODING:Ljava/lang/String;

    .line 163
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sshtools/client/sftp/SftpChannel;->supportedExtensions:Ljava/util/Set;

    .line 164
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sshtools/client/sftp/SftpChannel;->supportedAttrExtensions:Ljava/util/Set;

    const/4 v0, 0x6

    .line 166
    iput v0, p0, Lcom/sshtools/client/sftp/SftpChannel;->version:I

    const/4 v0, -0x1

    .line 167
    iput v0, p0, Lcom/sshtools/client/sftp/SftpChannel;->serverVersion:I

    .line 168
    new-instance v0, Lcom/sshtools/common/util/UnsignedInteger32;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/util/UnsignedInteger32;-><init>(J)V

    iput-object v0, p0, Lcom/sshtools/client/sftp/SftpChannel;->nextRequestId:Lcom/sshtools/common/util/UnsignedInteger32;

    .line 169
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sshtools/client/sftp/SftpChannel;->responses:Ljava/util/Map;

    .line 170
    new-instance v0, Lcom/sshtools/client/sftp/SftpChannel$SftpThreadSynchronizer;

    invoke-direct {v0, p0}, Lcom/sshtools/client/sftp/SftpChannel$SftpThreadSynchronizer;-><init>(Lcom/sshtools/client/sftp/SftpChannel;)V

    iput-object v0, p0, Lcom/sshtools/client/sftp/SftpChannel;->sync:Lcom/sshtools/client/sftp/SftpChannel$SftpThreadSynchronizer;

    .line 171
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sshtools/client/sftp/SftpChannel;->extensions:Ljava/util/Map;

    .line 172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/sftp/SftpChannel;->handles:Ljava/util/Map;

    .line 205
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpChannel;->session:Lcom/sshtools/client/SessionChannelNG;

    invoke-direct {p0, v0}, Lcom/sshtools/client/sftp/SftpChannel;->initializeSftp(Lcom/sshtools/client/SessionChannelNG;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "sftpVersion"

    invoke-interface {p1, v1, v0}, Lcom/sshtools/common/ssh/SshConnection;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private initializeSftp(Lcom/sshtools/client/SessionChannelNG;)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 238
    const-string v0, "filename-translation-control"

    const-string v1, "filename-charset"

    const-string v2, "supported2"

    const-string v3, "supported"

    .line 0
    const-string v4, " Client=6]"

    const-string v5, "Version is "

    const/4 v6, 0x6

    .line 238
    :try_start_0
    const-string v7, "sftp"

    invoke-virtual {p1, v7}, Lcom/sshtools/client/SessionChannelNG;->startSubsystem(Ljava/lang/String;)Lcom/sshtools/common/ssh/RequestFuture;

    move-result-object v7

    .line 239
    iget-wide v8, p0, Lcom/sshtools/client/sftp/SftpChannel;->timeout:J

    invoke-interface {v7, v8, v9}, Lcom/sshtools/common/ssh/RequestFuture;->waitFor(J)Lcom/sshtools/common/ssh/RequestFuture;

    move-result-object v7

    invoke-interface {v7}, Lcom/sshtools/common/ssh/RequestFuture;->isSuccess()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 243
    invoke-static {}, Lcom/sshtools/synergy/ssh/PacketPool;->getInstance()Lcom/sshtools/synergy/ssh/PacketPool;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sshtools/synergy/ssh/PacketPool;->getPacket()Lcom/sshtools/common/ssh/Packet;

    move-result-object v7

    const/4 v8, 0x1

    .line 244
    invoke-virtual {v7, v8}, Lcom/sshtools/common/ssh/Packet;->write(I)V

    .line 245
    invoke-virtual {v7, v6}, Lcom/sshtools/common/ssh/Packet;->writeInt(I)V

    .line 247
    invoke-virtual {p0, v7}, Lcom/sshtools/client/sftp/SftpChannel;->sendMessage(Lcom/sshtools/common/ssh/Packet;)V

    .line 249
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpChannel;->nextMessage()[B

    move-result-object v7
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v9, 0x0

    .line 252
    :try_start_1
    aget-byte v10, v7, v9

    const/4 v11, 0x2

    if-ne v10, v11, :cond_6

    .line 259
    new-instance p1, Lcom/sshtools/common/util/ByteArrayReader;

    invoke-direct {p1, v7}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const-wide/16 v10, 0x1

    .line 262
    :try_start_2
    invoke-virtual {p1, v10, v11}, Lcom/sshtools/common/util/ByteArrayReader;->skip(J)J

    .line 264
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v10

    long-to-int v10, v10

    .line 266
    invoke-static {v10, v6}, Ljava/lang/Math;->min(II)I

    move-result v11

    iput v11, p0, Lcom/sshtools/client/sftp/SftpChannel;->version:I

    .line 268
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 269
    iget v11, p0, Lcom/sshtools/client/sftp/SftpChannel;->version:I

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " [Server="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 274
    :cond_0
    :goto_0
    :try_start_3
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->available()I

    move-result v4

    if-lez v4, :cond_1

    .line 275
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object v4

    .line 276
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readBinaryString()[B

    move-result-object v5

    .line 278
    iget-object v10, p0, Lcom/sshtools/client/sftp/SftpChannel;->extensions:Ljava/util/Map;

    invoke-interface {v10, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 281
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Processed extension \'"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 287
    :catchall_0
    :cond_1
    :try_start_4
    iget v4, p0, Lcom/sshtools/client/sftp/SftpChannel;->version:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    .line 288
    iget-object v2, p0, Lcom/sshtools/client/sftp/SftpChannel;->extensions:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 289
    iget-object v2, p0, Lcom/sshtools/client/sftp/SftpChannel;->extensions:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {p0, v2}, Lcom/sshtools/client/sftp/SftpChannel;->processSupported([B)V

    goto :goto_1

    :cond_2
    if-lt v4, v6, :cond_3

    .line 292
    iget-object v3, p0, Lcom/sshtools/client/sftp/SftpChannel;->extensions:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 293
    iget-object v3, p0, Lcom/sshtools/client/sftp/SftpChannel;->extensions:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {p0, v2}, Lcom/sshtools/client/sftp/SftpChannel;->processSupported2([B)V

    .line 296
    :cond_3
    :goto_1
    iget v2, p0, Lcom/sshtools/client/sftp/SftpChannel;->version:I

    const/4 v3, 0x3

    if-gt v2, v3, :cond_4

    .line 297
    const-string v0, "ISO-8859-1"

    invoke-virtual {p0, v0}, Lcom/sshtools/client/sftp/SftpChannel;->setCharsetEncoding(Ljava/lang/String;)V

    goto :goto_2

    .line 299
    :cond_4
    iget-object v2, p0, Lcom/sshtools/client/sftp/SftpChannel;->extensions:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-string v3, "UTF8"

    if-eqz v2, :cond_5

    .line 301
    :try_start_5
    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/sshtools/client/sftp/SftpChannel;->extensions:Ljava/util/Map;

    .line 302
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    const-string v4, "UTF-8"

    invoke-direct {v2, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 304
    :try_start_6
    invoke-virtual {p0, v2}, Lcom/sshtools/client/sftp/SftpChannel;->setCharsetEncoding(Ljava/lang/String;)V

    .line 305
    new-array v1, v8, [B

    aput-byte v9, v1, v9

    invoke-virtual {p0, v0, v1}, Lcom/sshtools/client/sftp/SftpChannel;->sendExtensionMessage(Ljava/lang/String;[B)Lcom/sshtools/common/util/UnsignedInteger32;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    .line 309
    :catch_0
    :try_start_7
    invoke-virtual {p0, v3}, Lcom/sshtools/client/sftp/SftpChannel;->setCharsetEncoding(Ljava/lang/String;)V

    .line 310
    new-array v1, v8, [B

    aput-byte v8, v1, v9

    invoke-virtual {p0, v0, v1}, Lcom/sshtools/client/sftp/SftpChannel;->sendExtensionMessage(Ljava/lang/String;[B)Lcom/sshtools/common/util/UnsignedInteger32;

    goto :goto_2

    .line 315
    :cond_5
    invoke-virtual {p0, v3}, Lcom/sshtools/client/sftp/SftpChannel;->setCharsetEncoding(Ljava/lang/String;)V

    .line 319
    :goto_2
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpChannel;->con:Lcom/sshtools/common/ssh/SshConnection;

    const-string v1, "sftpExtensions"

    iget-object v2, p0, Lcom/sshtools/client/sftp/SftpChannel;->extensions:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Lcom/sshtools/common/ssh/SshConnection;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 321
    iget v0, p0, Lcom/sshtools/client/sftp/SftpChannel;->version:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 323
    :try_start_8
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 326
    :try_start_9
    invoke-static {}, Lcom/sshtools/synergy/ssh/ByteArrays;->getInstance()Lcom/sshtools/synergy/ssh/ByteArrays;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/sshtools/synergy/ssh/ByteArrays;->releaseByteArray([B)V
    :try_end_9
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    return v0

    :catchall_1
    move-exception v0

    .line 323
    :try_start_a
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 324
    throw v0

    .line 253
    :cond_6
    invoke-virtual {p1}, Lcom/sshtools/client/SessionChannelNG;->close()V

    .line 254
    new-instance p1, Lcom/sshtools/common/ssh/SshException;

    const-string v0, "Unexpected response from SFTP subsystem."

    invoke-direct {p1, v0, v6}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
    move-exception p1

    .line 326
    :try_start_b
    invoke-static {}, Lcom/sshtools/synergy/ssh/ByteArrays;->getInstance()Lcom/sshtools/synergy/ssh/ByteArrays;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/sshtools/synergy/ssh/ByteArrays;->releaseByteArray([B)V

    .line 327
    throw p1

    .line 240
    :cond_7
    new-instance p1, Lcom/sshtools/common/ssh/SshException;

    const-string v0, "Could not start sftp subsystem"

    const/16 v1, 0xa

    invoke-direct {p1, v0, v1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p1
    :try_end_b
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :catchall_3
    move-exception p1

    .line 333
    new-instance v0, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {v0, v6, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(ILjava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 331
    new-instance v0, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {v0, v6, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(ILjava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    .line 329
    invoke-virtual {p1}, Lcom/sshtools/common/ssh/SshIOException;->getRealException()Lcom/sshtools/common/ssh/SshException;

    move-result-object p1

    throw p1
.end method

.method private isValidHandle([B)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public changePermissions(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "3.1.0"
    .end annotation

    .line 600
    invoke-static {}, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->create()Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;

    move-result-object v0

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->fromBitmask(J)Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->build()Lcom/sshtools/common/sftp/PosixPermissions;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sshtools/client/sftp/SftpChannel;->changePermissions(Ljava/lang/String;Lcom/sshtools/common/sftp/PosixPermissions;)V

    return-void
.end method

.method public changePermissions(Ljava/lang/String;Lcom/sshtools/common/sftp/PosixPermissions;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 637
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpChannel;->getCharsetEncoding()Ljava/lang/String;

    move-result-object v1

    .line 635
    invoke-static {v0, v1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->ofType(ILjava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    move-result-object v0

    .line 638
    invoke-virtual {v0, p2}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->withPermissions(Lcom/sshtools/common/sftp/PosixPermissions;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    .line 639
    invoke-virtual {v0}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->build()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sshtools/client/sftp/SftpChannel;->setAttributes(Ljava/lang/String;Lcom/sshtools/common/sftp/SftpFileAttributes;)V

    return-void
.end method

.method public changePermissions(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 658
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpChannel;->getCharsetEncoding()Ljava/lang/String;

    move-result-object v1

    .line 656
    invoke-static {v0, v1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->ofType(ILjava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    move-result-object v0

    .line 659
    invoke-static {}, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->create()Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->fromFileModeString(Ljava/lang/String;)Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->build()Lcom/sshtools/common/sftp/PosixPermissions;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->withPermissions(Lcom/sshtools/common/sftp/PosixPermissions;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    .line 660
    invoke-virtual {v0}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->build()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sshtools/client/sftp/SftpChannel;->setAttributes(Ljava/lang/String;Lcom/sshtools/common/sftp/SftpFileAttributes;)V

    return-void
.end method

.method public changePermissions([BI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "3.1.0"
    .end annotation

    .line 581
    invoke-static {}, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->create()Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;

    move-result-object v0

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->fromBitmask(J)Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->build()Lcom/sshtools/common/sftp/PosixPermissions;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sshtools/client/sftp/SftpChannel;->changePermissions([BLcom/sshtools/common/sftp/PosixPermissions;)V

    return-void
.end method

.method public changePermissions([BLcom/sshtools/common/sftp/PosixPermissions;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 617
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpChannel;->getCharsetEncoding()Ljava/lang/String;

    move-result-object v1

    .line 615
    invoke-static {v0, v1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->ofType(ILjava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    move-result-object v0

    .line 618
    invoke-virtual {v0, p2}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->withPermissions(Lcom/sshtools/common/sftp/PosixPermissions;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    .line 619
    invoke-virtual {v0}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->build()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sshtools/client/sftp/SftpChannel;->setAttributes([BLcom/sshtools/common/sftp/SftpFileAttributes;)V

    return-void
.end method

.method public close()V
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpChannel;->responses:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 529
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpChannel;->getSession()Lcom/sshtools/client/SessionChannelNG;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/client/SessionChannelNG;->close()V

    return-void
.end method

.method public closeFile(Lcom/sshtools/client/sftp/SftpHandle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1775
    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpHandle;->close()V

    return-void
.end method

.method public closeHandle([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        since = "3.1.0"
    .end annotation

    if-eqz p1, :cond_2

    .line 1745
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sshtools/client/sftp/SftpChannel;->getBestHandle([B)Lcom/sshtools/client/sftp/SftpHandle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpHandle;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1747
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/sshtools/common/ssh/SshException;

    if-nez v0, :cond_1

    .line 1749
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/sshtools/common/sftp/SftpStatusException;

    if-eqz v0, :cond_0

    .line 1750
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lcom/sshtools/common/sftp/SftpStatusException;

    throw p1

    .line 1752
    :cond_0
    new-instance v0, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {v0, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 1748
    :cond_1
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lcom/sshtools/common/ssh/SshException;

    throw p1

    .line 1740
    :cond_2
    new-instance p1, Lcom/sshtools/common/sftp/SftpStatusException;

    const/16 v0, 0x64

    const-string v1, "The handle is invalid!"

    invoke-direct {p1, v0, v1}, Lcom/sshtools/common/sftp/SftpStatusException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public createHandle([BLjava/lang/String;)Lcom/sshtools/client/sftp/SftpHandle;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 2347
    new-instance v0, Lcom/sshtools/client/sftp/SftpHandle;

    new-instance v1, Lcom/sshtools/client/sftp/SftpFile;

    invoke-virtual {p0, p1}, Lcom/sshtools/client/sftp/SftpChannel;->getAttributes([B)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p2, v2, v3}, Lcom/sshtools/client/sftp/SftpFile;-><init>(Ljava/lang/String;Lcom/sshtools/common/sftp/SftpFileAttributes;Ljava/lang/String;)V

    invoke-direct {v0, p1, p0, v1}, Lcom/sshtools/client/sftp/SftpHandle;-><init>([BLcom/sshtools/client/sftp/SftpChannel;Lcom/sshtools/client/sftp/SftpFile;)V

    return-object v0
.end method

.method public createLink(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 1197
    iget v0, p0, Lcom/sshtools/client/sftp/SftpChannel;->version:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 1198
    :cond_0
    new-instance p1, Lcom/sshtools/common/sftp/SftpStatusException;

    iget p2, p0, Lcom/sshtools/client/sftp/SftpChannel;->version:I

    .line 1201
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Hard links are not supported by the server SFTP version "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x8

    invoke-direct {p1, p3, p2}, Lcom/sshtools/common/sftp/SftpStatusException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-ge v0, v1, :cond_2

    if-eqz p3, :cond_2

    .line 1205
    invoke-virtual {p0, p1, p2}, Lcom/sshtools/client/sftp/SftpChannel;->createSymbolicLink(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1209
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpChannel;->nextRequestId()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v0

    .line 1210
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpChannel;->createPacket()Lcom/sshtools/common/ssh/Packet;

    move-result-object v1

    const/16 v2, 0x15

    .line 1211
    invoke-virtual {v1, v2}, Lcom/sshtools/common/ssh/Packet;->write(I)V

    .line 1212
    invoke-virtual {v0}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sshtools/common/ssh/Packet;->writeInt(J)V

    .line 1213
    iget-object v2, p0, Lcom/sshtools/client/sftp/SftpChannel;->CHARSET_ENCODING:Ljava/lang/String;

    invoke-virtual {v1, p2, v2}, Lcom/sshtools/common/ssh/Packet;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    iget-object v2, p0, Lcom/sshtools/client/sftp/SftpChannel;->CHARSET_ENCODING:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/sshtools/common/ssh/Packet;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    invoke-virtual {v1, p3}, Lcom/sshtools/common/ssh/Packet;->writeBoolean(Z)V

    .line 1217
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 1218
    const-string p3, "Sending SSH_FXP_LINK to link {} to {}"

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1222
    :cond_3
    invoke-virtual {p0, v1}, Lcom/sshtools/client/sftp/SftpChannel;->sendMessage(Lcom/sshtools/common/ssh/Packet;)V

    .line 1224
    invoke-virtual {p0, v0, p2}, Lcom/sshtools/client/sftp/SftpChannel;->getOKRequestStatus(Lcom/sshtools/common/util/UnsignedInteger32;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1228
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {p2, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 1226
    invoke-virtual {p1}, Lcom/sshtools/common/ssh/SshIOException;->getRealException()Lcom/sshtools/common/ssh/SshException;

    move-result-object p1

    throw p1
.end method

.method protected createPacket()Lcom/sshtools/common/ssh/Packet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2289
    invoke-static {}, Lcom/sshtools/synergy/ssh/PacketPool;->getInstance()Lcom/sshtools/synergy/ssh/PacketPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/PacketPool;->getPacket()Lcom/sshtools/common/ssh/Packet;

    move-result-object v0

    return-object v0
.end method

.method public createSymbolicLink(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 1147
    iget v0, p0, Lcom/sshtools/client/sftp/SftpChannel;->version:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 1155
    :try_start_0
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpChannel;->nextRequestId()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v0

    .line 1156
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpChannel;->createPacket()Lcom/sshtools/common/ssh/Packet;

    move-result-object v1

    const/16 v2, 0x14

    .line 1157
    invoke-virtual {v1, v2}, Lcom/sshtools/common/ssh/Packet;->write(I)V

    .line 1158
    invoke-virtual {v0}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sshtools/common/ssh/Packet;->writeInt(J)V

    .line 1159
    iget-object v2, p0, Lcom/sshtools/client/sftp/SftpChannel;->CHARSET_ENCODING:Ljava/lang/String;

    invoke-virtual {v1, p2, v2}, Lcom/sshtools/common/ssh/Packet;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    iget-object v2, p0, Lcom/sshtools/client/sftp/SftpChannel;->CHARSET_ENCODING:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/sshtools/common/ssh/Packet;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    iget v2, p0, Lcom/sshtools/client/sftp/SftpChannel;->version:I

    const/4 v3, 0x6

    if-lt v2, v3, :cond_0

    const/4 v2, 0x1

    .line 1162
    invoke-virtual {v1, v2}, Lcom/sshtools/common/ssh/Packet;->writeBoolean(Z)V

    .line 1165
    :cond_0
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1166
    const-string v2, "Sending SSH_FXP_SYMLINK to link {} to {}"

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1171
    :cond_1
    invoke-virtual {p0, v1}, Lcom/sshtools/client/sftp/SftpChannel;->sendMessage(Lcom/sshtools/common/ssh/Packet;)V

    .line 1173
    invoke-virtual {p0, v0, p2}, Lcom/sshtools/client/sftp/SftpChannel;->getOKRequestStatus(Lcom/sshtools/common/util/UnsignedInteger32;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1177
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {p2, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 1175
    invoke-virtual {p1}, Lcom/sshtools/common/ssh/SshIOException;->getRealException()Lcom/sshtools/common/ssh/SshException;

    move-result-object p1

    throw p1

    .line 1148
    :cond_2
    new-instance p1, Lcom/sshtools/common/sftp/SftpStatusException;

    iget p2, p0, Lcom/sshtools/client/sftp/SftpChannel;->version:I

    .line 1151
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Symbolic links are not supported by the server SFTP version "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x8

    invoke-direct {p1, v0, p2}, Lcom/sshtools/common/sftp/SftpStatusException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method extractAttributes(Lcom/sshtools/client/sftp/SftpMessage;Ljava/lang/String;Lcom/sshtools/common/util/UnsignedInteger32;)Lcom/sshtools/common/sftp/SftpFileAttributes;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 2036
    :try_start_0
    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpMessage;->getType()I

    move-result v0

    const/16 v1, 0x69

    if-ne v0, v1, :cond_1

    .line 2037
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 2038
    const-string p3, "Received SSH_FXP_ATTRS for {}"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2040
    :cond_0
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpChannel;->getVersion()I

    move-result p2

    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpChannel;->getCharsetEncoding()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->of(Lcom/sshtools/common/util/ByteArrayReader;ILjava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->build()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object p1

    return-object p1

    .line 2041
    :cond_1
    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpMessage;->getType()I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_2

    .line 2042
    invoke-virtual {p0, p1, p2, p3}, Lcom/sshtools/client/sftp/SftpChannel;->processStatusResponse(Lcom/sshtools/client/sftp/SftpMessage;Ljava/lang/String;Lcom/sshtools/common/util/UnsignedInteger32;)V

    .line 2043
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Received unexpected SSH_FX_OK in status response!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2045
    :cond_2
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpChannel;->close()V

    .line 2046
    new-instance p1, Lcom/sshtools/common/ssh/SshException;

    const-string p2, "The server responded with an unexpected message."

    const/4 p3, 0x6

    invoke-direct {p1, p2, p3}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p1
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 2053
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {p2, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 2051
    invoke-virtual {p1}, Lcom/sshtools/common/ssh/SshIOException;->getRealException()Lcom/sshtools/common/ssh/SshException;

    move-result-object p1

    throw p1
.end method

.method extractFiles(Lcom/sshtools/client/sftp/SftpMessage;Ljava/lang/String;)[Lcom/sshtools/client/sftp/SftpFile;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 1414
    const-string v0, "/"

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1418
    :cond_0
    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpMessage;->readInt()J

    move-result-wide v0

    long-to-int v0, v0

    .line 1419
    new-array v1, v0, [Lcom/sshtools/client/sftp/SftpFile;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    .line 1425
    iget-object v4, p0, Lcom/sshtools/client/sftp/SftpChannel;->CHARSET_ENCODING:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/sshtools/client/sftp/SftpMessage;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1427
    iget v5, p0, Lcom/sshtools/client/sftp/SftpChannel;->version:I

    const/4 v6, 0x3

    if-gt v5, v6, :cond_1

    .line 1430
    iget-object v2, p0, Lcom/sshtools/client/sftp/SftpChannel;->CHARSET_ENCODING:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/sshtools/client/sftp/SftpMessage;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1433
    :cond_1
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpChannel;->getVersion()I

    move-result v5

    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpChannel;->getCharsetEncoding()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v5, v7}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->of(Lcom/sshtools/common/util/ByteArrayReader;ILjava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    move-result-object v5

    if-eqz v2, :cond_2

    .line 1436
    iget v7, p0, Lcom/sshtools/client/sftp/SftpChannel;->version:I
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-gt v7, v6, :cond_2

    .line 1438
    :try_start_1
    new-instance v6, Ljava/util/StringTokenizer;

    invoke-direct {v6, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 1439
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 1440
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 1441
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 1442
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 1444
    invoke-virtual {v5, v7}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->withUsername(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    .line 1445
    invoke-virtual {v5, v6}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->withGroup(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1453
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

    .line 1454
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

    .line 1461
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {p2, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 1459
    invoke-virtual {p1}, Lcom/sshtools/common/ssh/SshIOException;->getRealException()Lcom/sshtools/common/ssh/SshException;

    move-result-object p1

    throw p1
.end method

.method public getAbsolutePath(Lcom/sshtools/client/sftp/SftpFile;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 1038
    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpFile;->getFilename()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/client/sftp/SftpChannel;->getAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAbsolutePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 1307
    :try_start_0
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpChannel;->nextRequestId()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v0

    .line 1308
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpChannel;->createPacket()Lcom/sshtools/common/ssh/Packet;

    move-result-object v1

    const/16 v2, 0x10

    .line 1309
    invoke-virtual {v1, v2}, Lcom/sshtools/common/ssh/Packet;->write(I)V

    .line 1310
    invoke-virtual {v0}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sshtools/common/ssh/Packet;->writeInt(J)V

    .line 1311
    iget-object v2, p0, Lcom/sshtools/client/sftp/SftpChannel;->CHARSET_ENCODING:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/sshtools/common/ssh/Packet;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1314
    const-string v2, "Sending SSH_FXP_REALPATH for {}"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1317
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sshtools/client/sftp/SftpChannel;->sendMessage(Lcom/sshtools/common/ssh/Packet;)V

    .line 1319
    invoke-virtual {p0, v0}, Lcom/sshtools/client/sftp/SftpChannel;->getResponse(Lcom/sshtools/common/util/UnsignedInteger32;)Lcom/sshtools/client/sftp/SftpMessage;

    move-result-object v1

    const-string v2, "SSH_FXP_REALPATH"

    invoke-virtual {p0, v1, v2, p1, v0}, Lcom/sshtools/client/sftp/SftpChannel;->getSingleFileResponse(Lcom/sshtools/client/sftp/SftpMessage;Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/common/util/UnsignedInteger32;)Lcom/sshtools/client/sftp/SftpFile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1324
    new-instance v0, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {v0, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 1322
    invoke-virtual {p1}, Lcom/sshtools/common/ssh/SshIOException;->getRealException()Lcom/sshtools/common/ssh/SshException;

    move-result-object p1

    throw p1
.end method

.method public getAttributes(Lcom/sshtools/client/sftp/SftpFile;)Lcom/sshtools/common/sftp/SftpFileAttributes;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "3.1.0"
    .end annotation

    .line 2099
    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/client/sftp/SftpChannel;->getAttributes(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object p1

    return-object p1
.end method

.method public getAttributes(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    const/16 v0, 0x11

    .line 1920
    const-string v1, "SSH_FXP_STAT"

    invoke-virtual {p0, p1, v0, v1}, Lcom/sshtools/client/sftp/SftpChannel;->getAttributes(Ljava/lang/String;ILjava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object p1

    return-object p1
.end method

.method protected getAttributes(Ljava/lang/String;ILjava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 1940
    :try_start_0
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpChannel;->nextRequestId()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v0

    .line 1941
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpChannel;->createPacket()Lcom/sshtools/common/ssh/Packet;

    move-result-object v1

    .line 1942
    invoke-virtual {v1, p2}, Lcom/sshtools/common/ssh/Packet;->write(I)V

    .line 1943
    invoke-virtual {v0}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sshtools/common/ssh/Packet;->writeInt(J)V

    .line 1944
    iget-object p2, p0, Lcom/sshtools/client/sftp/SftpChannel;->CHARSET_ENCODING:Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Lcom/sshtools/common/ssh/Packet;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1946
    iget p2, p0, Lcom/sshtools/client/sftp/SftpChannel;->version:I

    const/4 v2, 0x3

    if-le p2, v2, :cond_1

    const/4 v2, 0x4

    if-le p2, v2, :cond_0

    const-wide/16 v2, 0x3fd

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x1fd

    .line 1961
    :goto_0
    invoke-virtual {v1, v2, v3}, Lcom/sshtools/common/ssh/Packet;->writeInt(J)V

    .line 1964
    :cond_1
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1965
    const-string p2, "Sending {} for {}"

    filled-new-array {p3, p1}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1970
    :cond_2
    invoke-virtual {p0, v1}, Lcom/sshtools/client/sftp/SftpChannel;->sendMessage(Lcom/sshtools/common/ssh/Packet;)V

    .line 1972
    invoke-virtual {p0, v0}, Lcom/sshtools/client/sftp/SftpChannel;->getResponse(Lcom/sshtools/common/util/UnsignedInteger32;)Lcom/sshtools/client/sftp/SftpMessage;

    move-result-object p2
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1974
    :try_start_1
    invoke-virtual {p0, p2, p1, v0}, Lcom/sshtools/client/sftp/SftpChannel;->extractAttributes(Lcom/sshtools/client/sftp/SftpMessage;Ljava/lang/String;Lcom/sshtools/common/util/UnsignedInteger32;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1976
    :try_start_2
    invoke-virtual {p2}, Lcom/sshtools/client/sftp/SftpMessage;->release()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Lcom/sshtools/client/sftp/SftpMessage;->release()V

    .line 1977
    throw p1
    :try_end_2
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 1981
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {p2, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 1979
    invoke-virtual {p1}, Lcom/sshtools/common/ssh/SshIOException;->getRealException()Lcom/sshtools/common/ssh/SshException;

    move-result-object p1

    throw p1
.end method

.method protected getAttributes([B)Lcom/sshtools/common/sftp/SftpFileAttributes;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    const-string v0, "handle:"

    .line 1988
    :try_start_0
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpChannel;->nextRequestId()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v1

    .line 1989
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpChannel;->createPacket()Lcom/sshtools/common/ssh/Packet;

    move-result-object v2

    const/16 v3, 0x8

    .line 1990
    invoke-virtual {v2, v3}, Lcom/sshtools/common/ssh/Packet;->write(I)V

    .line 1991
    invoke-virtual {v1}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/sshtools/common/ssh/Packet;->writeInt(J)V

    .line 1992
    invoke-virtual {v2, p1}, Lcom/sshtools/common/ssh/Packet;->writeBinaryString([B)V

    .line 1994
    iget v3, p0, Lcom/sshtools/client/sftp/SftpChannel;->version:I

    const/4 v4, 0x3

    if-le v3, v4, :cond_1

    const/4 v4, 0x4

    if-le v3, v4, :cond_0

    const-wide/16 v3, 0x3fd

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x1fd

    .line 2009
    :goto_0
    invoke-virtual {v2, v3, v4}, Lcom/sshtools/common/ssh/Packet;->writeInt(J)V

    :cond_1
    const/4 v3, 0x1

    .line 2012
    invoke-static {p1, v3}, Lcom/sshtools/common/util/Base64;->encodeBytes([BZ)Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2013
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2014
    const-string v0, "Sending SSH_SXP_FSTAT for {}"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2018
    :cond_2
    invoke-virtual {p0, v2}, Lcom/sshtools/client/sftp/SftpChannel;->sendMessage(Lcom/sshtools/common/ssh/Packet;)V

    .line 2020
    invoke-virtual {p0, v1}, Lcom/sshtools/client/sftp/SftpChannel;->getResponse(Lcom/sshtools/common/util/UnsignedInteger32;)Lcom/sshtools/client/sftp/SftpMessage;

    move-result-object v0
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2022
    :try_start_1
    invoke-virtual {p0, v0, p1, v1}, Lcom/sshtools/client/sftp/SftpChannel;->extractAttributes(Lcom/sshtools/client/sftp/SftpMessage;Ljava/lang/String;Lcom/sshtools/common/util/UnsignedInteger32;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2024
    :try_start_2
    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpMessage;->release()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpMessage;->release()V

    .line 2025
    throw p1
    :try_end_2
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 2029
    new-instance v0, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {v0, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 2027
    invoke-virtual {p1}, Lcom/sshtools/common/ssh/SshIOException;->getRealException()Lcom/sshtools/common/ssh/SshException;

    move-result-object p1

    throw p1
.end method

.method getBestHandle([B)Lcom/sshtools/client/sftp/SftpHandle;
    .locals 2

    .line 1757
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpChannel;->handles:Ljava/util/Map;

    monitor-enter v0

    .line 1758
    :try_start_0
    iget-object v1, p0, Lcom/sshtools/client/sftp/SftpChannel;->handles:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/client/sftp/SftpHandle;

    if-eqz v1, :cond_0

    .line 1760
    monitor-exit v0

    return-object v1

    .line 1762
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1763
    new-instance v0, Lcom/sshtools/client/sftp/SftpHandle;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/sshtools/client/sftp/SftpHandle;-><init>([BLcom/sshtools/client/sftp/SftpChannel;Lcom/sshtools/client/sftp/SftpFile;)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 1762
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getCanonicalNewline()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;
        }
    .end annotation

    .line 345
    iget v0, p0, Lcom/sshtools/client/sftp/SftpChannel;->version:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    .line 352
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpChannel;->extensions:Ljava/util/Map;

    const-string v1, "newline"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    const-string v0, "\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpChannel;->extensions:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0

    .line 346
    :cond_1
    new-instance v0, Lcom/sshtools/common/sftp/SftpStatusException;

    const/16 v1, 0x8

    const-string v2, "Newline setting not available for SFTP versions <= 3"

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/sftp/SftpStatusException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public getCharsetEncoding()Ljava/lang/String;
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpChannel;->CHARSET_ENCODING:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Lcom/sshtools/client/SshClientContext;
    .locals 1

    .line 2343
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpChannel;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-interface {v0}, Lcom/sshtools/common/ssh/SshConnection;->getContext()Lcom/sshtools/common/ssh/Context;

    move-result-object v0

    check-cast v0, Lcom/sshtools/client/SshClientContext;

    return-object v0
.end method

.method public getDefaultDirectory()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 1294
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/sshtools/client/sftp/SftpChannel;->getAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtendedReply(Lcom/sshtools/client/sftp/SftpMessage;Ljava/lang/String;Lcom/sshtools/common/util/UnsignedInteger32;)Lcom/sshtools/client/sftp/SftpMessage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 2164
    :try_start_0
    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpMessage;->getType()I

    move-result v0

    const/16 v1, 0xc9

    if-ne v0, v1, :cond_1

    .line 2165
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2166
    const-string p2, "Received SSH_FX_EXTENDED_REPLY"

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p2, p3}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-object p1

    .line 2169
    :cond_1
    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpMessage;->getType()I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_2

    .line 2170
    invoke-virtual {p0, p1, p2, p3}, Lcom/sshtools/client/sftp/SftpChannel;->processStatusResponse(Lcom/sshtools/client/sftp/SftpMessage;Ljava/lang/String;Lcom/sshtools/common/util/UnsignedInteger32;)V

    .line 2171
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Received unexpected SSH_FX_OK in status response!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2173
    :cond_2
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpChannel;->close()V

    .line 2174
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    const-string p3, "The server responded with an unexpected message! id=%d"

    .line 2175
    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpMessage;->getType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x6

    invoke-direct {p2, p1, p3}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p2
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 2181
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {p2, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 2179
    invoke-virtual {p1}, Lcom/sshtools/common/ssh/SshIOException;->getRealException()Lcom/sshtools/common/ssh/SshException;

    move-result-object p1

    throw p1
.end method

.method public getExtendedReply(Lcom/sshtools/common/util/UnsignedInteger32;Ljava/lang/String;)Lcom/sshtools/client/sftp/SftpMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 2159
    invoke-virtual {p0, p1}, Lcom/sshtools/client/sftp/SftpChannel;->getResponse(Lcom/sshtools/common/util/UnsignedInteger32;)Lcom/sshtools/client/sftp/SftpMessage;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p1}, Lcom/sshtools/client/sftp/SftpChannel;->getExtendedReply(Lcom/sshtools/client/sftp/SftpMessage;Ljava/lang/String;Lcom/sshtools/common/util/UnsignedInteger32;)Lcom/sshtools/client/sftp/SftpMessage;

    move-result-object p1

    return-object p1
.end method

.method public getExtension(Ljava/lang/String;)[B
    .locals 1

    .line 519
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpChannel;->extensions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method getExtensionResponse(Lcom/sshtools/common/util/UnsignedInteger32;Ljava/lang/String;)Lcom/sshtools/client/sftp/SftpMessage;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 2225
    invoke-virtual {p0, p1}, Lcom/sshtools/client/sftp/SftpChannel;->getResponse(Lcom/sshtools/common/util/UnsignedInteger32;)Lcom/sshtools/client/sftp/SftpMessage;

    move-result-object v0

    .line 2227
    :try_start_0
    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpMessage;->getType()I

    move-result v1

    const/16 v2, 0xc9

    if-ne v1, v2, :cond_1

    .line 2228
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2229
    const-string p1, "Received SSH_FXP_EXTENDED_REPLY"

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2246
    :cond_0
    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpMessage;->release()V

    return-object v0

    .line 2232
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpMessage;->getType()I

    move-result v1

    const/16 v2, 0x65

    if-ne v1, v2, :cond_2

    .line 2233
    invoke-virtual {p0, v0, p2, p1}, Lcom/sshtools/client/sftp/SftpChannel;->processStatusResponse(Lcom/sshtools/client/sftp/SftpMessage;Ljava/lang/String;Lcom/sshtools/common/util/UnsignedInteger32;)V

    .line 2234
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Received unexpected SSH_FX_OK in status response!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2236
    :cond_2
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpChannel;->close()V

    .line 2237
    new-instance p1, Lcom/sshtools/common/ssh/SshException;

    const-string p2, "The server responded with an unexpected message!"

    const/4 v1, 0x6

    invoke-direct {p1, p2, v1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p1
    :try_end_1
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2244
    :try_start_2
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {p2, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 2242
    invoke-virtual {p1}, Lcom/sshtools/common/ssh/SshIOException;->getRealException()Lcom/sshtools/common/ssh/SshException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2246
    :goto_0
    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpMessage;->release()V

    .line 2247
    throw p1
.end method

.method public getExtensions()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpChannel;->con:Lcom/sshtools/common/ssh/SshConnection;

    const-string v1, "sftpExtensions"

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/SshConnection;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public getFile(Ljava/lang/String;)Lcom/sshtools/client/sftp/SftpFile;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 1025
    invoke-virtual {p0, p1}, Lcom/sshtools/client/sftp/SftpChannel;->getAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1026
    new-instance v0, Lcom/sshtools/client/sftp/SftpFile;

    invoke-virtual {p0, p1}, Lcom/sshtools/client/sftp/SftpChannel;->getAttributes(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/sshtools/client/sftp/SftpFile;-><init>(Ljava/lang/String;Lcom/sshtools/common/sftp/SftpFileAttributes;Ljava/lang/String;)V

    return-object v0
.end method

.method getHandle(Lcom/sshtools/client/sftp/SftpMessage;Lcom/sshtools/client/sftp/SftpFile;Lcom/sshtools/common/util/UnsignedInteger32;)Lcom/sshtools/client/sftp/SftpHandle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 2154
    invoke-virtual {p0, p1, p2, p3}, Lcom/sshtools/client/sftp/SftpChannel;->getHandleResponse(Lcom/sshtools/client/sftp/SftpMessage;Lcom/sshtools/client/sftp/SftpFile;Lcom/sshtools/common/util/UnsignedInteger32;)[B

    move-result-object p1

    .line 2155
    new-instance p3, Lcom/sshtools/client/sftp/SftpHandle;

    invoke-direct {p3, p1, p0, p2}, Lcom/sshtools/client/sftp/SftpHandle;-><init>([BLcom/sshtools/client/sftp/SftpChannel;Lcom/sshtools/client/sftp/SftpFile;)V

    return-object p3
.end method

.method public getHandle(Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/client/sftp/SftpFile;)Lcom/sshtools/client/sftp/SftpHandle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 2192
    new-instance v0, Lcom/sshtools/client/sftp/SftpHandle;

    invoke-virtual {p0, p1}, Lcom/sshtools/client/sftp/SftpChannel;->getResponse(Lcom/sshtools/common/util/UnsignedInteger32;)Lcom/sshtools/client/sftp/SftpMessage;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p1}, Lcom/sshtools/client/sftp/SftpChannel;->getHandleResponse(Lcom/sshtools/client/sftp/SftpMessage;Lcom/sshtools/client/sftp/SftpFile;Lcom/sshtools/common/util/UnsignedInteger32;)[B

    move-result-object p1

    invoke-direct {v0, p1, p0, p2}, Lcom/sshtools/client/sftp/SftpHandle;-><init>([BLcom/sshtools/client/sftp/SftpChannel;Lcom/sshtools/client/sftp/SftpFile;)V

    return-object v0
.end method

.method public getHandleResponse(Lcom/sshtools/client/sftp/SftpMessage;Lcom/sshtools/client/sftp/SftpFile;Lcom/sshtools/common/util/UnsignedInteger32;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 2199
    :try_start_0
    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpMessage;->getType()I

    move-result v0

    const/16 v1, 0x66

    if-ne v0, v1, :cond_1

    .line 2200
    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpMessage;->readBinaryString()[B

    move-result-object p1

    .line 2201
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 2202
    const-string p3, "Received SSH_FXP_HANDLE for {} handle={}"

    invoke-virtual {p2}, Lcom/sshtools/client/sftp/SftpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/sshtools/common/util/Base64;->encodeBytes([BZ)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2204
    :cond_0
    iget-object p3, p0, Lcom/sshtools/client/sftp/SftpChannel;->handles:Ljava/util/Map;

    new-instance v0, Lcom/sshtools/client/sftp/SftpHandle;

    invoke-direct {v0, p1, p0, p2}, Lcom/sshtools/client/sftp/SftpHandle;-><init>([BLcom/sshtools/client/sftp/SftpChannel;Lcom/sshtools/client/sftp/SftpFile;)V

    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    .line 2206
    :cond_1
    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpMessage;->getType()I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_2

    .line 2207
    invoke-virtual {p2}, Lcom/sshtools/client/sftp/SftpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/sshtools/client/sftp/SftpChannel;->processStatusResponse(Lcom/sshtools/client/sftp/SftpMessage;Ljava/lang/String;Lcom/sshtools/common/util/UnsignedInteger32;)V

    .line 2208
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Received unexpected SSH_FX_OK in status response!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2210
    :cond_2
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpChannel;->close()V

    .line 2211
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    const-string p3, "The server responded with an unexpected message! id=%d"

    .line 2212
    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpMessage;->getType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x6

    invoke-direct {p2, p1, p3}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p2
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 2218
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {p2, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 2216
    invoke-virtual {p1}, Lcom/sshtools/common/ssh/SshIOException;->getRealException()Lcom/sshtools/common/ssh/SshException;

    move-result-object p1

    throw p1
.end method

.method public getLinkAttributes(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    const/4 v0, 0x7

    .line 1934
    const-string v1, "SSH_FXP_LSTAT"

    invoke-virtual {p0, p1, v0, v1}, Lcom/sshtools/client/sftp/SftpChannel;->getAttributes(Ljava/lang/String;ILjava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object p1

    return-object p1
.end method

.method public getMaximumLocalPacketLength()I
    .locals 1

    .line 2331
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpChannel;->getMaximumPacketSize()I

    move-result v0

    return v0
.end method

.method public getMaximumLocalWindowSize()Lcom/sshtools/common/util/UnsignedInteger32;
    .locals 1

    .line 2327
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpChannel;->getMaximumWindowSize()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v0

    return-object v0
.end method

.method protected getMaximumPacketSize()I
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpChannel;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-interface {v0}, Lcom/sshtools/common/ssh/SshConnection;->getContext()Lcom/sshtools/common/ssh/Context;

    move-result-object v0

    const-class v1, Lcom/sshtools/common/policy/FileSystemPolicy;

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/Context;->getPolicy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/policy/FileSystemPolicy;

    invoke-virtual {v0}, Lcom/sshtools/common/policy/FileSystemPolicy;->getSftpMaxPacketSize()I

    move-result v0

    return v0
.end method

.method public getMaximumRemotePacketLength()I
    .locals 1

    .line 2339
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpChannel;->session:Lcom/sshtools/client/SessionChannelNG;

    invoke-virtual {v0}, Lcom/sshtools/client/SessionChannelNG;->getMaxiumRemotePacketSize()I

    move-result v0

    return v0
.end method

.method public getMaximumRemoteWindowSize()Lcom/sshtools/common/util/UnsignedInteger32;
    .locals 1

    .line 2335
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpChannel;->session:Lcom/sshtools/client/SessionChannelNG;

    invoke-virtual {v0}, Lcom/sshtools/client/SessionChannelNG;->getMaxiumRemoteWindowSize()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v0

    return-object v0
.end method

.method protected getMaximumWindowSize()Lcom/sshtools/common/util/UnsignedInteger32;
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpChannel;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-interface {v0}, Lcom/sshtools/common/ssh/SshConnection;->getContext()Lcom/sshtools/common/ssh/Context;

    move-result-object v0

    const-class v1, Lcom/sshtools/common/policy/FileSystemPolicy;

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/Context;->getPolicy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/policy/FileSystemPolicy;

    invoke-virtual {v0}, Lcom/sshtools/common/policy/FileSystemPolicy;->getSftpMaxWindowSize()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v0

    return-object v0
.end method

.method protected getMinimumWindowSize()Lcom/sshtools/common/util/UnsignedInteger32;
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpChannel;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-interface {v0}, Lcom/sshtools/common/ssh/SshConnection;->getContext()Lcom/sshtools/common/ssh/Context;

    move-result-object v0

    const-class v1, Lcom/sshtools/common/policy/FileSystemPolicy;

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/Context;->getPolicy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/policy/FileSystemPolicy;

    invoke-virtual {v0}, Lcom/sshtools/common/policy/FileSystemPolicy;->getSftpMinWindowSize()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v0

    return-object v0
.end method

.method public getOKRequestStatus(Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/client/sftp/SftpFile;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 666
    invoke-virtual {p2}, Lcom/sshtools/client/sftp/SftpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sshtools/client/sftp/SftpChannel;->getOKRequestStatus(Lcom/sshtools/common/util/UnsignedInteger32;Ljava/lang/String;)V

    return-void
.end method

.method public getOKRequestStatus(Lcom/sshtools/common/util/UnsignedInteger32;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 679
    invoke-virtual {p0, p1}, Lcom/sshtools/client/sftp/SftpChannel;->getResponse(Lcom/sshtools/common/util/UnsignedInteger32;)Lcom/sshtools/client/sftp/SftpMessage;

    move-result-object v0

    .line 681
    :try_start_0
    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpMessage;->getType()I

    move-result v1

    const/16 v2, 0x65

    if-ne v1, v2, :cond_0

    .line 682
    invoke-virtual {p0, v0, p2, p1}, Lcom/sshtools/client/sftp/SftpChannel;->processStatusResponse(Lcom/sshtools/client/sftp/SftpMessage;Ljava/lang/String;Lcom/sshtools/common/util/UnsignedInteger32;)V
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 694
    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpMessage;->release()V

    return-void

    .line 685
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpChannel;->close()V

    .line 686
    new-instance p1, Lcom/sshtools/common/ssh/SshException;

    const-string p2, "The server responded with an unexpected message!"

    const/4 v1, 0x6

    invoke-direct {p1, p2, v1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p1
    :try_end_1
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 692
    :try_start_2
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {p2, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 690
    invoke-virtual {p1}, Lcom/sshtools/common/ssh/SshIOException;->getRealException()Lcom/sshtools/common/ssh/SshException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 694
    :goto_0
    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpMessage;->release()V

    .line 695
    throw p1
.end method

.method public getResponse(Lcom/sshtools/common/util/UnsignedInteger32;)Lcom/sshtools/client/sftp/SftpMessage;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 535
    new-instance v0, Lcom/sshtools/client/tasks/MessageHolder;

    invoke-direct {v0}, Lcom/sshtools/client/tasks/MessageHolder;-><init>()V

    .line 536
    iget-object v1, p0, Lcom/sshtools/client/sftp/SftpChannel;->responses:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/client/tasks/Message;

    iput-object v1, v0, Lcom/sshtools/client/tasks/MessageHolder;->msg:Lcom/sshtools/client/tasks/Message;

    .line 537
    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/sshtools/client/tasks/MessageHolder;->msg:Lcom/sshtools/client/tasks/Message;

    if-nez v1, :cond_2

    .line 540
    :try_start_0
    iget-object v1, p0, Lcom/sshtools/client/sftp/SftpChannel;->sync:Lcom/sshtools/client/sftp/SftpChannel$SftpThreadSynchronizer;

    invoke-virtual {v1, p1, v0}, Lcom/sshtools/client/sftp/SftpChannel$SftpThreadSynchronizer;->requestBlock(Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/client/tasks/MessageHolder;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 542
    :try_start_1
    new-instance v1, Lcom/sshtools/client/sftp/SftpMessage;

    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpChannel;->nextMessage()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sshtools/client/sftp/SftpMessage;-><init>([B)V

    .line 543
    iget-object v2, p0, Lcom/sshtools/client/sftp/SftpChannel;->responses:Ljava/util/Map;

    new-instance v3, Lcom/sshtools/common/util/UnsignedInteger32;

    invoke-virtual {v1}, Lcom/sshtools/client/sftp/SftpMessage;->getMessageId()I

    move-result v4

    int-to-long v4, v4

    invoke-direct {v3, v4, v5}, Lcom/sshtools/common/util/UnsignedInteger32;-><init>(J)V

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 545
    iget-object v1, p0, Lcom/sshtools/client/sftp/SftpChannel;->responses:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There are "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " SFTP responses waiting to be processed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 548
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/sshtools/client/sftp/SftpChannel;->sync:Lcom/sshtools/client/sftp/SftpChannel$SftpThreadSynchronizer;

    invoke-virtual {v1}, Lcom/sshtools/client/sftp/SftpChannel$SftpThreadSynchronizer;->releaseBlock()V

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpChannel;->sync:Lcom/sshtools/client/sftp/SftpChannel$SftpThreadSynchronizer;

    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpChannel$SftpThreadSynchronizer;->releaseBlock()V

    .line 549
    throw p1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 556
    new-instance v0, Lcom/sshtools/common/ssh/SshException;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(ILjava/lang/Throwable;)V

    throw v0

    .line 552
    :catch_1
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpChannel;->close()V

    .line 553
    new-instance p1, Lcom/sshtools/common/ssh/SshException;

    const-string v0, "The thread was interrupted"

    const/4 v1, 0x6

    invoke-direct {p1, v0, v1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 560
    :cond_2
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpChannel;->responses:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sshtools/client/sftp/SftpMessage;

    return-object p1
.end method

.method public getServerVersion()I
    .locals 1

    .line 485
    iget v0, p0, Lcom/sshtools/client/sftp/SftpChannel;->serverVersion:I

    return v0
.end method

.method public getSession()Lcom/sshtools/client/SessionChannelNG;
    .locals 1

    .line 231
    invoke-super {p0}, Lcom/sshtools/client/tasks/AbstractSubsystem;->getSession()Lcom/sshtools/client/SessionChannelNG;

    move-result-object v0

    return-object v0
.end method

.method public getSingleFileResponse(Lcom/sshtools/client/sftp/SftpMessage;Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/common/util/UnsignedInteger32;)Lcom/sshtools/client/sftp/SftpFile;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/common/sftp/SftpStatusException;
        }
    .end annotation

    const-string v0, "Server responded to "

    .line 1339
    :try_start_0
    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpMessage;->getType()I

    move-result v1

    const/16 v2, 0x68

    const/4 v3, 0x6

    if-ne v1, v2, :cond_2

    const/4 p3, 0x0

    .line 1340
    invoke-virtual {p0, p1, p3}, Lcom/sshtools/client/sftp/SftpChannel;->extractFiles(Lcom/sshtools/client/sftp/SftpMessage;Ljava/lang/String;)[Lcom/sshtools/client/sftp/SftpFile;

    move-result-object p1

    .line 1342
    array-length p3, p1

    const/4 p4, 0x1

    if-ne p3, p4, :cond_1

    .line 1350
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 1351
    const-string p2, "Received SSH_FXP_NAME with value {}"

    aget-object p4, p1, p3

    invoke-virtual {p4}, Lcom/sshtools/client/sftp/SftpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object p4

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    invoke-static {p2, p4}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1353
    :cond_0
    aget-object p1, p1, p3

    return-object p1

    .line 1343
    :cond_1
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpChannel;->close()V

    .line 1344
    new-instance p1, Lcom/sshtools/common/ssh/SshException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " with too many files!"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v3}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 1354
    :cond_2
    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpMessage;->getType()I

    move-result p2

    const/16 v0, 0x65

    if-ne p2, v0, :cond_3

    .line 1355
    invoke-virtual {p0, p1, p3, p4}, Lcom/sshtools/client/sftp/SftpChannel;->processStatusResponse(Lcom/sshtools/client/sftp/SftpMessage;Ljava/lang/String;Lcom/sshtools/common/util/UnsignedInteger32;)V

    .line 1356
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Received unexpected SSH_FX_OK in status response!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1358
    :cond_3
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpChannel;->close()V

    .line 1359
    new-instance p1, Lcom/sshtools/common/ssh/SshException;

    const-string p2, "The server responded with an unexpected message"

    invoke-direct {p1, p2, v3}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 1364
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {p2, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getSymbolicLinkTarget(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 1246
    iget v0, p0, Lcom/sshtools/client/sftp/SftpChannel;->version:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 1254
    :try_start_0
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpChannel;->nextRequestId()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v0

    .line 1255
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpChannel;->createPacket()Lcom/sshtools/common/ssh/Packet;

    move-result-object v1

    const/16 v2, 0x13

    .line 1256
    invoke-virtual {v1, v2}, Lcom/sshtools/common/ssh/Packet;->write(I)V

    .line 1257
    invoke-virtual {v0}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sshtools/common/ssh/Packet;->writeInt(J)V

    .line 1258
    iget-object v2, p0, Lcom/sshtools/client/sftp/SftpChannel;->CHARSET_ENCODING:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/sshtools/common/ssh/Packet;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1261
    const-string v2, "Sending SSH_FXP_READLINK for {} requestId={}"

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1264
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sshtools/client/sftp/SftpChannel;->sendMessage(Lcom/sshtools/common/ssh/Packet;)V

    .line 1266
    invoke-virtual {p0, v0}, Lcom/sshtools/client/sftp/SftpChannel;->getResponse(Lcom/sshtools/common/util/UnsignedInteger32;)Lcom/sshtools/client/sftp/SftpMessage;

    move-result-object v1

    .line 1267
    invoke-virtual {v1}, Lcom/sshtools/client/sftp/SftpMessage;->getType()I

    move-result v2
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x65

    if-eq v2, v3, :cond_1

    const/4 p1, 0x0

    .line 1272
    :try_start_1
    invoke-virtual {p0, v1, p1}, Lcom/sshtools/client/sftp/SftpChannel;->extractFiles(Lcom/sshtools/client/sftp/SftpMessage;Ljava/lang/String;)[Lcom/sshtools/client/sftp/SftpFile;

    move-result-object p1

    const/4 v0, 0x0

    .line 1273
    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1275
    :try_start_2
    invoke-virtual {v1}, Lcom/sshtools/client/sftp/SftpMessage;->release()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Lcom/sshtools/client/sftp/SftpMessage;->release()V

    .line 1276
    throw p1

    .line 1268
    :cond_1
    invoke-virtual {p0, v1, p1, v0}, Lcom/sshtools/client/sftp/SftpChannel;->processStatusResponse(Lcom/sshtools/client/sftp/SftpMessage;Ljava/lang/String;Lcom/sshtools/common/util/UnsignedInteger32;)V

    .line 1269
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Received unexpected SSH_FX_OK in status response!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 1281
    new-instance v0, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {v0, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 1279
    invoke-virtual {p1}, Lcom/sshtools/common/ssh/SshIOException;->getRealException()Lcom/sshtools/common/ssh/SshException;

    move-result-object p1

    throw p1

    .line 1247
    :cond_2
    new-instance p1, Lcom/sshtools/common/sftp/SftpStatusException;

    iget v0, p0, Lcom/sshtools/client/sftp/SftpChannel;->version:I

    .line 1250
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Symbolic links are not supported by the server SFTP version "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    invoke-direct {p1, v1, v0}, Lcom/sshtools/common/sftp/SftpStatusException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public getVersion()I
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpChannel;->con:Lcom/sshtools/common/ssh/SshConnection;

    const-string v1, "sftpVersion"

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/SshConnection;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .line 2323
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpChannel;->getSession()Lcom/sshtools/client/SessionChannelNG;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/client/SessionChannelNG;->isClosed()Z

    move-result v0

    return v0
.end method

.method public listChildren(Lcom/sshtools/client/sftp/SftpFile;Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/client/sftp/SftpFile;",
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

    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "3.1.0"
    .end annotation

    .line 1402
    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpFile;->attributes()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1403
    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/client/sftp/SftpChannel;->openDirectory(Ljava/lang/String;)Lcom/sshtools/client/sftp/SftpHandle;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sshtools/client/sftp/SftpHandle;->listChildren(Ljava/util/List;)I

    move-result p1

    return p1

    .line 1405
    :cond_0
    new-instance p1, Lcom/sshtools/common/ssh/SshException;

    const-string p2, "Cannot list children for this file object"

    const/4 v0, 0x4

    invoke-direct {p1, p2, v0}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public lockFile([BJJI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "3.1.0"
    .end annotation

    .line 1056
    iget v0, p0, Lcom/sshtools/client/sftp/SftpChannel;->version:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_1

    .line 1063
    invoke-virtual {p0, p1}, Lcom/sshtools/client/sftp/SftpChannel;->getBestHandle([B)Lcom/sshtools/client/sftp/SftpHandle;

    move-result-object v0

    .line 1066
    :try_start_0
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpChannel;->nextRequestId()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v1

    .line 1067
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpChannel;->createPacket()Lcom/sshtools/common/ssh/Packet;

    move-result-object v2

    const/16 v3, 0x16

    .line 1068
    invoke-virtual {v2, v3}, Lcom/sshtools/common/ssh/Packet;->write(I)V

    .line 1069
    invoke-virtual {v1}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/sshtools/common/ssh/Packet;->writeInt(J)V

    .line 1070
    invoke-virtual {v2, p1}, Lcom/sshtools/common/ssh/Packet;->writeBinaryString([B)V

    .line 1071
    invoke-virtual {v2, p2, p3}, Lcom/sshtools/common/ssh/Packet;->writeUINT64(J)V

    .line 1072
    invoke-virtual {v2, p4, p5}, Lcom/sshtools/common/ssh/Packet;->writeUINT64(J)V

    .line 1073
    invoke-virtual {v2, p6}, Lcom/sshtools/common/ssh/Packet;->writeInt(I)V

    .line 1075
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1076
    const-string p1, "Sending SSH_FXP_BLOCK for {}"

    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpHandle;->getFile()Lcom/sshtools/client/sftp/SftpFile;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sshtools/client/sftp/SftpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1078
    :cond_0
    invoke-virtual {p0, v2}, Lcom/sshtools/client/sftp/SftpChannel;->sendMessage(Lcom/sshtools/common/ssh/Packet;)V

    .line 1080
    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpHandle;->getFile()Lcom/sshtools/client/sftp/SftpFile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/sshtools/client/sftp/SftpChannel;->getOKRequestStatus(Lcom/sshtools/common/util/UnsignedInteger32;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1084
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {p2, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 1082
    invoke-virtual {p1}, Lcom/sshtools/common/ssh/SshIOException;->getRealException()Lcom/sshtools/common/ssh/SshException;

    move-result-object p1

    throw p1

    .line 1057
    :cond_1
    new-instance p1, Lcom/sshtools/common/sftp/SftpStatusException;

    iget p2, p0, Lcom/sshtools/client/sftp/SftpChannel;->version:I

    .line 1060
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

.method public makeDirectory(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 2114
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpChannel;->getCharsetEncoding()Ljava/lang/String;

    move-result-object v1

    .line 2112
    invoke-static {v0, v1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->ofType(ILjava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    move-result-object v0

    .line 2114
    invoke-virtual {v0}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->build()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v0

    .line 2112
    invoke-virtual {p0, p1, v0}, Lcom/sshtools/client/sftp/SftpChannel;->makeDirectory(Ljava/lang/String;Lcom/sshtools/common/sftp/SftpFileAttributes;)V

    return-void
.end method

.method public makeDirectory(Ljava/lang/String;Lcom/sshtools/common/sftp/SftpFileAttributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 2129
    :try_start_0
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpChannel;->nextRequestId()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v0

    .line 2131
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpChannel;->createPacket()Lcom/sshtools/common/ssh/Packet;

    move-result-object v1

    const/16 v2, 0xe

    .line 2132
    invoke-virtual {v1, v2}, Lcom/sshtools/common/ssh/Packet;->write(I)V

    .line 2133
    invoke-virtual {v0}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sshtools/common/ssh/Packet;->writeInt(J)V

    .line 2134
    iget-object v2, p0, Lcom/sshtools/client/sftp/SftpChannel;->CHARSET_ENCODING:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/sshtools/common/ssh/Packet;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2135
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpChannel;->getVersion()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/sshtools/common/sftp/SftpFileAttributes;->toByteArray(I)[B

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/sshtools/common/ssh/Packet;->write([B)V

    .line 2137
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2138
    const-string p2, "Sending SSH_FXP_MKDIR for {}"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2142
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sshtools/client/sftp/SftpChannel;->sendMessage(Lcom/sshtools/common/ssh/Packet;)V

    .line 2144
    invoke-virtual {p0, v0, p1}, Lcom/sshtools/client/sftp/SftpChannel;->getOKRequestStatus(Lcom/sshtools/common/util/UnsignedInteger32;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2148
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {p2, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 2146
    invoke-virtual {p1}, Lcom/sshtools/common/ssh/SshIOException;->getRealException()Lcom/sshtools/common/ssh/SshException;

    move-result-object p1

    throw p1
.end method

.method nextRequestId()Lcom/sshtools/common/util/UnsignedInteger32;
    .locals 3

    .line 523
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpChannel;->nextRequestId:Lcom/sshtools/common/util/UnsignedInteger32;

    const-wide/16 v1, 0x1

    invoke-static {v0, v1, v2}, Lcom/sshtools/common/util/UnsignedInteger32;->add(Lcom/sshtools/common/util/UnsignedInteger32;J)Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/sftp/SftpChannel;->nextRequestId:Lcom/sshtools/common/util/UnsignedInteger32;

    return-object v0
.end method

.method public openDirectory(Ljava/lang/String;)Lcom/sshtools/client/sftp/SftpHandle;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 1706
    invoke-virtual {p0, p1}, Lcom/sshtools/client/sftp/SftpChannel;->getAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1708
    invoke-virtual {p0, v0}, Lcom/sshtools/client/sftp/SftpChannel;->getAttributes(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v1

    .line 1710
    invoke-virtual {v1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1716
    :try_start_0
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpChannel;->nextRequestId()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v2

    .line 1717
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpChannel;->createPacket()Lcom/sshtools/common/ssh/Packet;

    move-result-object v3

    const/16 v4, 0xb

    .line 1718
    invoke-virtual {v3, v4}, Lcom/sshtools/common/ssh/Packet;->write(I)V

    .line 1719
    invoke-virtual {v2}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sshtools/common/ssh/Packet;->writeInt(J)V

    .line 1720
    iget-object v4, p0, Lcom/sshtools/client/sftp/SftpChannel;->CHARSET_ENCODING:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lcom/sshtools/common/ssh/Packet;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1722
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1723
    const-string v0, "Sending SSH_FXP_OPENDIR for {}"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1726
    :cond_0
    invoke-virtual {p0, v3}, Lcom/sshtools/client/sftp/SftpChannel;->sendMessage(Lcom/sshtools/common/ssh/Packet;)V

    .line 1728
    new-instance v0, Lcom/sshtools/client/sftp/SftpFile;

    const-string v3, ""

    invoke-direct {v0, p1, v1, v3}, Lcom/sshtools/client/sftp/SftpFile;-><init>(Ljava/lang/String;Lcom/sshtools/common/sftp/SftpFileAttributes;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v0}, Lcom/sshtools/client/sftp/SftpChannel;->getHandle(Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/client/sftp/SftpFile;)Lcom/sshtools/client/sftp/SftpHandle;

    move-result-object p1
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1732
    new-instance v0, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {v0, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 1730
    invoke-virtual {p1}, Lcom/sshtools/common/ssh/SshIOException;->getRealException()Lcom/sshtools/common/ssh/SshException;

    move-result-object p1

    throw p1

    .line 1711
    :cond_1
    new-instance v0, Lcom/sshtools/common/sftp/SftpStatusException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is not a directory"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1}, Lcom/sshtools/common/sftp/SftpStatusException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public openFile(Ljava/lang/String;I)Lcom/sshtools/client/sftp/SftpHandle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 1520
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpChannel;->getCharsetEncoding()Ljava/lang/String;

    move-result-object v1

    .line 1518
    invoke-static {v0, v1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->ofType(ILjava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    move-result-object v0

    .line 1520
    invoke-virtual {v0}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->build()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v0

    .line 1518
    invoke-virtual {p0, p1, p2, v0}, Lcom/sshtools/client/sftp/SftpChannel;->openFile(Ljava/lang/String;ILcom/sshtools/common/sftp/SftpFileAttributes;)Lcom/sshtools/client/sftp/SftpHandle;

    move-result-object p1

    return-object p1
.end method

.method public openFile(Ljava/lang/String;ILcom/sshtools/common/sftp/SftpFileAttributes;)Lcom/sshtools/client/sftp/SftpHandle;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 1536
    iget v0, p0, Lcom/sshtools/client/sftp/SftpChannel;->version:I

    const/4 v1, 0x1

    const/4 v2, 0x5

    if-lt v0, v2, :cond_c

    .line 1538
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1539
    const-string v0, "Converting openFile request to version 5+ format"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-ne v0, v1, :cond_2

    .line 1547
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1548
    const-string v0, "OPEN_READ present, adding ACE4_READ_DATA, ACE4_READ_ATTRIBUTES"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/16 v0, 0x81

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    and-int/lit8 v1, p2, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    or-int/lit16 v0, v0, 0x102

    .line 1554
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1555
    const-string v1, "OPEN_WRITE present, adding ACE4_WRITE_DATA, ACE4_WRITE_ATTRIBUTES "

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    and-int/lit8 v1, p2, 0x4

    const/16 v3, 0x8

    const/4 v4, 0x4

    if-ne v1, v4, :cond_5

    or-int/lit16 v0, v0, 0x106

    .line 1563
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1564
    const-string v1, "OPEN_APPEND present, adding ACE4_APPEND_DATA,ACE4_WRITE_DATA, ACE4_WRITE_ATTRIBUTES"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    move v1, v3

    goto :goto_1

    :cond_5
    move v1, v2

    :goto_1
    and-int/lit8 v4, p2, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_6

    .line 1570
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1571
    const-string v3, "OPEN_EXCLUSIVE present, adding SSH_FXF_CREATE_NEW"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    and-int/lit8 v4, p2, 0x8

    const/16 v5, 0x10

    if-ne v4, v3, :cond_8

    and-int/lit8 v3, p2, 0x10

    if-ne v3, v5, :cond_7

    or-int/lit8 v1, v1, 0x1

    .line 1577
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1578
    const-string v3, "OPEN_CREATE and OPEN_TRUNCATE present, adding SSH_FXF_CREATE_TRUNCATE"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    or-int/lit8 v1, v1, 0x3

    goto :goto_2

    :cond_8
    and-int/lit8 v3, p2, 0x10

    if-ne v3, v5, :cond_9

    or-int/lit8 v1, v1, 0x4

    .line 1587
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1588
    const-string v3, "OPEN_TRUNCATE present, adding SSH_FXF_TRUNCATE_EXISTING"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_9
    or-int/lit8 v1, v1, 0x2

    :cond_a
    :goto_2
    const/16 v3, 0x40

    and-int/2addr p2, v3

    if-ne p2, v3, :cond_b

    or-int/lit8 v1, v1, 0x20

    .line 1598
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 1599
    const-string p2, "OPEN_TEXT present adding SSH_FXF_ACCESS_TEXT_MODE"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2, v2}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1603
    :cond_b
    invoke-virtual {p0, p1, v1, v0, p3}, Lcom/sshtools/client/sftp/SftpChannel;->openFileVersion5(Ljava/lang/String;IILcom/sshtools/common/sftp/SftpFileAttributes;)Lcom/sshtools/client/sftp/SftpHandle;

    move-result-object p1

    return-object p1

    :cond_c
    if-nez p3, :cond_d

    .line 1608
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpChannel;->getCharsetEncoding()Ljava/lang/String;

    move-result-object p3

    .line 1606
    invoke-static {v2, p3}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->ofType(ILjava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    move-result-object p3

    .line 1608
    invoke-virtual {p3}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->build()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object p3

    .line 1614
    :cond_d
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sshtools/client/sftp/SftpChannel;->getAttributes(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object p3
    :try_end_0
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    goto :goto_5

    .line 1616
    :catch_2
    :goto_3
    :try_start_1
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpChannel;->nextRequestId()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v0

    .line 1617
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpChannel;->createPacket()Lcom/sshtools/common/ssh/Packet;

    move-result-object v2

    const/4 v3, 0x3

    .line 1618
    invoke-virtual {v2, v3}, Lcom/sshtools/common/ssh/Packet;->write(I)V

    .line 1619
    invoke-virtual {v0}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/sshtools/common/ssh/Packet;->writeInt(J)V

    .line 1620
    iget-object v3, p0, Lcom/sshtools/client/sftp/SftpChannel;->CHARSET_ENCODING:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Lcom/sshtools/common/ssh/Packet;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1621
    invoke-virtual {v2, p2}, Lcom/sshtools/common/ssh/Packet;->writeInt(I)V

    .line 1622
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpChannel;->getVersion()I

    move-result p2

    invoke-virtual {p3, p2}, Lcom/sshtools/common/sftp/SftpFileAttributes;->toByteArray(I)[B

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/sshtools/common/ssh/Packet;->write([B)V

    .line 1624
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_e

    .line 1625
    const-string p2, "Sending SSH_FXP_OPEN for {}"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1628
    :cond_e
    invoke-virtual {p0, v2}, Lcom/sshtools/client/sftp/SftpChannel;->sendMessage(Lcom/sshtools/common/ssh/Packet;)V

    .line 1630
    new-instance p2, Lcom/sshtools/client/sftp/SftpFile;

    const/4 v2, 0x0

    invoke-direct {p2, p1, p3, v2}, Lcom/sshtools/client/sftp/SftpFile;-><init>(Ljava/lang/String;Lcom/sshtools/common/sftp/SftpFileAttributes;Ljava/lang/String;)V

    .line 1631
    invoke-virtual {p0, v0, p2}, Lcom/sshtools/client/sftp/SftpChannel;->getHandle(Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/client/sftp/SftpFile;)Lcom/sshtools/client/sftp/SftpHandle;

    move-result-object p1

    .line 1633
    invoke-static {}, Lcom/sshtools/common/events/EventServiceImplementation;->getInstance()Lcom/sshtools/common/events/EventService;

    move-result-object p3

    new-instance v0, Lcom/sshtools/common/events/Event;

    const v2, 0xff0026

    invoke-direct {v0, p0, v2, v1}, Lcom/sshtools/common/events/Event;-><init>(Ljava/lang/Object;IZ)V

    const-string v1, "FILE_NAME"

    .line 1638
    invoke-virtual {p2}, Lcom/sshtools/client/sftp/SftpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    .line 1636
    invoke-virtual {v0, v1, p2}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p2

    .line 1633
    invoke-interface {p3, p2}, Lcom/sshtools/common/events/EventService;->fireEvent(Lcom/sshtools/common/events/Event;)V
    :try_end_1
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    .line 1643
    :goto_4
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {p2, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 1641
    :goto_5
    invoke-virtual {p1}, Lcom/sshtools/common/ssh/SshIOException;->getRealException()Lcom/sshtools/common/ssh/SshException;

    move-result-object p1

    throw p1
.end method

.method public openFileVersion5(Ljava/lang/String;IILcom/sshtools/common/sftp/SftpFileAttributes;)Lcom/sshtools/client/sftp/SftpHandle;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    if-nez p4, :cond_0

    const/4 p4, 0x5

    .line 1655
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpChannel;->getCharsetEncoding()Ljava/lang/String;

    move-result-object v0

    .line 1653
    invoke-static {p4, v0}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->ofType(ILjava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    move-result-object p4

    .line 1655
    invoke-virtual {p4}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->build()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object p4

    .line 1661
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sshtools/client/sftp/SftpChannel;->getAttributes(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object p4
    :try_end_0
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    .line 1664
    :catch_2
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpChannel;->nextRequestId()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v0

    .line 1665
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpChannel;->createPacket()Lcom/sshtools/common/ssh/Packet;

    move-result-object v1

    const/4 v2, 0x3

    .line 1666
    invoke-virtual {v1, v2}, Lcom/sshtools/common/ssh/Packet;->write(I)V

    .line 1667
    invoke-virtual {v0}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sshtools/common/ssh/Packet;->writeInt(J)V

    .line 1668
    iget-object v2, p0, Lcom/sshtools/client/sftp/SftpChannel;->CHARSET_ENCODING:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/sshtools/common/ssh/Packet;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1669
    invoke-virtual {v1, p3}, Lcom/sshtools/common/ssh/Packet;->writeInt(I)V

    .line 1670
    invoke-virtual {v1, p2}, Lcom/sshtools/common/ssh/Packet;->writeInt(I)V

    .line 1671
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpChannel;->getVersion()I

    move-result p2

    invoke-virtual {p4, p2}, Lcom/sshtools/common/sftp/SftpFileAttributes;->toByteArray(I)[B

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/sshtools/common/ssh/Packet;->write([B)V

    .line 1673
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1674
    const-string p2, "Sending SSH_FXP_OPEN for {}"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1677
    :cond_1
    invoke-virtual {p0, v1}, Lcom/sshtools/client/sftp/SftpChannel;->sendMessage(Lcom/sshtools/common/ssh/Packet;)V

    .line 1679
    new-instance p2, Lcom/sshtools/client/sftp/SftpFile;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p4, p3}, Lcom/sshtools/client/sftp/SftpFile;-><init>(Ljava/lang/String;Lcom/sshtools/common/sftp/SftpFileAttributes;Ljava/lang/String;)V

    .line 1680
    invoke-virtual {p0, v0, p2}, Lcom/sshtools/client/sftp/SftpChannel;->getHandle(Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/client/sftp/SftpFile;)Lcom/sshtools/client/sftp/SftpHandle;

    move-result-object p1

    .line 1682
    invoke-static {}, Lcom/sshtools/common/events/EventServiceImplementation;->getInstance()Lcom/sshtools/common/events/EventService;

    move-result-object p3

    new-instance p4, Lcom/sshtools/common/events/Event;

    const v0, 0xff0026

    const/4 v1, 0x1

    invoke-direct {p4, p0, v0, v1}, Lcom/sshtools/common/events/Event;-><init>(Ljava/lang/Object;IZ)V

    const-string v0, "FILE_NAME"

    .line 1686
    invoke-virtual {p2}, Lcom/sshtools/client/sftp/SftpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    .line 1684
    invoke-virtual {p4, v0, p2}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p2

    .line 1682
    invoke-interface {p3, p2}, Lcom/sshtools/common/events/EventService;->fireEvent(Lcom/sshtools/common/events/Event;)V
    :try_end_1
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    .line 1691
    :goto_1
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {p2, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 1689
    :goto_2
    invoke-virtual {p1}, Lcom/sshtools/common/ssh/SshIOException;->getRealException()Lcom/sshtools/common/ssh/SshException;

    move-result-object p1

    throw p1
.end method

.method public performOptimizedRead(Ljava/lang/String;[BJILjava/io/OutputStream;ILcom/sshtools/client/tasks/FileTransferProgress;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "3.1.0"
    .end annotation

    const-wide/16 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 904
    invoke-virtual/range {v0 .. v10}, Lcom/sshtools/client/sftp/SftpChannel;->performOptimizedRead(Ljava/lang/String;[BJILjava/io/OutputStream;ILcom/sshtools/client/tasks/FileTransferProgress;J)V

    return-void
.end method

.method public performOptimizedRead(Ljava/lang/String;[BJILjava/io/OutputStream;ILcom/sshtools/client/tasks/FileTransferProgress;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "3.1.0"
    .end annotation

    .line 942
    invoke-virtual {p0, p2}, Lcom/sshtools/client/sftp/SftpChannel;->getBestHandle([B)Lcom/sshtools/client/sftp/SftpHandle;

    move-result-object p1

    move-wide p2, p3

    move p4, p5

    move-object p5, p6

    move p6, p7

    move-object p7, p8

    move-wide p8, p9

    invoke-virtual/range {p1 .. p9}, Lcom/sshtools/client/sftp/SftpHandle;->performOptimizedRead(JILjava/io/OutputStream;ILcom/sshtools/client/tasks/FileTransferProgress;J)V

    return-void
.end method

.method public performOptimizedWrite(Ljava/lang/String;[BIILjava/io/InputStream;ILcom/sshtools/client/tasks/FileTransferProgress;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;
        }
    .end annotation

    const-wide/16 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    .line 832
    invoke-virtual/range {v0 .. v9}, Lcom/sshtools/client/sftp/SftpChannel;->performOptimizedWrite(Ljava/lang/String;[BIILjava/io/InputStream;ILcom/sshtools/client/tasks/FileTransferProgress;J)V

    return-void
.end method

.method public performOptimizedWrite(Ljava/lang/String;[BIILjava/io/InputStream;ILcom/sshtools/client/tasks/FileTransferProgress;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "3.1.0"
    .end annotation

    .line 871
    invoke-virtual {p0, p2}, Lcom/sshtools/client/sftp/SftpChannel;->getBestHandle([B)Lcom/sshtools/client/sftp/SftpHandle;

    move-result-object p2

    move-object v0, p2

    move-object p2, p1

    move-object p1, v0

    invoke-virtual/range {p1 .. p9}, Lcom/sshtools/client/sftp/SftpHandle;->performOptimizedWrite(Ljava/lang/String;IILjava/io/InputStream;ILcom/sshtools/client/tasks/FileTransferProgress;J)V

    return-void
.end method

.method public performSynchronousRead([BILjava/io/OutputStream;Lcom/sshtools/client/tasks/FileTransferProgress;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "3.1.0"
    .end annotation

    .line 967
    invoke-virtual {p0, p1}, Lcom/sshtools/client/sftp/SftpChannel;->getBestHandle([B)Lcom/sshtools/client/sftp/SftpHandle;

    move-result-object p1

    invoke-virtual/range {p1 .. p6}, Lcom/sshtools/client/sftp/SftpHandle;->performSynchronousRead(ILjava/io/OutputStream;Lcom/sshtools/client/tasks/FileTransferProgress;J)V

    return-void
.end method

.method public postReadRequest([BJI)Lcom/sshtools/common/util/UnsignedInteger32;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "3.1.0"
    .end annotation

    .line 988
    invoke-virtual {p0, p1}, Lcom/sshtools/client/sftp/SftpChannel;->getBestHandle([B)Lcom/sshtools/client/sftp/SftpHandle;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4}, Lcom/sshtools/client/sftp/SftpHandle;->postReadRequest(JI)Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object p1

    return-object p1
.end method

.method public postWriteRequest([BJ[BII)Lcom/sshtools/common/util/UnsignedInteger32;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "3.1.0"
    .end annotation

    .line 775
    invoke-virtual {p0, p1}, Lcom/sshtools/client/sftp/SftpChannel;->getBestHandle([B)Lcom/sshtools/client/sftp/SftpHandle;

    move-result-object p1

    invoke-virtual/range {p1 .. p6}, Lcom/sshtools/client/sftp/SftpHandle;->postWriteRequest(J[BII)Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object p1

    return-object p1
.end method

.method processStatusResponse(Lcom/sshtools/client/sftp/SftpMessage;Ljava/lang/String;Lcom/sshtools/common/util/UnsignedInteger32;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2059
    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpMessage;->readInt()J

    move-result-wide v0

    long-to-int v0, v0

    if-nez v0, :cond_1

    .line 2063
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2064
    const-string p1, "Received SSH_FX_OK for {} requestId={}"

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 2070
    :cond_1
    iget p3, p0, Lcom/sshtools/client/sftp/SftpChannel;->version:I

    const/4 v1, 0x3

    if-lt p3, v1, :cond_3

    .line 2071
    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpMessage;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2072
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 2074
    invoke-static {v0}, Lcom/sshtools/common/sftp/SftpStatusException;->getStatusMessage(I)Ljava/lang/String;

    move-result-object p3

    filled-new-array {p3, p1, p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 2073
    const-string p3, "Received {} with message {} for {}"

    invoke-static {p3, p2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2076
    :cond_2
    new-instance p2, Lcom/sshtools/common/sftp/SftpStatusException;

    invoke-direct {p2, v0, p1}, Lcom/sshtools/common/sftp/SftpStatusException;-><init>(ILjava/lang/String;)V

    throw p2

    .line 2079
    :cond_3
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2080
    invoke-static {v0}, Lcom/sshtools/common/sftp/SftpStatusException;->getStatusMessage(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Received {} for {}"

    invoke-static {p2, p1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2083
    :cond_4
    new-instance p1, Lcom/sshtools/common/sftp/SftpStatusException;

    invoke-direct {p1, v0}, Lcom/sshtools/common/sftp/SftpStatusException;-><init>(I)V

    throw p1
.end method

.method protected processSupported([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 414
    new-instance v0, Lcom/sshtools/common/util/ByteArrayReader;

    invoke-direct {v0, p1}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V

    .line 418
    :try_start_0
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v1

    .line 417
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/sftp/SftpChannel;->supportedAttributeMask:Ljava/lang/Long;

    .line 420
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v1

    .line 419
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/sftp/SftpChannel;->supportedAttributeBits:Ljava/lang/Long;

    .line 422
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v1

    .line 421
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/sftp/SftpChannel;->supportedOpenFileFlags:Ljava/lang/Long;

    .line 423
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/sftp/SftpChannel;->supportedAccessMask:Ljava/lang/Long;

    .line 424
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v1

    long-to-int p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/sftp/SftpChannel;->maxReadSize:Ljava/lang/Integer;

    .line 425
    :goto_0
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->available()I

    move-result p1

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-lt p1, v1, :cond_1

    .line 426
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object p1

    .line 427
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Server supports \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' extension"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 431
    :cond_0
    iget-object v1, p0, Lcom/sshtools/client/sftp/SftpChannel;->supportedExtensions:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 433
    :cond_1
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 434
    iget-object p1, p0, Lcom/sshtools/client/sftp/SftpChannel;->supportedAttributeMask:Ljava/lang/Long;

    .line 435
    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "supported-attribute-mask: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    .line 434
    invoke-static {p1, v1}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 436
    iget-object p1, p0, Lcom/sshtools/client/sftp/SftpChannel;->supportedAttributeBits:Ljava/lang/Long;

    .line 437
    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "supported-attribute-bits: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    .line 436
    invoke-static {p1, v1}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 438
    iget-object p1, p0, Lcom/sshtools/client/sftp/SftpChannel;->supportedOpenFileFlags:Ljava/lang/Long;

    .line 439
    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "supported-open-flags: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    .line 438
    invoke-static {p1, v1}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 440
    iget-object p1, p0, Lcom/sshtools/client/sftp/SftpChannel;->supportedAccessMask:Ljava/lang/Long;

    .line 441
    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "supported-access-mask: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    .line 440
    invoke-static {p1, v1}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 442
    iget-object p1, p0, Lcom/sshtools/client/sftp/SftpChannel;->maxReadSize:Ljava/lang/Integer;

    .line 443
    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "max-read-size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    .line 442
    invoke-static {p1, v1}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    :cond_2
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 447
    throw p1
.end method

.method protected processSupported2([B)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 360
    new-instance v0, Lcom/sshtools/common/util/ByteArrayReader;

    invoke-direct {v0, p1}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V

    .line 364
    :try_start_0
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v1

    .line 363
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/sftp/SftpChannel;->supportedAttributeMask:Ljava/lang/Long;

    .line 366
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v1

    .line 365
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/sftp/SftpChannel;->supportedAttributeBits:Ljava/lang/Long;

    .line 368
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v1

    .line 367
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/sftp/SftpChannel;->supportedOpenFileFlags:Ljava/lang/Long;

    .line 369
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/sftp/SftpChannel;->supportedAccessMask:Ljava/lang/Long;

    .line 370
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v1

    long-to-int p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/sftp/SftpChannel;->maxReadSize:Ljava/lang/Integer;

    .line 371
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readShort()S

    move-result p1

    iput-short p1, p0, Lcom/sshtools/client/sftp/SftpChannel;->supportedOpenBlockVector:S

    .line 372
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readShort()S

    move-result p1

    iput-short p1, p0, Lcom/sshtools/client/sftp/SftpChannel;->supportedBlockVector:S

    .line 373
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->available()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "Server supports \'"

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-lt p1, v2, :cond_1

    .line 374
    :try_start_1
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v4

    long-to-int p1, v4

    move v4, v3

    :goto_0
    if-ge v4, p1, :cond_1

    .line 376
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object v5

    .line 377
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 378
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' attribute extension"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 381
    :cond_0
    iget-object v6, p0, Lcom/sshtools/client/sftp/SftpChannel;->supportedAttrExtensions:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 384
    :cond_1
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->available()I

    move-result p1

    if-lt p1, v2, :cond_3

    .line 385
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v4

    long-to-int p1, v4

    move v2, v3

    :goto_1
    if-ge v2, p1, :cond_3

    .line 387
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object v4

    .line 388
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 389
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' extension"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 392
    :cond_2
    iget-object v5, p0, Lcom/sshtools/client/sftp/SftpChannel;->supportedExtensions:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 395
    :cond_3
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 396
    iget-object p1, p0, Lcom/sshtools/client/sftp/SftpChannel;->supportedAttributeMask:Ljava/lang/Long;

    .line 397
    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "supported-attribute-mask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v3, [Ljava/lang/Object;

    .line 396
    invoke-static {p1, v1}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 398
    iget-object p1, p0, Lcom/sshtools/client/sftp/SftpChannel;->supportedAttributeBits:Ljava/lang/Long;

    .line 399
    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "supported-attribute-bits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v3, [Ljava/lang/Object;

    .line 398
    invoke-static {p1, v1}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 400
    iget-object p1, p0, Lcom/sshtools/client/sftp/SftpChannel;->supportedOpenFileFlags:Ljava/lang/Long;

    .line 401
    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "supported-open-flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v3, [Ljava/lang/Object;

    .line 400
    invoke-static {p1, v1}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 402
    iget-object p1, p0, Lcom/sshtools/client/sftp/SftpChannel;->supportedAccessMask:Ljava/lang/Long;

    .line 403
    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "supported-access-mask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v3, [Ljava/lang/Object;

    .line 402
    invoke-static {p1, v1}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 404
    iget-object p1, p0, Lcom/sshtools/client/sftp/SftpChannel;->maxReadSize:Ljava/lang/Integer;

    .line 405
    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "max-read-size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v3, [Ljava/lang/Object;

    .line 404
    invoke-static {p1, v1}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 408
    :cond_4
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 409
    throw p1
.end method

.method public readFile([BLcom/sshtools/common/util/UnsignedInteger64;[BII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "3.1.0"
    .end annotation

    .line 1012
    invoke-virtual {p0, p1}, Lcom/sshtools/client/sftp/SftpChannel;->getBestHandle([B)Lcom/sshtools/client/sftp/SftpHandle;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/sshtools/client/sftp/SftpHandle;->readFile(Lcom/sshtools/common/util/UnsignedInteger64;[BII)I

    move-result p1

    return p1
.end method

.method public recurseMakeDirectory(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 1476
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 1478
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sshtools/client/sftp/SftpChannel;->openDirectory(Ljava/lang/String;)Lcom/sshtools/client/sftp/SftpHandle;

    move-result-object v0

    .line 1479
    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpHandle;->close()V
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1502
    new-instance v0, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {v0, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    const/4 v0, 0x0

    move v1, v0

    :cond_0
    const/16 v2, 0x2f

    .line 1486
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_1

    add-int/lit8 v3, v1, 0x1

    .line 1487
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, p1

    .line 1489
    :goto_0
    :try_start_1
    invoke-virtual {p0, v3}, Lcom/sshtools/client/sftp/SftpChannel;->openDirectory(Ljava/lang/String;)Lcom/sshtools/client/sftp/SftpHandle;

    move-result-object v4
    :try_end_1
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1491
    :try_start_2
    invoke-virtual {v4}, Lcom/sshtools/client/sftp/SftpHandle;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    :catch_2
    move-exception v4

    .line 1493
    :try_start_3
    new-instance v5, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {v5, v4}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_3
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1496
    :catch_3
    invoke-virtual {p0, v3}, Lcom/sshtools/client/sftp/SftpChannel;->makeDirectory(Ljava/lang/String;)V

    :goto_1
    if-gt v1, v2, :cond_0

    :cond_2
    return-void
.end method

.method public removeDirectory(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 1792
    :try_start_0
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpChannel;->nextRequestId()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v0

    .line 1793
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpChannel;->createPacket()Lcom/sshtools/common/ssh/Packet;

    move-result-object v1

    const/16 v2, 0xf

    .line 1794
    invoke-virtual {v1, v2}, Lcom/sshtools/common/ssh/Packet;->write(I)V

    .line 1795
    invoke-virtual {v0}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sshtools/common/ssh/Packet;->writeInt(J)V

    .line 1796
    iget-object v2, p0, Lcom/sshtools/client/sftp/SftpChannel;->CHARSET_ENCODING:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/sshtools/common/ssh/Packet;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1798
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1799
    const-string v2, "Sending SSH_FXP_RMDIR for {}"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1802
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sshtools/client/sftp/SftpChannel;->sendMessage(Lcom/sshtools/common/ssh/Packet;)V

    .line 1804
    invoke-virtual {p0, v0, p1}, Lcom/sshtools/client/sftp/SftpChannel;->getOKRequestStatus(Lcom/sshtools/common/util/UnsignedInteger32;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1810
    invoke-static {}, Lcom/sshtools/common/events/EventServiceImplementation;->getInstance()Lcom/sshtools/common/events/EventService;

    move-result-object v0

    new-instance v1, Lcom/sshtools/common/events/Event;

    const v2, -0xffffad

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Lcom/sshtools/common/events/Event;-><init>(Ljava/lang/Object;IZ)V

    const-string v2, "DIRECTORY_PATH"

    .line 1812
    invoke-virtual {v1, v2, p1}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p1

    .line 1810
    invoke-interface {v0, p1}, Lcom/sshtools/common/events/EventService;->fireEvent(Lcom/sshtools/common/events/Event;)V

    return-void

    :catch_0
    move-exception p1

    .line 1808
    new-instance v0, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {v0, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 1806
    invoke-virtual {p1}, Lcom/sshtools/common/ssh/SshIOException;->getRealException()Lcom/sshtools/common/ssh/SshException;

    move-result-object p1

    throw p1
.end method

.method public removeFile(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 1826
    :try_start_0
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpChannel;->nextRequestId()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v0

    .line 1827
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpChannel;->createPacket()Lcom/sshtools/common/ssh/Packet;

    move-result-object v1

    const/16 v2, 0xd

    .line 1828
    invoke-virtual {v1, v2}, Lcom/sshtools/common/ssh/Packet;->write(I)V

    .line 1829
    invoke-virtual {v0}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sshtools/common/ssh/Packet;->writeInt(J)V

    .line 1830
    iget-object v2, p0, Lcom/sshtools/client/sftp/SftpChannel;->CHARSET_ENCODING:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/sshtools/common/ssh/Packet;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1832
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1833
    const-string v2, "Sending SSH_FXP_REMOVE for {}"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1836
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sshtools/client/sftp/SftpChannel;->sendMessage(Lcom/sshtools/common/ssh/Packet;)V

    .line 1838
    invoke-virtual {p0, v0, p1}, Lcom/sshtools/client/sftp/SftpChannel;->getOKRequestStatus(Lcom/sshtools/common/util/UnsignedInteger32;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1844
    invoke-static {}, Lcom/sshtools/common/events/EventServiceImplementation;->getInstance()Lcom/sshtools/common/events/EventService;

    move-result-object v0

    new-instance v1, Lcom/sshtools/common/events/Event;

    const v2, -0xffffab

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Lcom/sshtools/common/events/Event;-><init>(Ljava/lang/Object;IZ)V

    const-string v2, "FILE_NAME"

    .line 1848
    invoke-virtual {v1, v2, p1}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p1

    .line 1845
    invoke-interface {v0, p1}, Lcom/sshtools/common/events/EventService;->fireEvent(Lcom/sshtools/common/events/Event;)V

    return-void

    :catch_0
    move-exception p1

    .line 1842
    new-instance v0, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {v0, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 1840
    invoke-virtual {p1}, Lcom/sshtools/common/ssh/SshIOException;->getRealException()Lcom/sshtools/common/ssh/SshException;

    move-result-object p1

    throw p1
.end method

.method public renameFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1863
    invoke-virtual {p0, p1, p2, v0}, Lcom/sshtools/client/sftp/SftpChannel;->renameFile(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public renameFile(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 1869
    iget v0, p0, Lcom/sshtools/client/sftp/SftpChannel;->version:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    .line 1876
    :try_start_0
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpChannel;->nextRequestId()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v0

    .line 1877
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpChannel;->createPacket()Lcom/sshtools/common/ssh/Packet;

    move-result-object v1

    const/16 v2, 0x12

    .line 1878
    invoke-virtual {v1, v2}, Lcom/sshtools/common/ssh/Packet;->write(I)V

    .line 1879
    invoke-virtual {v0}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sshtools/common/ssh/Packet;->writeInt(J)V

    .line 1880
    iget-object v2, p0, Lcom/sshtools/client/sftp/SftpChannel;->CHARSET_ENCODING:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/sshtools/common/ssh/Packet;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1881
    iget-object v2, p0, Lcom/sshtools/client/sftp/SftpChannel;->CHARSET_ENCODING:Ljava/lang/String;

    invoke-virtual {v1, p2, v2}, Lcom/sshtools/common/ssh/Packet;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1883
    iget v2, p0, Lcom/sshtools/client/sftp/SftpChannel;->version:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_0

    .line 1884
    invoke-virtual {v1, p3}, Lcom/sshtools/common/ssh/Packet;->writeInt(I)V

    .line 1887
    :cond_0
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 1888
    const-string p3, "Sending SSH_FXP_RENAME from {} to {}"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p3, v2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1890
    :cond_1
    invoke-virtual {p0, v1}, Lcom/sshtools/client/sftp/SftpChannel;->sendMessage(Lcom/sshtools/common/ssh/Packet;)V

    .line 1892
    invoke-virtual {p0, v0, p2}, Lcom/sshtools/client/sftp/SftpChannel;->getOKRequestStatus(Lcom/sshtools/common/util/UnsignedInteger32;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1899
    invoke-static {}, Lcom/sshtools/common/events/EventServiceImplementation;->getInstance()Lcom/sshtools/common/events/EventService;

    move-result-object p3

    new-instance v0, Lcom/sshtools/common/events/Event;

    const v1, -0xffffac

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/sshtools/common/events/Event;-><init>(Ljava/lang/Object;IZ)V

    const-string v1, "FILE_NAME"

    .line 1903
    invoke-virtual {v0, v1, p1}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p1

    const-string v0, "FILE_NEW_NAME"

    .line 1906
    invoke-virtual {p1, v0, p2}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p1

    .line 1900
    invoke-interface {p3, p1}, Lcom/sshtools/common/events/EventService;->fireEvent(Lcom/sshtools/common/events/Event;)V

    return-void

    :catch_0
    move-exception p1

    .line 1896
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {p2, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 1894
    invoke-virtual {p1}, Lcom/sshtools/common/ssh/SshIOException;->getRealException()Lcom/sshtools/common/ssh/SshException;

    move-result-object p1

    throw p1

    .line 1870
    :cond_2
    new-instance p1, Lcom/sshtools/common/sftp/SftpStatusException;

    iget p2, p0, Lcom/sshtools/client/sftp/SftpChannel;->version:I

    .line 1873
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Renaming files is not supported by the server SFTP version "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x8

    invoke-direct {p1, p3, p2}, Lcom/sshtools/common/sftp/SftpStatusException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public sendExtensionMessage(Ljava/lang/String;[B)Lcom/sshtools/common/util/UnsignedInteger32;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/common/sftp/SftpStatusException;
        }
    .end annotation

    .line 2266
    :try_start_0
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpChannel;->nextRequestId()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v0

    .line 2267
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpChannel;->createPacket()Lcom/sshtools/common/ssh/Packet;

    move-result-object v1

    const/16 v2, 0xc8

    .line 2268
    invoke-virtual {v1, v2}, Lcom/sshtools/common/ssh/Packet;->write(I)V

    .line 2269
    invoke-virtual {v1, v0}, Lcom/sshtools/common/ssh/Packet;->writeUINT32(Lcom/sshtools/common/util/UnsignedInteger32;)V

    .line 2270
    invoke-virtual {v1, p1}, Lcom/sshtools/common/ssh/Packet;->writeString(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 2272
    invoke-virtual {v1, p2}, Lcom/sshtools/common/ssh/Packet;->write([B)V

    .line 2274
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sshtools/client/sftp/SftpChannel;->sendMessage(Lcom/sshtools/common/ssh/Packet;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 2279
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    const/4 v0, 0x5

    invoke-direct {p2, v0, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(ILjava/lang/Throwable;)V

    throw p2
.end method

.method public setAttributes(Ljava/lang/String;Lcom/sshtools/common/sftp/SftpFileAttributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 713
    :try_start_0
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpChannel;->nextRequestId()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v0

    .line 715
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpChannel;->createPacket()Lcom/sshtools/common/ssh/Packet;

    move-result-object v1

    const/16 v2, 0x9

    .line 716
    invoke-virtual {v1, v2}, Lcom/sshtools/common/ssh/Packet;->write(I)V

    .line 717
    invoke-virtual {v0}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sshtools/common/ssh/Packet;->writeInt(J)V

    .line 718
    iget-object v2, p0, Lcom/sshtools/client/sftp/SftpChannel;->CHARSET_ENCODING:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/sshtools/common/ssh/Packet;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpChannel;->getVersion()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/sshtools/common/sftp/SftpFileAttributes;->toByteArray(I)[B

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/sshtools/common/ssh/Packet;->write([B)V

    .line 721
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 722
    const-string p2, "Sending SSH_FXP_SETSTAT for {}"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 725
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sshtools/client/sftp/SftpChannel;->sendMessage(Lcom/sshtools/common/ssh/Packet;)V

    .line 727
    invoke-virtual {p0, v0, p1}, Lcom/sshtools/client/sftp/SftpChannel;->getOKRequestStatus(Lcom/sshtools/common/util/UnsignedInteger32;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 731
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    const/4 v0, 0x5

    invoke-direct {p2, p1, v0}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;I)V

    throw p2

    :catch_1
    move-exception p1

    .line 729
    invoke-virtual {p1}, Lcom/sshtools/common/ssh/SshIOException;->getRealException()Lcom/sshtools/common/ssh/SshException;

    move-result-object p1

    throw p1
.end method

.method public setAttributes([BLcom/sshtools/common/sftp/SftpFileAttributes;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "3.1.0"
    .end annotation

    .line 750
    invoke-direct {p0, p1}, Lcom/sshtools/client/sftp/SftpChannel;->isValidHandle([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 754
    invoke-virtual {p0, p1}, Lcom/sshtools/client/sftp/SftpChannel;->getBestHandle([B)Lcom/sshtools/client/sftp/SftpHandle;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sshtools/client/sftp/SftpHandle;->setAttributes(Lcom/sshtools/common/sftp/SftpFileAttributes;)V

    return-void

    .line 751
    :cond_0
    new-instance p1, Lcom/sshtools/common/sftp/SftpStatusException;

    const/16 p2, 0x64

    const-string v0, "The handle is not an open file handle!"

    invoke-direct {p1, p2, v0}, Lcom/sshtools/common/sftp/SftpStatusException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public setCharsetEncoding(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 465
    iget v0, p0, Lcom/sshtools/client/sftp/SftpChannel;->version:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 470
    const-string v0, "123456890"

    .line 471
    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 472
    iput-object p1, p0, Lcom/sshtools/client/sftp/SftpChannel;->CHARSET_ENCODING:Ljava/lang/String;

    return-void

    .line 466
    :cond_0
    new-instance p1, Lcom/sshtools/common/ssh/SshException;

    const-string v0, "SFTP Channel must be initialized before setting character set encoding"

    const/4 v1, 0x4

    invoke-direct {p1, v0, v1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public supportsExtension(Ljava/lang/String;)Z
    .locals 1

    .line 506
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpChannel;->extensions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public unlockFile([BJJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "3.1.0"
    .end annotation

    .line 1102
    iget v0, p0, Lcom/sshtools/client/sftp/SftpChannel;->version:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_1

    .line 1109
    invoke-virtual {p0, p1}, Lcom/sshtools/client/sftp/SftpChannel;->getBestHandle([B)Lcom/sshtools/client/sftp/SftpHandle;

    move-result-object v0

    .line 1112
    :try_start_0
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpChannel;->nextRequestId()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v1

    .line 1113
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpChannel;->createPacket()Lcom/sshtools/common/ssh/Packet;

    move-result-object v2

    const/16 v3, 0x17

    .line 1114
    invoke-virtual {v2, v3}, Lcom/sshtools/common/ssh/Packet;->write(I)V

    .line 1115
    invoke-virtual {v1}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/sshtools/common/ssh/Packet;->writeInt(J)V

    .line 1116
    invoke-virtual {v2, p1}, Lcom/sshtools/common/ssh/Packet;->writeBinaryString([B)V

    .line 1117
    invoke-virtual {v2, p2, p3}, Lcom/sshtools/common/ssh/Packet;->writeUINT64(J)V

    .line 1118
    invoke-virtual {v2, p4, p5}, Lcom/sshtools/common/ssh/Packet;->writeUINT64(J)V

    .line 1120
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1121
    const-string p1, "Sending SSH_FXP_UNBLOCK for {}"

    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpHandle;->getFile()Lcom/sshtools/client/sftp/SftpFile;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sshtools/client/sftp/SftpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1123
    :cond_0
    invoke-virtual {p0, v2}, Lcom/sshtools/client/sftp/SftpChannel;->sendMessage(Lcom/sshtools/common/ssh/Packet;)V

    .line 1125
    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpHandle;->getFile()Lcom/sshtools/client/sftp/SftpFile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/sshtools/client/sftp/SftpChannel;->getOKRequestStatus(Lcom/sshtools/common/util/UnsignedInteger32;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1129
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {p2, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 1127
    invoke-virtual {p1}, Lcom/sshtools/common/ssh/SshIOException;->getRealException()Lcom/sshtools/common/ssh/SshException;

    move-result-object p1

    throw p1

    .line 1103
    :cond_1
    new-instance p1, Lcom/sshtools/common/sftp/SftpStatusException;

    iget p2, p0, Lcom/sshtools/client/sftp/SftpChannel;->version:I

    .line 1106
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

.method public writeFile([BLcom/sshtools/common/util/UnsignedInteger64;[BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 797
    invoke-virtual {p0, p1}, Lcom/sshtools/client/sftp/SftpChannel;->getBestHandle([B)Lcom/sshtools/client/sftp/SftpHandle;

    move-result-object v0

    .line 798
    invoke-virtual {p2}, Lcom/sshtools/common/util/UnsignedInteger64;->longValue()J

    move-result-wide v1

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sshtools/client/sftp/SftpHandle;->postWriteRequest(J[BII)Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object p1

    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpHandle;->getFile()Lcom/sshtools/client/sftp/SftpFile;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sshtools/client/sftp/SftpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sshtools/client/sftp/SftpChannel;->getOKRequestStatus(Lcom/sshtools/common/util/UnsignedInteger32;Ljava/lang/String;)V

    return-void
.end method
