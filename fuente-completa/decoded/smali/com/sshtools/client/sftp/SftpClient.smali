.class public Lcom/sshtools/client/sftp/SftpClient;
.super Ljava/lang/Object;
.source "SftpClient.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;,
        Lcom/sshtools/client/sftp/SftpClient$DirectoryIterator;,
        Lcom/sshtools/client/sftp/SftpClient$RandomAccessFileOutputStream;
    }
.end annotation


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0xfa000

.field public static final EOL_CR:I = 0x3

.field public static final EOL_CRLF:I = 0x1

.field public static final EOL_LF:I = 0x2

.field public static final GlobSyntax:I = 0x1

.field public static final MODE_BINARY:I = 0x1

.field public static final MODE_TEXT:I = 0x2

.field public static final NoSyntax:I = 0x0

.field public static final Perl5Syntax:I = 0x2


# instance fields
.field private RegExpSyntax:I

.field applyUmask:Z

.field private asyncRequests:I

.field private blocksize:I

.field private buffersize:I

.field private customRoots:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cwd:Ljava/lang/String;

.field private forceRemoteEOL:Z

.field private inputEOL:I

.field private lcwd:Lcom/sshtools/common/files/AbstractFile;

.field private outputEOL:I

.field private final sftp:Lcom/sshtools/client/sftp/SftpChannel;

.field private stripEOL:Z

.field private transferMode:I

.field umask:I


# direct methods
.method static bridge synthetic -$$Nest$fgetsftp(Lcom/sshtools/client/sftp/SftpClient;)Lcom/sshtools/client/sftp/SftpChannel;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mresolveRemotePath(Lcom/sshtools/client/sftp/SftpClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sshtools/client/sftp/SftpClient;->resolveRemotePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    const-string v0, ""

    iput-object v0, p0, Lcom/sshtools/client/sftp/SftpClient;->cwd:Ljava/lang/String;

    const/16 v1, 0x12

    .line 314
    iput v1, p0, Lcom/sshtools/client/sftp/SftpClient;->umask:I

    const/4 v1, 0x0

    .line 315
    iput-boolean v1, p0, Lcom/sshtools/client/sftp/SftpClient;->applyUmask:Z

    const/4 v2, 0x1

    .line 353
    iput v2, p0, Lcom/sshtools/client/sftp/SftpClient;->outputEOL:I

    .line 354
    iput v1, p0, Lcom/sshtools/client/sftp/SftpClient;->inputEOL:I

    .line 355
    iput-boolean v1, p0, Lcom/sshtools/client/sftp/SftpClient;->stripEOL:Z

    .line 357
    iput v2, p0, Lcom/sshtools/client/sftp/SftpClient;->transferMode:I

    .line 693
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/sshtools/client/sftp/SftpClient;->customRoots:Ljava/util/Vector;

    .line 1433
    iput v2, p0, Lcom/sshtools/client/sftp/SftpClient;->RegExpSyntax:I

    .line 360
    invoke-static {p1}, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->-$$Nest$fgetfileFactory(Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/sshtools/client/sftp/SftpClient$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Lcom/sshtools/client/sftp/SftpClient$$ExternalSyntheticLambda1;-><init>(Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/common/files/AbstractFileFactory;

    .line 364
    invoke-static {p1}, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->-$$Nest$fgetasyncRequests(Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;)Ljava/util/Optional;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/sshtools/client/sftp/SftpClient;->asyncRequests:I

    .line 365
    invoke-static {p1}, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->-$$Nest$fgetbufferSize(Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;)I

    move-result v2

    iput v2, p0, Lcom/sshtools/client/sftp/SftpClient;->buffersize:I

    .line 366
    invoke-static {p1}, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->-$$Nest$fgetblockSize(Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;)Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/sshtools/client/sftp/SftpClient;->blocksize:I

    .line 367
    new-instance v2, Lcom/sshtools/client/sftp/SftpChannel;

    invoke-static {p1}, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->-$$Nest$fgetconnection(Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/sshtools/client/sftp/SftpClient$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Lcom/sshtools/client/sftp/SftpClient$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sshtools/common/ssh/SshConnection;

    invoke-direct {v2, v3}, Lcom/sshtools/client/sftp/SftpChannel;-><init>(Lcom/sshtools/common/ssh/SshConnection;)V

    iput-object v2, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    .line 368
    invoke-static {p1}, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->-$$Nest$fgetlocalPath(Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;)Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3}, Lcom/sshtools/common/files/AbstractFileFactory;->getFile(Ljava/lang/String;)Lcom/sshtools/common/files/AbstractFile;

    move-result-object v1

    iput-object v1, p0, Lcom/sshtools/client/sftp/SftpClient;->lcwd:Lcom/sshtools/common/files/AbstractFile;

    .line 369
    invoke-static {p1}, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->-$$Nest$fgetremotePath(Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/sshtools/client/sftp/SftpClient;->cwd:Ljava/lang/String;

    .line 370
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient;->customRoots:Ljava/util/Vector;

    invoke-static {p1}, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->-$$Nest$fgetcustomRoots(Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 371
    invoke-static {p1}, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->-$$Nest$fgetcharset(Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    invoke-static {p1}, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->-$$Nest$fgetcharset(Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/sshtools/client/sftp/SftpChannel;->setCharsetEncoding(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private checkAttributes(Lcom/sshtools/client/sftp/SftpFile;)Lcom/sshtools/common/sftp/SftpFileAttributes;
    .locals 0

    .line 4023
    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpFile;->attributes()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object p1

    return-object p1
.end method

.method private fileToBasicAttributes(Lcom/sshtools/client/sftp/SftpFile;)Ljava/nio/file/attribute/BasicFileAttributes;
    .locals 1

    .line 3973
    invoke-direct {p0, p1}, Lcom/sshtools/client/sftp/SftpClient;->checkAttributes(Lcom/sshtools/client/sftp/SftpFile;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object p1

    .line 3974
    new-instance v0, Lcom/sshtools/client/sftp/SftpClient$1;

    invoke-direct {v0, p0, p1}, Lcom/sshtools/client/sftp/SftpClient$1;-><init>(Lcom/sshtools/client/sftp/SftpClient;Lcom/sshtools/common/sftp/SftpFileAttributes;)V

    return-object v0
.end method

.method public static formatLongname(Lcom/sshtools/client/sftp/SftpFile;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 3213
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpFile;->attributes()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpFile;->getFilename()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sshtools/client/sftp/SftpClient;->formatLongname(Lcom/sshtools/common/sftp/SftpFileAttributes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatLongname(Lcom/sshtools/common/sftp/SftpFileAttributes;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 3231
    invoke-virtual {p0}, Lcom/sshtools/common/sftp/SftpFileAttributes;->toPermissionsString()Ljava/lang/String;

    move-result-object v0

    .line 3232
    invoke-virtual {p0}, Lcom/sshtools/common/sftp/SftpFileAttributes;->linkCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3233
    invoke-virtual {p0}, Lcom/sshtools/common/sftp/SftpFileAttributes;->bestUsername()Ljava/lang/String;

    move-result-object v2

    .line 3234
    invoke-virtual {p0}, Lcom/sshtools/common/sftp/SftpFileAttributes;->bestGroup()Ljava/lang/String;

    move-result-object v3

    .line 3235
    invoke-virtual {p0}, Lcom/sshtools/common/sftp/SftpFileAttributes;->size()Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sshtools/common/util/UnsignedInteger64;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 3236
    invoke-virtual {p0}, Lcom/sshtools/common/sftp/SftpFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object p0

    invoke-static {p0}, Lcom/sshtools/client/sftp/SftpClient;->getModTimeString(Ljava/nio/file/attribute/FileTime;)Ljava/lang/String;

    move-result-object v5

    move-object v6, p1

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    .line 3230
    const-string p1, "%9s %d %-9s %-9s %10d %12s %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getChildNames(Lcom/sshtools/common/files/AbstractFile;)[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 3158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3159
    invoke-interface {p1}, Lcom/sshtools/common/files/AbstractFile;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/common/files/AbstractFile;

    .line 3160
    invoke-interface {v1}, Lcom/sshtools/common/files/AbstractFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3162
    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method private getFileMatches(Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;Z)[Lcom/sshtools/client/sftp/SftpFile;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 1515
    invoke-virtual {p0, p1}, Lcom/sshtools/client/sftp/SftpClient;->matchRemoteFiles(Ljava/lang/String;)[Lcom/sshtools/client/sftp/SftpFile;

    move-result-object p1

    .line 1517
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    .line 1522
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 1523
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lcom/sshtools/client/sftp/SftpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p2, p3, p4}, Lcom/sshtools/client/sftp/SftpClient;->get(Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;Z)Lcom/sshtools/common/sftp/SftpFileAttributes;

    .line 1524
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1527
    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p1

    new-array p1, p1, [Lcom/sshtools/client/sftp/SftpFile;

    .line 1528
    invoke-virtual {v0, p1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object p1
.end method

.method private static getModTimeString(Ljava/nio/file/attribute/FileTime;)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    .line 3242
    const-string p0, ""

    return-object p0

    .line 3246
    :cond_0
    invoke-virtual {p0}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide v0

    .line 3247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide v4, 0x39ef8b000L

    cmp-long p0, v2, v4

    if-lez p0, :cond_1

    .line 3250
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v2, "MMM dd  yyyy"

    invoke-direct {p0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 3252
    :cond_1
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v2, "MMM dd hh:mm"

    invoke-direct {p0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3255
    :goto_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private internalPut(JLjava/io/InputStream;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;JILcom/sshtools/common/sftp/SftpFileAttributes;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v2, p4

    move-object/from16 v7, p5

    .line 2187
    const-string v10, "]"

    .line 0
    const-string v11, "SSH exception during transfer ["

    const-string v12, "SFTP status exception during transfer ["

    const/4 v13, 0x0

    .line 2187
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    move/from16 v1, p8

    move-object/from16 v3, p9

    invoke-virtual {v0, v2, v1, v3}, Lcom/sshtools/client/sftp/SftpChannel;->openFile(Ljava/lang/String;ILcom/sshtools/common/sftp/SftpFileAttributes;)Lcom/sshtools/client/sftp/SftpHandle;

    move-result-object v1
    :try_end_0
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sshtools/client/sftp/TransferCancelledException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v7, :cond_0

    move-wide v3, p1

    .line 2189
    :try_start_1
    invoke-interface {v7, v3, v4, v2}, Lcom/sshtools/client/tasks/FileTransferProgress;->started(JLjava/lang/String;)V

    .line 2191
    :cond_0
    iget v3, p0, Lcom/sshtools/client/sftp/SftpClient;->blocksize:I

    iget v4, p0, Lcom/sshtools/client/sftp/SftpClient;->asyncRequests:I

    iget v6, p0, Lcom/sshtools/client/sftp/SftpClient;->buffersize:I

    const-wide/16 v8, 0x0

    cmp-long v0, p6, v8

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    move-wide/from16 v8, p6

    :goto_0
    move-object/from16 v5, p3

    invoke-virtual/range {v1 .. v9}, Lcom/sshtools/client/sftp/SftpHandle;->performOptimizedWrite(Ljava/lang/String;IILjava/io/InputStream;ILcom/sshtools/client/tasks/FileTransferProgress;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_2

    .line 2193
    :try_start_2
    invoke-virtual {v1}, Lcom/sshtools/client/sftp/SftpHandle;->close()V
    :try_end_2
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sshtools/client/sftp/TransferCancelledException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 2207
    :cond_2
    :try_start_3
    invoke-virtual/range {p3 .. p3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    if-eqz p5, :cond_3

    .line 2213
    invoke-interface/range {p5 .. p5}, Lcom/sshtools/client/tasks/FileTransferProgress;->completed()V

    :cond_3
    return-void

    :catchall_1
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_4

    .line 2187
    :try_start_4
    invoke-virtual {v1}, Lcom/sshtools/client/sftp/SftpHandle;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v2
    :try_end_5
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/sshtools/client/sftp/TransferCancelledException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 2203
    :try_start_6
    const-string v1, "Transfer cancelled"

    new-array v2, v13, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 2204
    throw v0

    :catch_1
    move-exception v0

    .line 2197
    invoke-virtual {v0}, Lcom/sshtools/common/ssh/SshException;->getReason()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v13, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 2198
    invoke-virtual {v0}, Lcom/sshtools/common/ssh/SshException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 2199
    const-string v1, "SSH exception cause"

    invoke-virtual {v0}, Lcom/sshtools/common/ssh/SshException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    new-array v3, v13, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 2201
    :cond_5
    throw v0

    :catch_2
    move-exception v0

    .line 2194
    invoke-virtual {v0}, Lcom/sshtools/common/sftp/SftpStatusException;->getStatus()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v13, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 2195
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 2207
    :goto_2
    :try_start_7
    invoke-virtual/range {p3 .. p3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 2210
    :catchall_4
    throw v0
.end method

.method private isWindowsRoot(Ljava/lang/String;)Z
    .locals 5

    .line 681
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-le v0, v2, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x61

    const/4 v4, 0x1

    if-lt v0, v3, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x7a

    if-le v0, v3, :cond_1

    .line 682
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x41

    if-lt v0, v3, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x5a

    if-gt v0, v3, :cond_2

    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x3a

    if-ne v0, v3, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2f

    if-eq v0, v3, :cond_3

    .line 683
    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x5c

    if-ne p1, v0, :cond_4

    :cond_3
    return v4

    :cond_4
    return v1
.end method

.method static synthetic lambda$new$0()Ljava/nio/file/Path;
    .locals 2

    .line 361
    const-string v0, "user.home"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$new$1(Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;)Lcom/sshtools/common/files/AbstractFileFactory;
    .locals 3

    .line 360
    invoke-static {}, Lcom/sshtools/common/files/direct/NioFileFactory$NioFileFactoryBuilder;->create()Lcom/sshtools/common/files/direct/NioFileFactory$NioFileFactoryBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->-$$Nest$fgetlocalHome(Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/sshtools/client/sftp/SftpClient$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/sshtools/client/sftp/SftpClient$$ExternalSyntheticLambda0;-><init>()V

    .line 361
    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/file/Path;

    invoke-virtual {v0, v1}, Lcom/sshtools/common/files/direct/NioFileFactory$NioFileFactoryBuilder;->withHome(Ljava/nio/file/Path;)Lcom/sshtools/common/files/direct/NioFileFactory$NioFileFactoryBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->-$$Nest$fgetlocalHomeSandbox(Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;)Z

    move-result p0

    .line 362
    invoke-virtual {v0, p0}, Lcom/sshtools/common/files/direct/NioFileFactory$NioFileFactoryBuilder;->withSandbox(Z)Lcom/sshtools/common/files/direct/NioFileFactory$NioFileFactoryBuilder;

    move-result-object p0

    .line 363
    invoke-virtual {p0}, Lcom/sshtools/common/files/direct/NioFileFactory$NioFileFactoryBuilder;->build()Lcom/sshtools/common/files/direct/NioFileFactory;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$new$2()Ljava/lang/IllegalStateException;
    .locals 2

    .line 367
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Either an existing connection or an existing client must be provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private listFiles(Lcom/sshtools/common/files/AbstractFile;)[Lcom/sshtools/common/files/AbstractFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 1578
    invoke-interface {p1}, Lcom/sshtools/common/files/AbstractFile;->getChildren()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/sshtools/common/files/AbstractFile;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/sshtools/common/files/AbstractFile;

    return-object p1
.end method

.method private matchLocalFiles(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 1549
    invoke-static {p1}, Lcom/sshtools/common/util/FileUtils;->hasParents(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1550
    invoke-static {p1}, Lcom/sshtools/common/util/FileUtils;->getParentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sshtools/client/sftp/SftpClient;->resolveLocalPath(Ljava/lang/String;)Lcom/sshtools/common/files/AbstractFile;

    move-result-object v0

    .line 1551
    invoke-static {p1}, Lcom/sshtools/common/util/FileUtils;->getFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1553
    :cond_0
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient;->lcwd:Lcom/sshtools/common/files/AbstractFile;

    move-object v1, p1

    .line 1559
    :goto_0
    iget v2, p0, Lcom/sshtools/client/sftp/SftpClient;->RegExpSyntax:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    .line 1569
    new-instance v0, Lcom/sshtools/client/sftp/NoRegExpMatching;

    invoke-direct {v0}, Lcom/sshtools/client/sftp/NoRegExpMatching;-><init>()V

    .line 1570
    new-array v2, v3, [Lcom/sshtools/common/files/AbstractFile;

    .line 1571
    iget-object v3, p0, Lcom/sshtools/client/sftp/SftpClient;->lcwd:Lcom/sshtools/common/files/AbstractFile;

    invoke-interface {v3, p1}, Lcom/sshtools/common/files/AbstractFile;->resolveFile(Ljava/lang/String;)Lcom/sshtools/common/files/AbstractFile;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    goto :goto_2

    .line 1565
    :cond_1
    new-instance p1, Lcom/sshtools/client/sftp/RegExpMatching;

    invoke-direct {p1}, Lcom/sshtools/client/sftp/RegExpMatching;-><init>()V

    .line 1566
    invoke-direct {p0, v0}, Lcom/sshtools/client/sftp/SftpClient;->listFiles(Lcom/sshtools/common/files/AbstractFile;)[Lcom/sshtools/common/files/AbstractFile;

    move-result-object v2

    goto :goto_1

    .line 1561
    :cond_2
    new-instance p1, Lcom/sshtools/client/sftp/GlobRegExpMatching;

    invoke-direct {p1}, Lcom/sshtools/client/sftp/GlobRegExpMatching;-><init>()V

    .line 1562
    invoke-direct {p0, v0}, Lcom/sshtools/client/sftp/SftpClient;->listFiles(Lcom/sshtools/common/files/AbstractFile;)[Lcom/sshtools/common/files/AbstractFile;

    move-result-object v2

    :goto_1
    move-object v0, p1

    .line 1574
    :goto_2
    invoke-interface {v0, v2, v1}, Lcom/sshtools/client/sftp/RegularExpressionMatching;->matchFileNamesWithPattern([Lcom/sshtools/common/files/AbstractFile;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private openDirectoryHandle(Ljava/lang/String;Lcom/sshtools/common/util/ByteArrayWriter;)Lcom/sshtools/client/sftp/SftpHandle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/common/sftp/SftpStatusException;
        }
    .end annotation

    .line 1039
    new-instance v0, Lcom/sshtools/client/sftp/SftpFile;

    iget-object v1, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v1, p1}, Lcom/sshtools/client/sftp/SftpChannel;->getAttributes(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/sshtools/client/sftp/SftpFile;-><init>(Ljava/lang/String;Lcom/sshtools/common/sftp/SftpFileAttributes;Ljava/lang/String;)V

    .line 1041
    :try_start_0
    iget-object v1, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    const-string v2, "open-directory-with-filter@sshtools.com"

    .line 1042
    invoke-virtual {p2}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lcom/sshtools/client/sftp/SftpChannel;->sendExtensionMessage(Ljava/lang/String;[B)Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object p2

    .line 1041
    invoke-virtual {v1, p2, v0}, Lcom/sshtools/client/sftp/SftpChannel;->getHandle(Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/client/sftp/SftpFile;)Lcom/sshtools/client/sftp/SftpHandle;

    move-result-object p1
    :try_end_0
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 1045
    :catch_0
    const-string p2, "maverick.disableLocalFiltering"

    invoke-static {p2}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 1049
    iget-object p2, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {p2, p1}, Lcom/sshtools/client/sftp/SftpChannel;->openDirectory(Ljava/lang/String;)Lcom/sshtools/client/sftp/SftpHandle;

    move-result-object p1

    return-object p1

    .line 1046
    :cond_0
    new-instance p1, Lcom/sshtools/common/ssh/SshException;

    const-string p2, "Remote server does not support server side filtering"

    const v0, 0xe007

    invoke-direct {p1, p2, v0}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method private putFileMatches(Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 1606
    const-string v0, "Remote path \'"

    invoke-direct {p0, p2}, Lcom/sshtools/client/sftp/SftpClient;->resolveRemotePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1611
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/sshtools/client/sftp/SftpClient;->stat(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v2
    :try_end_0
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1617
    invoke-virtual {v2}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1621
    invoke-direct {p0, p1}, Lcom/sshtools/client/sftp/SftpClient;->matchLocalFiles(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1623
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1624
    array-length v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Matched {} files for {}"

    invoke-static {v2, p1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    .line 1627
    :goto_0
    array-length v2, v0

    if-ge p1, v2, :cond_1

    .line 1629
    :try_start_1
    aget-object v2, v0, p1

    invoke-virtual {p0, v2, v1, p3, p4}, Lcom/sshtools/client/sftp/SftpClient;->put(Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;Z)V
    :try_end_1
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p3

    .line 1631
    new-instance p4, Lcom/sshtools/common/sftp/SftpStatusException;

    invoke-virtual {p3}, Lcom/sshtools/common/sftp/SftpStatusException;->getStatus()I

    move-result v1

    aget-object p1, v0, p1

    .line 1632
    invoke-virtual {p3}, Lcom/sshtools/common/sftp/SftpStatusException;->getMessage()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Failed to put "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, v1, p1}, Lcom/sshtools/common/sftp/SftpStatusException;-><init>(ILjava/lang/String;)V

    throw p4

    :cond_1
    return-void

    .line 1618
    :cond_2
    new-instance p1, Lcom/sshtools/common/sftp/SftpStatusException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "\' is not a directory!"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0xa

    invoke-direct {p1, p3, p2}, Lcom/sshtools/common/sftp/SftpStatusException;-><init>(ILjava/lang/String;)V

    throw p1

    :catch_1
    move-exception p1

    .line 1613
    new-instance p3, Lcom/sshtools/common/sftp/SftpStatusException;

    invoke-virtual {p1}, Lcom/sshtools/common/sftp/SftpStatusException;->getStatus()I

    move-result p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, "\' does not exist. It must be a valid directory and must already exist!"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p1, p2}, Lcom/sshtools/common/sftp/SftpStatusException;-><init>(ILjava/lang/String;)V

    throw p3
.end method

.method private recurseMarkForDeletion(Lcom/sshtools/client/sftp/SftpFile;Lcom/sshtools/client/sftp/DirectoryOperation;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 3166
    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sshtools/client/sftp/SftpClient;->ls(Ljava/lang/String;)[Lcom/sshtools/client/sftp/SftpFile;

    move-result-object v0

    .line 3167
    invoke-virtual {p2, p1}, Lcom/sshtools/client/sftp/DirectoryOperation;->addDeletedFile(Lcom/sshtools/client/sftp/SftpFile;)V

    const/4 p1, 0x0

    .line 3169
    :goto_0
    array-length v1, v0

    if-ge p1, v1, :cond_2

    .line 3170
    aget-object v1, v0, p1

    .line 3172
    invoke-virtual {v1}, Lcom/sshtools/client/sftp/SftpFile;->attributes()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/sshtools/client/sftp/SftpFile;->getFilename()Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/sshtools/client/sftp/SftpFile;->getFilename()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3173
    invoke-direct {p0, v1, p2}, Lcom/sshtools/client/sftp/SftpClient;->recurseMarkForDeletion(Lcom/sshtools/client/sftp/SftpFile;Lcom/sshtools/client/sftp/DirectoryOperation;)V

    goto :goto_1

    .line 3174
    :cond_0
    invoke-virtual {v1}, Lcom/sshtools/client/sftp/SftpFile;->attributes()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3175
    invoke-virtual {p2, v1}, Lcom/sshtools/client/sftp/DirectoryOperation;->addDeletedFile(Lcom/sshtools/client/sftp/SftpFile;)V

    :cond_1
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private recurseMarkForDeletion(Lcom/sshtools/common/files/AbstractFile;Lcom/sshtools/client/sftp/DirectoryOperation;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 3182
    invoke-direct {p0, p1}, Lcom/sshtools/client/sftp/SftpClient;->getChildNames(Lcom/sshtools/common/files/AbstractFile;)[Ljava/lang/String;

    move-result-object v0

    .line 3183
    invoke-virtual {p2, p1}, Lcom/sshtools/client/sftp/DirectoryOperation;->addDeletedFile(Lcom/sshtools/common/files/AbstractFile;)V

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 3186
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 3187
    aget-object v2, v0, v1

    invoke-interface {p1, v2}, Lcom/sshtools/common/files/AbstractFile;->resolveFile(Ljava/lang/String;)Lcom/sshtools/common/files/AbstractFile;

    move-result-object p1

    .line 3189
    invoke-interface {p1}, Lcom/sshtools/common/files/AbstractFile;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/sshtools/common/files/AbstractFile;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1}, Lcom/sshtools/common/files/AbstractFile;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3190
    invoke-direct {p0, p1, p2}, Lcom/sshtools/client/sftp/SftpClient;->recurseMarkForDeletion(Lcom/sshtools/common/files/AbstractFile;Lcom/sshtools/client/sftp/DirectoryOperation;)V

    goto :goto_1

    .line 3191
    :cond_0
    invoke-interface {p1}, Lcom/sshtools/common/files/AbstractFile;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3192
    invoke-virtual {p2, p1}, Lcom/sshtools/client/sftp/DirectoryOperation;->addDeletedFile(Lcom/sshtools/common/files/AbstractFile;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private resolveLocalPath(Ljava/lang/String;)Lcom/sshtools/common/files/AbstractFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 674
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient;->lcwd:Lcom/sshtools/common/files/AbstractFile;

    invoke-interface {v0, p1}, Lcom/sshtools/common/files/AbstractFile;->resolveFile(Ljava/lang/String;)Lcom/sshtools/common/files/AbstractFile;

    move-result-object p1

    return-object p1
.end method

.method private resolveRemotePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 743
    invoke-direct {p0}, Lcom/sshtools/client/sftp/SftpClient;->verifyConnection()V

    .line 746
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sshtools/client/sftp/SftpClient;->cwd:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/sshtools/client/sftp/SftpClient;->isWindowsRoot(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/sshtools/client/sftp/SftpClient;->startsWithCustomRoot(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 747
    iget-object v1, p0, Lcom/sshtools/client/sftp/SftpClient;->cwd:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 752
    :cond_1
    const-string v1, "maverick.disableSlashRemoval"

    invoke-static {v1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 753
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method private startsWithCustomRoot(Ljava/lang/String;)Z
    .locals 2

    .line 725
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient;->customRoots:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 726
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private verifyConnection()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 760
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpChannel;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 761
    :cond_0
    new-instance v0, Lcom/sshtools/common/ssh/SshException;

    const-string v1, "The SFTP connection has been closed"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method


# virtual methods
.method public addCustomRoot(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "3.1.0"
    .end annotation

    .line 703
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient;->customRoots:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public append(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;
        }
    .end annotation

    const-wide/16 v4, -0x1

    const-wide/16 v6, -0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 1906
    invoke-virtual/range {v0 .. v7}, Lcom/sshtools/client/sftp/SftpClient;->put(Ljava/io/InputStream;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;JJ)V

    return-void
.end method

.method public append(Ljava/io/InputStream;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1912
    invoke-virtual/range {v0 .. v5}, Lcom/sshtools/client/sftp/SftpClient;->append(Ljava/io/InputStream;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;J)V

    return-void
.end method

.method public append(Ljava/io/InputStream;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;
        }
    .end annotation

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v6, p4

    .line 1917
    invoke-virtual/range {v0 .. v7}, Lcom/sshtools/client/sftp/SftpClient;->put(Ljava/io/InputStream;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;JJ)V

    return-void
.end method

.method public append(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1997
    invoke-virtual {p0, p1, p2, v0}, Lcom/sshtools/client/sftp/SftpClient;->append(Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;)V

    return-void
.end method

.method public append(Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 2003
    invoke-virtual/range {v0 .. v5}, Lcom/sshtools/client/sftp/SftpClient;->append(Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;J)V

    return-void
.end method

.method public append(Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 2008
    invoke-direct {p0, p1}, Lcom/sshtools/client/sftp/SftpClient;->resolveLocalPath(Ljava/lang/String;)Lcom/sshtools/common/files/AbstractFile;

    move-result-object p1

    .line 2010
    invoke-direct {p0, p2}, Lcom/sshtools/client/sftp/SftpClient;->resolveRemotePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2011
    invoke-virtual {p0, v3}, Lcom/sshtools/client/sftp/SftpClient;->stat(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    .line 2013
    invoke-interface {p1}, Lcom/sshtools/common/files/AbstractFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    move-object v1, p0

    move-object v4, p3

    move-wide v5, p4

    .line 2016
    :try_start_0
    invoke-virtual/range {v1 .. v6}, Lcom/sshtools/client/sftp/SftpClient;->append(Ljava/io/InputStream;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2020
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2023
    :catch_1
    throw p1
.end method

.method public cd(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 623
    const-string v0, ""

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 626
    :cond_0
    invoke-direct {p0, p1}, Lcom/sshtools/client/sftp/SftpClient;->resolveRemotePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 627
    iget-object v2, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v2, v1}, Lcom/sshtools/client/sftp/SftpChannel;->getAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 624
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v1}, Lcom/sshtools/client/sftp/SftpChannel;->getDefaultDirectory()Ljava/lang/String;

    move-result-object v1

    .line 630
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 631
    iget-object v2, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v2, v1}, Lcom/sshtools/client/sftp/SftpChannel;->getAttributes(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v2

    .line 633
    invoke-virtual {v2}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 634
    :cond_2
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

    .line 638
    :cond_3
    :goto_2
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 639
    iget-object p1, p0, Lcom/sshtools/client/sftp/SftpClient;->cwd:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "user default dir"

    goto :goto_3

    :cond_4
    move-object v0, v1

    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Changing dir from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " to "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 641
    :cond_5
    iput-object v1, p0, Lcom/sshtools/client/sftp/SftpClient;->cwd:Ljava/lang/String;

    return-void
.end method

.method public cdup()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 666
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient;->cwd:Ljava/lang/String;

    invoke-static {v0}, Lcom/sshtools/common/util/FileUtils;->stripLastPathElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 669
    iput-object v0, p0, Lcom/sshtools/client/sftp/SftpClient;->cwd:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public chgrp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 2339
    invoke-direct {p0, p2}, Lcom/sshtools/client/sftp/SftpClient;->resolveRemotePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2341
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v0, p2}, Lcom/sshtools/client/sftp/SftpChannel;->getAttributes(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v0

    .line 2342
    invoke-virtual {v0}, Lcom/sshtools/common/sftp/SftpFileAttributes;->type()I

    move-result v1

    iget-object v2, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v2}, Lcom/sshtools/client/sftp/SftpChannel;->getCharsetEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->ofType(ILjava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    move-result-object v1

    .line 2343
    invoke-virtual {v1, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->withGidOrGroup(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    .line 2344
    iget-object p1, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpChannel;->getVersion()I

    move-result p1

    const/4 v2, 0x3

    if-gt p1, v2, :cond_0

    .line 2345
    invoke-virtual {v0}, Lcom/sshtools/common/sftp/SftpFileAttributes;->uid()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->withUid(I)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    .line 2347
    :cond_0
    iget-object p1, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->build()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/sshtools/client/sftp/SftpChannel;->setAttributes(Ljava/lang/String;Lcom/sshtools/common/sftp/SftpFileAttributes;)V

    return-void
.end method

.method public chmod(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        since = "3.1.0"
    .end annotation

    .line 2412
    invoke-direct {p0, p2}, Lcom/sshtools/client/sftp/SftpClient;->resolveRemotePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2413
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v0, p2, p1}, Lcom/sshtools/client/sftp/SftpChannel;->changePermissions(Ljava/lang/String;I)V

    return-void
.end method

.method public chmod(Lcom/sshtools/common/sftp/PosixPermissions;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 2369
    invoke-virtual {p1}, Lcom/sshtools/common/sftp/PosixPermissions;->asInt()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/sshtools/client/sftp/SftpClient;->chmod(ILjava/lang/String;)V

    return-void
.end method

.method public chown(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 2278
    invoke-direct {p0, p2}, Lcom/sshtools/client/sftp/SftpClient;->resolveRemotePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2280
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v0, p2}, Lcom/sshtools/client/sftp/SftpChannel;->getAttributes(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v0

    .line 2281
    invoke-virtual {v0}, Lcom/sshtools/common/sftp/SftpFileAttributes;->type()I

    move-result v1

    iget-object v2, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v2}, Lcom/sshtools/client/sftp/SftpChannel;->getCharsetEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->ofType(ILjava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    move-result-object v1

    .line 2282
    invoke-virtual {v1, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->withUidOrUsername(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    .line 2283
    iget-object p1, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpChannel;->getVersion()I

    move-result p1

    const/4 v2, 0x3

    if-gt p1, v2, :cond_0

    .line 2284
    invoke-virtual {v0}, Lcom/sshtools/common/sftp/SftpFileAttributes;->gid()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->withGid(I)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    .line 2286
    :cond_0
    iget-object p1, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->build()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/sshtools/client/sftp/SftpChannel;->setAttributes(Ljava/lang/String;Lcom/sshtools/common/sftp/SftpFileAttributes;)V

    return-void
.end method

.method public chown(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 2317
    invoke-direct {p0, p3}, Lcom/sshtools/client/sftp/SftpClient;->resolveRemotePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 2319
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v0, p3}, Lcom/sshtools/client/sftp/SftpChannel;->getAttributes(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v0

    .line 2320
    invoke-virtual {v0}, Lcom/sshtools/common/sftp/SftpFileAttributes;->type()I

    move-result v0

    iget-object v1, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v1}, Lcom/sshtools/client/sftp/SftpChannel;->getCharsetEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->ofType(ILjava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    move-result-object v0

    .line 2321
    invoke-virtual {v0, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->withUidOrUsername(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    .line 2322
    invoke-virtual {v0, p2}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->withGidOrGroup(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    .line 2323
    iget-object p1, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v0}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->build()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/sshtools/client/sftp/SftpChannel;->setAttributes(Ljava/lang/String;Lcom/sshtools/common/sftp/SftpFileAttributes;)V

    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3918
    :try_start_0
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpClient;->quit()V
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 3920
    new-instance v1, Lcom/sshtools/common/ssh/SshIOException;

    invoke-direct {v1, v0}, Lcom/sshtools/common/ssh/SshIOException;-><init>(Lcom/sshtools/common/ssh/SshException;)V

    throw v1
.end method

.method public copyRemoteFile(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2498
    new-instance v0, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {v0}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V

    .line 2501
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sshtools/client/sftp/SftpClient;->resolveRemotePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 2502
    invoke-direct {p0, p2}, Lcom/sshtools/client/sftp/SftpClient;->resolveRemotePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 2503
    invoke-virtual {v0, p3}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBoolean(Z)V

    .line 2505
    iget-object p1, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    const-string p3, "copy-file"

    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, p3, v1}, Lcom/sshtools/client/sftp/SftpChannel;->sendExtensionMessage(Ljava/lang/String;[B)Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lcom/sshtools/client/sftp/SftpChannel;->getOKRequestStatus(Lcom/sshtools/common/util/UnsignedInteger32;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2509
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V

    .line 2510
    throw p1
.end method

.method protected doCheckFileHandle(Ljava/lang/String;JJLcom/sshtools/client/sftp/RemoteHash;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 2922
    new-instance v0, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {v0}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V

    .line 2925
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 2926
    invoke-virtual {p6}, Lcom/sshtools/client/sftp/RemoteHash;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 2927
    invoke-virtual {v0, p2, p3}, Lcom/sshtools/common/util/ByteArrayWriter;->writeUINT64(J)V

    .line 2928
    invoke-virtual {v0, p4, p5}, Lcom/sshtools/common/util/ByteArrayWriter;->writeUINT64(J)V

    const-wide/16 p2, 0x0

    .line 2929
    invoke-virtual {v0, p2, p3}, Lcom/sshtools/common/util/ByteArrayWriter;->writeInt(J)V

    .line 2931
    iget-object p2, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    const-string p3, "check-file-name"

    .line 2932
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/sshtools/client/sftp/SftpChannel;->sendExtensionMessage(Ljava/lang/String;[B)Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/sshtools/client/sftp/SftpChannel;->getExtensionResponse(Lcom/sshtools/common/util/UnsignedInteger32;Ljava/lang/String;)Lcom/sshtools/client/sftp/SftpMessage;

    move-result-object p1

    .line 2931
    invoke-virtual {p0, p1, p6}, Lcom/sshtools/client/sftp/SftpClient;->processCheckFileResponse(Lcom/sshtools/client/sftp/SftpMessage;Lcom/sshtools/client/sftp/RemoteHash;)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2937
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V

    .line 2938
    throw p1
.end method

.method protected doCheckHashHandle([BJJLcom/sshtools/client/sftp/RemoteHash;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 2899
    new-instance v0, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {v0}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V

    .line 2902
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBinaryString([B)V

    .line 2903
    invoke-virtual {p6}, Lcom/sshtools/client/sftp/RemoteHash;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 2904
    invoke-virtual {v0, p2, p3}, Lcom/sshtools/common/util/ByteArrayWriter;->writeUINT64(J)V

    .line 2905
    invoke-virtual {v0, p4, p5}, Lcom/sshtools/common/util/ByteArrayWriter;->writeUINT64(J)V

    const-wide/16 p2, 0x0

    .line 2906
    invoke-virtual {v0, p2, p3}, Lcom/sshtools/common/util/ByteArrayWriter;->writeInt(J)V

    .line 2908
    iget-object p2, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {p2, p1}, Lcom/sshtools/client/sftp/SftpChannel;->getBestHandle([B)Lcom/sshtools/client/sftp/SftpHandle;

    move-result-object p1

    .line 2909
    iget-object p2, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    const-string p3, "check-file-handle"

    .line 2910
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/sshtools/client/sftp/SftpChannel;->sendExtensionMessage(Ljava/lang/String;[B)Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object p3

    .line 2911
    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpHandle;->getFile()Lcom/sshtools/client/sftp/SftpFile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 2910
    invoke-virtual {p2, p3, p1}, Lcom/sshtools/client/sftp/SftpChannel;->getExtensionResponse(Lcom/sshtools/common/util/UnsignedInteger32;Ljava/lang/String;)Lcom/sshtools/client/sftp/SftpMessage;

    move-result-object p1

    .line 2909
    invoke-virtual {p0, p1, p6}, Lcom/sshtools/client/sftp/SftpClient;->processCheckFileResponse(Lcom/sshtools/client/sftp/SftpMessage;Lcom/sshtools/client/sftp/RemoteHash;)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2915
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V

    .line 2916
    throw p1
.end method

.method protected doMD5HashHandle([BJJ[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 2978
    new-instance v0, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {v0}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V

    .line 2981
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBinaryString([B)V

    .line 2982
    invoke-virtual {v0, p2, p3}, Lcom/sshtools/common/util/ByteArrayWriter;->writeUINT64(J)V

    .line 2983
    invoke-virtual {v0, p4, p5}, Lcom/sshtools/common/util/ByteArrayWriter;->writeUINT64(J)V

    .line 2984
    invoke-virtual {v0, p6}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBinaryString([B)V

    .line 2986
    iget-object p2, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {p2, p1}, Lcom/sshtools/client/sftp/SftpChannel;->getBestHandle([B)Lcom/sshtools/client/sftp/SftpHandle;

    move-result-object p1

    .line 2988
    iget-object p2, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    const-string p3, "md5-hash-handle"

    .line 2989
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/sshtools/client/sftp/SftpChannel;->sendExtensionMessage(Ljava/lang/String;[B)Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object p3

    .line 2990
    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpHandle;->getFile()Lcom/sshtools/client/sftp/SftpFile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 2989
    invoke-virtual {p2, p3, p1}, Lcom/sshtools/client/sftp/SftpChannel;->getExtensionResponse(Lcom/sshtools/common/util/UnsignedInteger32;Ljava/lang/String;)Lcom/sshtools/client/sftp/SftpMessage;

    move-result-object p1

    .line 2992
    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpMessage;->readString()Ljava/lang/String;

    .line 2993
    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpMessage;->readBinaryString()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2995
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V

    .line 2996
    throw p1
.end method

.method public exists(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 860
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sshtools/client/sftp/SftpClient;->stat(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;
    :try_end_0
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 864
    invoke-virtual {p1}, Lcom/sshtools/common/sftp/SftpStatusException;->getStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 868
    :cond_0
    throw p1
.end method

.method public exit()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 3017
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpChannel;->close()V

    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1208
    move-object v1, v0

    check-cast v1, Lcom/sshtools/client/tasks/FileTransferProgress;

    invoke-virtual {p0, p1, v0}, Lcom/sshtools/client/sftp/SftpClient;->get(Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;)Lcom/sshtools/common/sftp/SftpFileAttributes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1138
    invoke-virtual {p0, p1, p2, v0}, Lcom/sshtools/client/sftp/SftpClient;->get(Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;Z)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;Z)Lcom/sshtools/common/sftp/SftpFileAttributes;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 1163
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 1164
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 1169
    :goto_0
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/sshtools/client/sftp/SftpClient;->get(Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;Z)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Ljava/io/OutputStream;)Lcom/sshtools/common/sftp/SftpFileAttributes;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;
        }
    .end annotation

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 1795
    invoke-virtual/range {v0 .. v5}, Lcom/sshtools/client/sftp/SftpClient;->get(Ljava/lang/String;Ljava/io/OutputStream;Lcom/sshtools/client/tasks/FileTransferProgress;J)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Ljava/io/OutputStream;J)Lcom/sshtools/common/sftp/SftpFileAttributes;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    .line 1778
    invoke-virtual/range {v0 .. v5}, Lcom/sshtools/client/sftp/SftpClient;->get(Ljava/lang/String;Ljava/io/OutputStream;Lcom/sshtools/client/tasks/FileTransferProgress;J)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Ljava/io/OutputStream;Lcom/sshtools/client/tasks/FileTransferProgress;)Lcom/sshtools/common/sftp/SftpFileAttributes;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1419
    invoke-virtual/range {v0 .. v5}, Lcom/sshtools/client/sftp/SftpClient;->get(Ljava/lang/String;Ljava/io/OutputStream;Lcom/sshtools/client/tasks/FileTransferProgress;J)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Ljava/io/OutputStream;Lcom/sshtools/client/tasks/FileTransferProgress;J)Lcom/sshtools/common/sftp/SftpFileAttributes;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;
        }
    .end annotation

    move-object v7, p3

    .line 1658
    const-string v0, "newline@vandyke.com"

    invoke-direct/range {p0 .. p1}, Lcom/sshtools/client/sftp/SftpClient;->resolveRemotePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1659
    iget-object v2, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v2, v1}, Lcom/sshtools/client/sftp/SftpChannel;->getAttributes(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v10

    .line 1661
    invoke-virtual {v10}, Lcom/sshtools/common/sftp/SftpFileAttributes;->size()Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sshtools/common/util/UnsignedInteger64;->longValue()J

    move-result-wide v2

    cmp-long v2, p4, v2

    if-gtz v2, :cond_8

    if-eqz v7, :cond_0

    .line 1667
    invoke-virtual {v10}, Lcom/sshtools/common/sftp/SftpFileAttributes;->size()Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sshtools/common/util/UnsignedInteger64;->longValue()J

    move-result-wide v2

    sub-long v2, v2, p4

    invoke-interface {p3, v2, v3, v1}, Lcom/sshtools/client/tasks/FileTransferProgress;->started(JLjava/lang/String;)V

    .line 1672
    :cond_0
    iget v2, p0, Lcom/sshtools/client/sftp/SftpClient;->transferMode:I

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v2}, Lcom/sshtools/client/sftp/SftpChannel;->getVersion()I

    move-result v2

    if-le v2, v4, :cond_1

    .line 1673
    iget-object v2, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    const/16 v5, 0x41

    invoke-virtual {v2, v1, v5}, Lcom/sshtools/client/sftp/SftpChannel;->openFile(Ljava/lang/String;I)Lcom/sshtools/client/sftp/SftpHandle;

    move-result-object v1

    goto :goto_0

    .line 1676
    :cond_1
    iget-object v2, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    const/4 v5, 0x1

    invoke-virtual {v2, v1, v5}, Lcom/sshtools/client/sftp/SftpChannel;->openFile(Ljava/lang/String;I)Lcom/sshtools/client/sftp/SftpHandle;

    move-result-object v1

    :goto_0
    const/4 v11, 0x4

    .line 1681
    :try_start_0
    iget v2, p0, Lcom/sshtools/client/sftp/SftpClient;->transferMode:I

    if-ne v2, v3, :cond_6

    .line 1685
    iget v2, p0, Lcom/sshtools/client/sftp/SftpClient;->outputEOL:I

    .line 1686
    iget-boolean v3, p0, Lcom/sshtools/client/sftp/SftpClient;->stripEOL:Z

    if-eqz v3, :cond_2

    move v3, v11

    goto :goto_1

    :cond_2
    iget v3, p0, Lcom/sshtools/client/sftp/SftpClient;->inputEOL:I

    .line 1690
    :goto_1
    iget-object v5, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v5}, Lcom/sshtools/client/sftp/SftpChannel;->getVersion()I

    move-result v5

    if-gt v5, v4, :cond_3

    iget-object v5, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v5, v0}, Lcom/sshtools/client/sftp/SftpChannel;->getExtension(Ljava/lang/String;)[B

    move-result-object v5

    if-eqz v5, :cond_3

    .line 1691
    iget-object v4, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v4, v0}, Lcom/sshtools/client/sftp/SftpChannel;->getExtension(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_2

    .line 1692
    :cond_3
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpChannel;->getVersion()I

    move-result v0

    if-le v0, v4, :cond_4

    .line 1693
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpChannel;->getCanonicalNewline()[B

    move-result-object v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_5

    .line 1698
    iget-boolean v4, p0, Lcom/sshtools/client/sftp/SftpClient;->forceRemoteEOL:Z

    if-nez v4, :cond_5

    .line 1699
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v2}, Lcom/sshtools/client/sftp/SftpClient;->getEOL(Ljava/lang/String;)I

    move-result v2

    .line 1703
    :cond_5
    invoke-static {v2, v3, p2}, Lcom/sshtools/common/util/EOLProcessor;->createOutputStream(IILjava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/sshtools/client/sftp/TransferCancelledException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v5, v0

    goto :goto_3

    :cond_6
    move-object v5, p2

    .line 1706
    :goto_3
    :try_start_1
    invoke-virtual {v10}, Lcom/sshtools/common/sftp/SftpFileAttributes;->size()Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/util/UnsignedInteger64;->longValue()J

    move-result-wide v2

    iget v4, p0, Lcom/sshtools/client/sftp/SftpClient;->blocksize:I

    iget v6, p0, Lcom/sshtools/client/sftp/SftpClient;->asyncRequests:I

    move-wide/from16 v8, p4

    invoke-virtual/range {v1 .. v9}, Lcom/sshtools/client/sftp/SftpHandle;->performOptimizedRead(JILjava/io/OutputStream;ILcom/sshtools/client/tasks/FileTransferProgress;J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sshtools/client/sftp/TransferCancelledException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1718
    :try_start_2
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1722
    :catchall_0
    :try_start_3
    invoke-virtual {v1}, Lcom/sshtools/client/sftp/SftpHandle;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    if-eqz p3, :cond_7

    .line 1728
    invoke-interface {p3}, Lcom/sshtools/client/tasks/FileTransferProgress;->completed()V

    :cond_7
    return-object v10

    :catchall_1
    move-exception v0

    move-object v4, v5

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v4, v5

    goto :goto_4

    :catch_2
    move-object v4, v5

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v4, p2

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v4, p2

    .line 1715
    :goto_4
    :try_start_4
    throw v0

    :catch_4
    move-object v4, p2

    .line 1712
    :goto_5
    new-instance v0, Lcom/sshtools/common/sftp/SftpStatusException;

    const-string v2, "Failed to open text conversion outputstream"

    invoke-direct {v0, v11, v2}, Lcom/sshtools/common/sftp/SftpStatusException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception v0

    .line 1718
    :goto_6
    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 1722
    :catchall_4
    :try_start_6
    invoke-virtual {v1}, Lcom/sshtools/client/sftp/SftpHandle;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 1725
    :catch_5
    throw v0

    .line 1662
    :cond_8
    new-instance v0, Lcom/sshtools/common/sftp/SftpStatusException;

    const/16 v1, 0x65

    const-string v2, "The local file size is greater than the remote file"

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/sftp/SftpStatusException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1397
    invoke-virtual {p0, p1, p2, v0}, Lcom/sshtools/client/sftp/SftpClient;->get(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;)Lcom/sshtools/common/sftp/SftpFileAttributes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1245
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sshtools/client/sftp/SftpClient;->get(Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;Z)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;Z)Lcom/sshtools/common/sftp/SftpFileAttributes;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    const-string v0, "Failed to open outputstream to "

    .line 1277
    invoke-direct {p0, p2}, Lcom/sshtools/client/sftp/SftpClient;->resolveLocalPath(Ljava/lang/String;)Lcom/sshtools/common/files/AbstractFile;

    move-result-object v1

    .line 1278
    invoke-interface {v1}, Lcom/sshtools/common/files/AbstractFile;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1279
    invoke-interface {v1}, Lcom/sshtools/common/files/AbstractFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sshtools/common/util/FileUtils;->getParentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sshtools/common/files/AbstractFile;->resolveFile(Ljava/lang/String;)Lcom/sshtools/common/files/AbstractFile;

    move-result-object v2

    .line 1280
    invoke-interface {v2}, Lcom/sshtools/common/files/AbstractFile;->createFolder()Z

    .line 1283
    :cond_0
    invoke-interface {v1}, Lcom/sshtools/common/files/AbstractFile;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1284
    invoke-static {p1}, Lcom/sshtools/common/util/FileUtils;->getFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sshtools/common/files/AbstractFile;->resolveFile(Ljava/lang/String;)Lcom/sshtools/common/files/AbstractFile;

    move-result-object v1

    .line 1288
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sshtools/client/sftp/SftpClient;->stat(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    const/4 v2, 0x0

    if-eqz p4, :cond_2

    .line 1296
    :try_start_0
    invoke-interface {v1}, Lcom/sshtools/common/files/AbstractFile;->exists()Z

    move-result p4

    if-eqz p4, :cond_2

    const/4 p4, 0x1

    .line 1297
    invoke-interface {v1, p4}, Lcom/sshtools/common/files/AbstractFile;->getOutputStream(Z)Ljava/io/OutputStream;

    move-result-object v2

    .line 1298
    invoke-interface {v1}, Lcom/sshtools/common/files/AbstractFile;->length()J

    move-result-wide v3

    goto :goto_0

    .line 1300
    :cond_2
    invoke-interface {v1}, Lcom/sshtools/common/files/AbstractFile;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-wide/16 v3, 0x0

    :goto_0
    move-object v5, p0

    move-object v6, p1

    move-object v8, p3

    move-object v7, v2

    move-wide v9, v3

    .line 1303
    :try_start_1
    invoke-virtual/range {v5 .. v10}, Lcom/sshtools/client/sftp/SftpClient;->get(Ljava/lang/String;Ljava/io/OutputStream;Lcom/sshtools/client/tasks/FileTransferProgress;J)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v7

    if-eqz v2, :cond_3

    .line 1313
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_3
    if-eqz p1, :cond_4

    .line 1315
    invoke-interface {v1, p1}, Lcom/sshtools/common/files/AbstractFile;->setAttributes(Lcom/sshtools/common/sftp/SftpFileAttributes;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    :cond_4
    return-object p1

    :catchall_1
    move-exception v0

    move-object v2, v7

    goto :goto_1

    :catch_0
    move-object v2, v7

    goto :goto_2

    :catchall_2
    move-exception v0

    :goto_1
    move-object p1, v0

    goto :goto_3

    .line 1308
    :catch_1
    :goto_2
    :try_start_3
    new-instance p1, Lcom/sshtools/common/sftp/SftpStatusException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x4

    invoke-direct {p1, p3, p2}, Lcom/sshtools/common/sftp/SftpStatusException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_3
    if-eqz v2, :cond_5

    .line 1313
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1321
    :catchall_3
    :cond_5
    throw p1
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sshtools/common/sftp/SftpFileAttributes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1378
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/sshtools/client/sftp/SftpClient;->get(Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;Z)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Z)Lcom/sshtools/common/sftp/SftpFileAttributes;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1189
    move-object v1, v0

    check-cast v1, Lcom/sshtools/client/tasks/FileTransferProgress;

    invoke-virtual {p0, p1, v0, p2}, Lcom/sshtools/client/sftp/SftpClient;->get(Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;Z)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object p1

    return-object p1
.end method

.method public getAbsolutePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 2729
    invoke-direct {p0, p1}, Lcom/sshtools/client/sftp/SftpClient;->resolveRemotePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2730
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v0, p1}, Lcom/sshtools/client/sftp/SftpChannel;->getAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentWorkingDirectory()Lcom/sshtools/common/files/AbstractFile;
    .locals 1

    .line 1117
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient;->lcwd:Lcom/sshtools/common/files/AbstractFile;

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

    .line 655
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpChannel;->getDefaultDirectory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEOL(Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;
        }
    .end annotation

    .line 1334
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 1335
    invoke-virtual {p0, p1}, Lcom/sshtools/client/sftp/SftpClient;->getEOL([B)I

    move-result p1

    return p1
.end method

.method public getEOL([B)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;
        }
    .end annotation

    .line 1339
    array-length v0, p1

    const/16 v1, 0xa

    const/16 v2, 0xd

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/16 v5, 0x64

    const/4 v6, 0x1

    if-eq v0, v6, :cond_2

    if-ne v0, v4, :cond_1

    .line 1349
    aget-byte v0, p1, v3

    if-ne v0, v2, :cond_0

    aget-byte p1, p1, v6

    if-ne p1, v1, :cond_0

    return v6

    .line 1352
    :cond_0
    new-instance p1, Lcom/sshtools/common/sftp/SftpStatusException;

    const-string v0, "Unsupported text mode: invalid newline characters"

    invoke-direct {p1, v5, v0}, Lcom/sshtools/common/sftp/SftpStatusException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 1355
    :cond_1
    new-instance p1, Lcom/sshtools/common/sftp/SftpStatusException;

    const-string v0, "Unsupported text mode: newline length > 2"

    invoke-direct {p1, v5, v0}, Lcom/sshtools/common/sftp/SftpStatusException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 1341
    :cond_2
    aget-byte p1, p1, v3

    if-ne p1, v2, :cond_3

    const/4 p1, 0x3

    return p1

    :cond_3
    if-ne p1, v1, :cond_4

    return v4

    .line 1346
    :cond_4
    new-instance p1, Lcom/sshtools/common/sftp/SftpStatusException;

    const-string v0, "Unsupported text mode: invalid newline character"

    invoke-direct {p1, v5, v0}, Lcom/sshtools/common/sftp/SftpStatusException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public getFiles(Ljava/lang/String;)[Lcom/sshtools/client/sftp/SftpFile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3441
    move-object v1, v0

    check-cast v1, Lcom/sshtools/client/tasks/FileTransferProgress;

    invoke-virtual {p0, p1, v0}, Lcom/sshtools/client/sftp/SftpClient;->getFiles(Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;)[Lcom/sshtools/client/sftp/SftpFile;

    move-result-object p1

    return-object p1
.end method

.method public getFiles(Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;)[Lcom/sshtools/client/sftp/SftpFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3482
    invoke-virtual {p0, p1, p2, v0}, Lcom/sshtools/client/sftp/SftpClient;->getFiles(Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;Z)[Lcom/sshtools/client/sftp/SftpFile;

    move-result-object p1

    return-object p1
.end method

.method public getFiles(Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;Z)[Lcom/sshtools/client/sftp/SftpFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 3504
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient;->lcwd:Lcom/sshtools/common/files/AbstractFile;

    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/sshtools/client/sftp/SftpClient;->getFiles(Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;Z)[Lcom/sshtools/client/sftp/SftpFile;

    move-result-object p1

    return-object p1
.end method

.method public getFiles(Ljava/lang/String;Ljava/lang/String;)[Lcom/sshtools/client/sftp/SftpFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3523
    invoke-virtual {p0, p1, p2, v0}, Lcom/sshtools/client/sftp/SftpClient;->getFiles(Ljava/lang/String;Ljava/lang/String;Z)[Lcom/sshtools/client/sftp/SftpFile;

    move-result-object p1

    return-object p1
.end method

.method public getFiles(Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;Z)[Lcom/sshtools/client/sftp/SftpFile;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 3567
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sshtools/client/sftp/SftpClient;->getFileMatches(Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;Z)[Lcom/sshtools/client/sftp/SftpFile;

    move-result-object p1

    return-object p1
.end method

.method public getFiles(Ljava/lang/String;Ljava/lang/String;Z)[Lcom/sshtools/client/sftp/SftpFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3543
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/sshtools/client/sftp/SftpClient;->getFiles(Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;Z)[Lcom/sshtools/client/sftp/SftpFile;

    move-result-object p1

    return-object p1
.end method

.method public getFiles(Ljava/lang/String;Z)[Lcom/sshtools/client/sftp/SftpFile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3461
    move-object v1, v0

    check-cast v1, Lcom/sshtools/client/tasks/FileTransferProgress;

    invoke-virtual {p0, p1, v0, p2}, Lcom/sshtools/client/sftp/SftpClient;->getFiles(Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;Z)[Lcom/sshtools/client/sftp/SftpFile;

    move-result-object p1

    return-object p1
.end method

.method public getHome()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 3912
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/sshtools/client/sftp/SftpClient;->getAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHomeDirectory(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/common/sftp/SftpStatusException;
        }
    .end annotation

    .line 3866
    :try_start_0
    new-instance v0, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {v0}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3867
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 3868
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpClient;->getSubsystemChannel()Lcom/sshtools/client/sftp/SftpChannel;

    move-result-object p1

    .line 3869
    const-string v1, "home-directory"

    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/sshtools/client/sftp/SftpChannel;->sendExtensionMessage(Ljava/lang/String;[B)Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v1

    .line 3870
    invoke-virtual {p1, v1}, Lcom/sshtools/client/sftp/SftpChannel;->getResponse(Lcom/sshtools/common/util/UnsignedInteger32;)Lcom/sshtools/client/sftp/SftpMessage;

    move-result-object v2

    const-string v3, "SSH_FXP_NAME"

    const-string v4, "<username>"

    invoke-virtual {p1, v2, v3, v4, v1}, Lcom/sshtools/client/sftp/SftpChannel;->getSingleFileResponse(Lcom/sshtools/client/sftp/SftpMessage;Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/common/util/UnsignedInteger32;)Lcom/sshtools/client/sftp/SftpFile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3871
    :try_start_2
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 3866
    :try_start_3
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 3872
    new-instance v0, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {v0, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 1760
    invoke-virtual {p0, p1, v0, v1}, Lcom/sshtools/client/sftp/SftpClient;->getInputStream(Ljava/lang/String;J)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public getInputStream(Ljava/lang/String;J)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 1744
    invoke-direct {p0, p1}, Lcom/sshtools/client/sftp/SftpClient;->resolveRemotePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1745
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v0, p1}, Lcom/sshtools/client/sftp/SftpChannel;->getAttributes(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    .line 1747
    new-instance v0, Lcom/sshtools/client/sftp/SftpFileInputStream;

    iget-object v1, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/sshtools/client/sftp/SftpChannel;->openFile(Ljava/lang/String;I)Lcom/sshtools/client/sftp/SftpHandle;

    move-result-object p1

    invoke-direct {v0, p1, p2, p3}, Lcom/sshtools/client/sftp/SftpFileInputStream;-><init>(Lcom/sshtools/client/sftp/SftpHandle;J)V

    return-object v0
.end method

.method public getOutputStream(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 2227
    invoke-direct {p0, p1}, Lcom/sshtools/client/sftp/SftpClient;->resolveRemotePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2228
    new-instance v0, Lcom/sshtools/client/sftp/SftpFileOutputStream;

    iget-object v1, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    const/16 v2, 0x1a

    invoke-virtual {v1, p1, v2}, Lcom/sshtools/client/sftp/SftpChannel;->openFile(Ljava/lang/String;I)Lcom/sshtools/client/sftp/SftpHandle;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/sshtools/client/sftp/SftpFileOutputStream;-><init>(Lcom/sshtools/client/sftp/SftpHandle;)V

    return-object v0
.end method

.method public getRemoteDirectory(Ljava/lang/String;Ljava/lang/String;ZZZLcom/sshtools/client/tasks/FileTransferProgress;)Lcom/sshtools/client/sftp/DirectoryOperation;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 3284
    new-instance v8, Lcom/sshtools/client/sftp/DirectoryOperation;

    invoke-direct {v8}, Lcom/sshtools/client/sftp/DirectoryOperation;-><init>()V

    .line 3287
    invoke-virtual {v1}, Lcom/sshtools/client/sftp/SftpClient;->pwd()Ljava/lang/String;

    move-result-object v9

    .line 3289
    invoke-virtual/range {p0 .. p1}, Lcom/sshtools/client/sftp/SftpClient;->cd(Ljava/lang/String;)V

    .line 3294
    const-string v10, "/"

    invoke-virtual {v0, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v2, :cond_0

    .line 3295
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v12

    invoke-virtual {v0, v11, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/16 v2, 0x2f

    .line 3297
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    add-int/2addr v2, v12

    .line 3300
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    :cond_1
    move-object/from16 v0, p2

    .line 3303
    invoke-direct {v1, v0}, Lcom/sshtools/client/sftp/SftpClient;->resolveLocalPath(Ljava/lang/String;)Lcom/sshtools/common/files/AbstractFile;

    move-result-object v13

    .line 3305
    invoke-interface {v13}, Lcom/sshtools/common/files/AbstractFile;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p5, :cond_2

    .line 3306
    invoke-interface {v13}, Lcom/sshtools/common/files/AbstractFile;->createFolder()Z

    .line 3309
    :cond_2
    invoke-virtual {v1}, Lcom/sshtools/client/sftp/SftpClient;->ls()[Lcom/sshtools/client/sftp/SftpFile;

    move-result-object v14

    move v15, v11

    .line 3313
    :goto_0
    array-length v0, v14

    const-string v2, ".."

    const-string v3, "."

    if-ge v15, v0, :cond_a

    .line 3314
    aget-object v0, v14, v15

    .line 3316
    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpFile;->attributes()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpFile;->getFilename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpFile;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz p3, :cond_9

    .line 3318
    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpFile;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v2}, Lcom/sshtools/common/files/AbstractFile;->resolveFile(Ljava/lang/String;)Lcom/sshtools/common/files/AbstractFile;

    move-result-object v2

    move-object v3, v2

    .line 3319
    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpFile;->getFilename()Ljava/lang/String;

    move-result-object v2

    .line 3320
    invoke-interface {v13}, Lcom/sshtools/common/files/AbstractFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpFile;->getFilename()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v3

    move-object v3, v0

    move-object v0, v4

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    .line 3319
    invoke-virtual/range {v1 .. v7}, Lcom/sshtools/client/sftp/SftpClient;->getRemoteDirectory(Ljava/lang/String;Ljava/lang/String;ZZZLcom/sshtools/client/tasks/FileTransferProgress;)Lcom/sshtools/client/sftp/DirectoryOperation;

    move-result-object v2

    invoke-virtual {v8, v2, v0}, Lcom/sshtools/client/sftp/DirectoryOperation;->addDirectoryOperation(Lcom/sshtools/client/sftp/DirectoryOperation;Lcom/sshtools/common/files/AbstractFile;)V

    goto/16 :goto_4

    .line 3322
    :cond_3
    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpFile;->attributes()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isFile()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3323
    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpFile;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v2}, Lcom/sshtools/common/files/AbstractFile;->resolveFile(Ljava/lang/String;)Lcom/sshtools/common/files/AbstractFile;

    move-result-object v2

    .line 3325
    invoke-interface {v2}, Lcom/sshtools/common/files/AbstractFile;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Lcom/sshtools/common/files/AbstractFile;->length()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpFile;->attributes()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sshtools/common/sftp/SftpFileAttributes;->size()Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sshtools/common/util/UnsignedInteger64;->longValue()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_5

    .line 3326
    invoke-interface {v2}, Lcom/sshtools/common/files/AbstractFile;->lastModified()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpFile;->attributes()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sshtools/common/sftp/SftpFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_5

    if-eqz p5, :cond_4

    .line 3329
    invoke-virtual {v8, v2}, Lcom/sshtools/client/sftp/DirectoryOperation;->addUnchangedFile(Lcom/sshtools/common/files/AbstractFile;)V

    goto :goto_3

    .line 3331
    :cond_4
    invoke-virtual {v8, v0}, Lcom/sshtools/client/sftp/DirectoryOperation;->addUnchangedFile(Lcom/sshtools/client/sftp/SftpFile;)V

    goto :goto_3

    .line 3339
    :cond_5
    :try_start_0
    invoke-interface {v2}, Lcom/sshtools/common/files/AbstractFile;->exists()Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz p5, :cond_6

    .line 3341
    invoke-virtual {v8, v2}, Lcom/sshtools/client/sftp/DirectoryOperation;->addUpdatedFile(Lcom/sshtools/common/files/AbstractFile;)V

    goto :goto_1

    .line 3343
    :cond_6
    invoke-virtual {v8, v0}, Lcom/sshtools/client/sftp/DirectoryOperation;->addUpdatedFile(Lcom/sshtools/client/sftp/SftpFile;)V

    goto :goto_1

    :cond_7
    if-eqz p5, :cond_8

    .line 3347
    invoke-virtual {v8, v2}, Lcom/sshtools/client/sftp/DirectoryOperation;->addNewFile(Lcom/sshtools/common/files/AbstractFile;)V

    goto :goto_1

    .line 3349
    :cond_8
    invoke-virtual {v8, v0}, Lcom/sshtools/client/sftp/DirectoryOperation;->addNewFile(Lcom/sshtools/client/sftp/SftpFile;)V

    :goto_1
    if-eqz p5, :cond_9

    .line 3355
    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpFile;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2}, Lcom/sshtools/common/files/AbstractFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v7, p6

    :try_start_1
    invoke-virtual {v1, v0, v3, v7}, Lcom/sshtools/client/sftp/SftpClient;->get(Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;)Lcom/sshtools/common/sftp/SftpFileAttributes;
    :try_end_1
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v7, p6

    .line 3359
    :goto_2
    invoke-virtual {v8, v2, v0}, Lcom/sshtools/client/sftp/DirectoryOperation;->addFailedTransfer(Lcom/sshtools/common/files/AbstractFile;Lcom/sshtools/common/sftp/SftpStatusException;)V

    goto :goto_4

    :cond_9
    :goto_3
    move-object/from16 v7, p6

    :goto_4
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    :cond_a
    if-eqz p4, :cond_d

    .line 3367
    invoke-direct {v1, v13}, Lcom/sshtools/client/sftp/SftpClient;->getChildNames(Lcom/sshtools/common/files/AbstractFile;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    move v4, v11

    .line 3370
    :goto_5
    array-length v5, v0

    if-ge v4, v5, :cond_d

    .line 3371
    aget-object v5, v0, v4

    invoke-interface {v13, v5}, Lcom/sshtools/common/files/AbstractFile;->resolveFile(Ljava/lang/String;)Lcom/sshtools/common/files/AbstractFile;

    move-result-object v5

    .line 3372
    invoke-virtual {v8, v5}, Lcom/sshtools/client/sftp/DirectoryOperation;->containsFile(Lcom/sshtools/common/files/AbstractFile;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 3373
    invoke-virtual {v8, v5}, Lcom/sshtools/client/sftp/DirectoryOperation;->addDeletedFile(Lcom/sshtools/common/files/AbstractFile;)V

    .line 3375
    invoke-interface {v5}, Lcom/sshtools/common/files/AbstractFile;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Lcom/sshtools/common/files/AbstractFile;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    invoke-interface {v5}, Lcom/sshtools/common/files/AbstractFile;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 3376
    invoke-direct {v1, v5, v8}, Lcom/sshtools/client/sftp/SftpClient;->recurseMarkForDeletion(Lcom/sshtools/common/files/AbstractFile;Lcom/sshtools/client/sftp/DirectoryOperation;)V

    if-eqz p5, :cond_c

    .line 3379
    invoke-interface {v5, v12}, Lcom/sshtools/common/files/AbstractFile;->delete(Z)Z

    goto :goto_6

    :cond_b
    if-eqz p5, :cond_c

    .line 3382
    invoke-interface {v5, v11}, Lcom/sshtools/common/files/AbstractFile;->delete(Z)Z

    :cond_c
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 3389
    :cond_d
    invoke-virtual {v1, v9}, Lcom/sshtools/client/sftp/SftpClient;->cd(Ljava/lang/String;)V

    return-object v8
.end method

.method public getRemoteEOL()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;
        }
    .end annotation

    .line 1329
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpChannel;->getCanonicalNewline()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sshtools/client/sftp/SftpClient;->getEOL([B)I

    move-result v0

    return v0
.end method

.method public getRemoteHash(Ljava/lang/String;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 2834
    new-array v7, v0, [B

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/sshtools/client/sftp/SftpClient;->getRemoteHash(Ljava/lang/String;JJ[B)[B

    move-result-object p1

    return-object p1
.end method

.method public getRemoteHash(Ljava/lang/String;JJLcom/sshtools/client/sftp/RemoteHash;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 2891
    invoke-direct {p0, p1}, Lcom/sshtools/client/sftp/SftpClient;->resolveRemotePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    .line 2892
    invoke-virtual/range {v0 .. v6}, Lcom/sshtools/client/sftp/SftpClient;->doCheckFileHandle(Ljava/lang/String;JJLcom/sshtools/client/sftp/RemoteHash;)[B

    move-result-object p1

    return-object p1
.end method

.method public getRemoteHash(Ljava/lang/String;JJ[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2840
    new-instance v0, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {v0}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V

    .line 2843
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sshtools/client/sftp/SftpClient;->resolveRemotePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 2844
    invoke-virtual {v0, p2, p3}, Lcom/sshtools/common/util/ByteArrayWriter;->writeUINT64(J)V

    .line 2845
    invoke-virtual {v0, p4, p5}, Lcom/sshtools/common/util/ByteArrayWriter;->writeUINT64(J)V

    .line 2846
    invoke-virtual {v0, p6}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBinaryString([B)V

    .line 2848
    iget-object p2, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    const-string p3, "md5-hash"

    .line 2849
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/sshtools/client/sftp/SftpChannel;->sendExtensionMessage(Ljava/lang/String;[B)Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object p3

    .line 2848
    invoke-virtual {p2, p3, p1}, Lcom/sshtools/client/sftp/SftpChannel;->getExtensionResponse(Lcom/sshtools/common/util/UnsignedInteger32;Ljava/lang/String;)Lcom/sshtools/client/sftp/SftpMessage;

    move-result-object p1

    .line 2852
    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpMessage;->readString()Ljava/lang/String;

    .line 2853
    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpMessage;->readBinaryString()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2855
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V

    .line 2856
    throw p1
.end method

.method public getRemoteHash(Ljava/lang/String;Lcom/sshtools/client/sftp/RemoteHash;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    .line 2885
    invoke-virtual/range {v0 .. v6}, Lcom/sshtools/client/sftp/SftpClient;->getRemoteHash(Ljava/lang/String;JJLcom/sshtools/client/sftp/RemoteHash;)[B

    move-result-object p1

    return-object p1
.end method

.method public getRemoteHash([B)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 2862
    new-array v7, v0, [B

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/sshtools/client/sftp/SftpClient;->getRemoteHash([BJJ[B)[B

    move-result-object p1

    return-object p1
.end method

.method public getRemoteHash([BJJLcom/sshtools/client/sftp/RemoteHash;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 2880
    invoke-virtual/range {p0 .. p6}, Lcom/sshtools/client/sftp/SftpClient;->doCheckHashHandle([BJJLcom/sshtools/client/sftp/RemoteHash;)[B

    move-result-object p1

    return-object p1
.end method

.method public getRemoteHash([BJJ[B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2869
    invoke-virtual/range {p0 .. p6}, Lcom/sshtools/client/sftp/SftpClient;->doMD5HashHandle([BJJ[B)[B

    move-result-object p1

    return-object p1
.end method

.method public getRemoteHash([BLcom/sshtools/client/sftp/RemoteHash;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    .line 2874
    invoke-virtual/range {v0 .. v6}, Lcom/sshtools/client/sftp/SftpClient;->getRemoteHash([BJJLcom/sshtools/client/sftp/RemoteHash;)[B

    move-result-object p1

    return-object p1
.end method

.method public getRemoteNewline()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;
        }
    .end annotation

    .line 1325
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v1}, Lcom/sshtools/client/sftp/SftpChannel;->getCanonicalNewline()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public getSubsystemChannel()Lcom/sshtools/client/sftp/SftpChannel;
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    return-object v0
.end method

.method public getSymbolicLinkTarget(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 1221
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v0, p1}, Lcom/sshtools/client/sftp/SftpChannel;->getSymbolicLinkTarget(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTemporaryFolder()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/common/sftp/SftpStatusException;
        }
    .end annotation

    .line 3887
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpClient;->getSubsystemChannel()Lcom/sshtools/client/sftp/SftpChannel;

    move-result-object v0

    .line 3888
    const-string v1, "get-temp-folder"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sshtools/client/sftp/SftpChannel;->sendExtensionMessage(Ljava/lang/String;[B)Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v1

    .line 3889
    invoke-virtual {v0, v1}, Lcom/sshtools/client/sftp/SftpChannel;->getResponse(Lcom/sshtools/common/util/UnsignedInteger32;)Lcom/sshtools/client/sftp/SftpMessage;

    move-result-object v2

    const-string v3, "SSH_FXP_NAME"

    const-string v4, "<get-temp-folder>"

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/sshtools/client/sftp/SftpChannel;->getSingleFileResponse(Lcom/sshtools/client/sftp/SftpMessage;Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/common/util/UnsignedInteger32;)Lcom/sshtools/client/sftp/SftpFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTransferMode()I
    .locals 1

    .line 495
    iget v0, p0, Lcom/sshtools/client/sftp/SftpClient;->transferMode:I

    return v0
.end method

.method public hardlink(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/common/sftp/SftpStatusException;
        }
    .end annotation

    .line 3853
    :try_start_0
    new-instance v0, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {v0}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3854
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 3855
    invoke-virtual {v0, p2}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 3856
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpClient;->getSubsystemChannel()Lcom/sshtools/client/sftp/SftpChannel;

    move-result-object p1

    .line 3857
    const-string v1, "hardlink@openssh.com"

    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/sshtools/client/sftp/SftpChannel;->sendExtensionMessage(Ljava/lang/String;[B)Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v1

    .line 3858
    invoke-virtual {p1, v1, p2}, Lcom/sshtools/client/sftp/SftpChannel;->getOKRequestStatus(Lcom/sshtools/common/util/UnsignedInteger32;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3859
    :try_start_2
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception p1

    .line 3853
    :try_start_3
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 3860
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {p2, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public isClosed()Z
    .locals 1

    .line 1808
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpChannel;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .line 3848
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpChannel;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isDirectoryOrLinkedDirectory(Lcom/sshtools/client/sftp/SftpFile;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 850
    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpFile;->attributes()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpFile;->attributes()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isLink()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/client/sftp/SftpClient;->stat(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public lcd(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 1094
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient;->lcwd:Lcom/sshtools/common/files/AbstractFile;

    invoke-interface {v0, p1}, Lcom/sshtools/common/files/AbstractFile;->resolveFile(Ljava/lang/String;)Lcom/sshtools/common/files/AbstractFile;

    move-result-object v0

    .line 1096
    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1100
    iput-object v0, p0, Lcom/sshtools/client/sftp/SftpClient;->lcwd:Lcom/sshtools/common/files/AbstractFile;

    return-void

    .line 1097
    :cond_0
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

.method public lpwd()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 1113
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient;->lcwd:Lcom/sshtools/common/files/AbstractFile;

    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ls()[Lcom/sshtools/client/sftp/SftpFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 902
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient;->cwd:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sshtools/client/sftp/SftpClient;->ls(Ljava/lang/String;)[Lcom/sshtools/client/sftp/SftpFile;

    move-result-object v0

    return-object v0
.end method

.method public ls(Ljava/lang/String;)[Lcom/sshtools/client/sftp/SftpFile;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 924
    invoke-direct {p0, p1}, Lcom/sshtools/client/sftp/SftpClient;->resolveRemotePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 926
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 927
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Listing files for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 929
    :cond_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 930
    :try_start_0
    iget-object v2, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v2, p1}, Lcom/sshtools/client/sftp/SftpChannel;->openDirectory(Ljava/lang/String;)Lcom/sshtools/client/sftp/SftpHandle;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 931
    :goto_0
    :try_start_1
    invoke-virtual {p1, v0}, Lcom/sshtools/client/sftp/SftpHandle;->listChildren(Ljava/util/List;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, -0x1

    if-le v2, v3, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 934
    :try_start_2
    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpHandle;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 937
    :cond_2
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p1

    new-array p1, p1, [Lcom/sshtools/client/sftp/SftpFile;

    .line 939
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v2, v1, 0x1

    .line 940
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sshtools/client/sftp/SftpFile;

    aput-object v3, p1, v1

    move v1, v2

    goto :goto_1

    :cond_3
    return-object p1

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_4

    .line 930
    :try_start_3
    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpHandle;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 935
    new-instance v0, Lcom/sshtools/common/ssh/SshException;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(ILjava/lang/Throwable;)V

    throw v0
.end method

.method public ls(Ljava/lang/String;Ljava/lang/String;ZI)[Lcom/sshtools/client/sftp/SftpFile;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 952
    invoke-direct {p0, p1}, Lcom/sshtools/client/sftp/SftpClient;->resolveRemotePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 954
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 955
    const-string v1, "Listing files for {} with filter {}"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 958
    :cond_0
    new-instance v1, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {v1}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V

    .line 960
    :try_start_0
    invoke-virtual {v1, v0}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 961
    invoke-virtual {v1, p2}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 962
    invoke-virtual {v1, p3}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBoolean(Z)V

    .line 967
    new-instance p3, Ljava/util/Vector;

    invoke-direct {p3}, Ljava/util/Vector;-><init>()V

    .line 968
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 969
    iget-object v4, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v4, p1}, Lcom/sshtools/client/sftp/SftpChannel;->getAttributes(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v4

    .line 970
    new-instance v5, Lcom/sshtools/client/sftp/SftpFile;

    invoke-static {p1}, Lcom/sshtools/common/util/FileUtils;->getFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/sshtools/client/sftp/SftpClient;->formatLongname(Lcom/sshtools/common/sftp/SftpFileAttributes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p1, v4, v6}, Lcom/sshtools/client/sftp/SftpFile;-><init>(Ljava/lang/String;Lcom/sshtools/common/sftp/SftpFileAttributes;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 973
    :try_start_1
    iget-object v4, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    const-string v6, "open-directory-with-filter@sshtools.com"

    .line 974
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/sshtools/client/sftp/SftpChannel;->sendExtensionMessage(Ljava/lang/String;[B)Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v6

    .line 973
    invoke-virtual {v4, v6, v5}, Lcom/sshtools/client/sftp/SftpChannel;->getHandle(Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/client/sftp/SftpFile;)Lcom/sshtools/client/sftp/SftpHandle;

    move-result-object p1
    :try_end_1
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 978
    :catch_0
    :try_start_2
    const-string v4, "maverick.disableLocalFiltering"

    invoke-static {v4}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 982
    new-instance v4, Lcom/sshtools/client/sftp/SftpHandle;

    iget-object v6, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v6, p1}, Lcom/sshtools/client/sftp/SftpChannel;->openDirectory(Ljava/lang/String;)Lcom/sshtools/client/sftp/SftpHandle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpHandle;->getHandle()[B

    move-result-object p1

    iget-object v6, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-direct {v4, p1, v6, v5}, Lcom/sshtools/client/sftp/SftpHandle;-><init>([BLcom/sshtools/client/sftp/SftpChannel;Lcom/sshtools/client/sftp/SftpFile;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object p1, v4

    .line 992
    :cond_1
    :goto_0
    :try_start_3
    invoke-virtual {p1, v3}, Lcom/sshtools/client/sftp/SftpHandle;->listChildren(Ljava/util/List;)I

    move-result v4

    const/4 v5, -0x1

    if-le v4, v5, :cond_3

    if-le v4, v5, :cond_2

    .line 996
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 997
    const-string v6, "Got page of {} files for {} with filter {}"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7, v0, p2}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 999
    :cond_2
    invoke-virtual {p3, v3}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    :cond_3
    if-le v4, v5, :cond_4

    if-eqz p4, :cond_1

    .line 1016
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-lt v4, p4, :cond_1

    .line 1018
    :cond_4
    :try_start_4
    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpHandle;->close()V

    .line 1021
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result p1

    new-array p1, p1, [Lcom/sshtools/client/sftp/SftpFile;

    .line 1023
    invoke-virtual {p3}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p3

    if-eqz p3, :cond_5

    add-int/lit8 p3, v2, 0x1

    .line 1024
    invoke-interface {p2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/sshtools/client/sftp/SftpFile;

    aput-object p4, p1, v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move v2, p3

    goto :goto_1

    .line 1032
    :cond_5
    :try_start_5
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    return-object p1

    :catchall_0
    move-exception p2

    .line 1018
    :try_start_6
    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpHandle;->close()V

    .line 1019
    throw p2

    .line 979
    :cond_6
    new-instance p1, Lcom/sshtools/common/ssh/SshException;

    const-string p2, "Remote server does not support server side filtering"

    const p3, 0xe007

    invoke-direct {p1, p2, p3}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    .line 1029
    :try_start_7
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    const/4 p3, 0x5

    invoke-direct {p2, p3, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(ILjava/lang/Throwable;)V

    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1032
    :goto_2
    :try_start_8
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 1035
    :catch_3
    throw p1
.end method

.method public ls(Ljava/lang/String;ZI)[Lcom/sshtools/client/sftp/SftpFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 947
    const-string v0, ""

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/sshtools/client/sftp/SftpClient;->ls(Ljava/lang/String;Ljava/lang/String;ZI)[Lcom/sshtools/client/sftp/SftpFile;

    move-result-object p1

    return-object p1
.end method

.method public lsIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/sshtools/client/sftp/SftpFile;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 1064
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient;->cwd:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sshtools/client/sftp/SftpClient;->lsIterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lsIterator(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator<",
            "Lcom/sshtools/client/sftp/SftpFile;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 1079
    new-instance v0, Lcom/sshtools/client/sftp/SftpClient$DirectoryIterator;

    invoke-direct {v0, p0, p1}, Lcom/sshtools/client/sftp/SftpClient$DirectoryIterator;-><init>(Lcom/sshtools/client/sftp/SftpClient;Ljava/lang/String;)V

    return-object v0
.end method

.method public makeTemporaryFolder()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/common/sftp/SftpStatusException;
        }
    .end annotation

    .line 3879
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpClient;->getSubsystemChannel()Lcom/sshtools/client/sftp/SftpChannel;

    move-result-object v0

    .line 3880
    const-string v1, "make-temp-folder"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sshtools/client/sftp/SftpChannel;->sendExtensionMessage(Ljava/lang/String;[B)Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v1

    .line 3881
    invoke-virtual {v0, v1}, Lcom/sshtools/client/sftp/SftpChannel;->getResponse(Lcom/sshtools/common/util/UnsignedInteger32;)Lcom/sshtools/client/sftp/SftpMessage;

    move-result-object v2

    const-string v3, "SSH_FXP_NAME"

    const-string v4, "<make-tmp-folder>"

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/sshtools/client/sftp/SftpChannel;->getSingleFileResponse(Lcom/sshtools/client/sftp/SftpMessage;Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/common/util/UnsignedInteger32;)Lcom/sshtools/client/sftp/SftpFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public matchRemoteFiles(Ljava/lang/String;)[Lcom/sshtools/client/sftp/SftpFile;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 1459
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v1, :cond_1

    .line 1460
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1461
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v0, v3

    if-le v4, v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 1463
    :cond_1
    iget-object v1, p0, Lcom/sshtools/client/sftp/SftpClient;->cwd:Ljava/lang/String;

    move-object v0, p1

    .line 1470
    :goto_0
    iget v4, p0, Lcom/sshtools/client/sftp/SftpClient;->RegExpSyntax:I

    if-eq v4, v3, :cond_3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    .line 1480
    new-instance v1, Lcom/sshtools/client/sftp/NoRegExpMatching;

    invoke-direct {v1}, Lcom/sshtools/client/sftp/NoRegExpMatching;-><init>()V

    .line 1481
    new-array v3, v3, [Lcom/sshtools/client/sftp/SftpFile;

    .line 1482
    invoke-direct {p0, p1}, Lcom/sshtools/client/sftp/SftpClient;->resolveRemotePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1483
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpClient;->getSubsystemChannel()Lcom/sshtools/client/sftp/SftpChannel;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/sshtools/client/sftp/SftpChannel;->getFile(Ljava/lang/String;)Lcom/sshtools/client/sftp/SftpFile;

    move-result-object p1

    aput-object p1, v3, v2

    goto :goto_2

    .line 1476
    :cond_2
    new-instance p1, Lcom/sshtools/client/sftp/RegExpMatching;

    invoke-direct {p1}, Lcom/sshtools/client/sftp/RegExpMatching;-><init>()V

    .line 1477
    invoke-virtual {p0, v1}, Lcom/sshtools/client/sftp/SftpClient;->ls(Ljava/lang/String;)[Lcom/sshtools/client/sftp/SftpFile;

    move-result-object v3

    goto :goto_1

    .line 1472
    :cond_3
    new-instance p1, Lcom/sshtools/client/sftp/GlobRegExpMatching;

    invoke-direct {p1}, Lcom/sshtools/client/sftp/GlobRegExpMatching;-><init>()V

    .line 1473
    invoke-virtual {p0, v1}, Lcom/sshtools/client/sftp/SftpClient;->ls(Ljava/lang/String;)[Lcom/sshtools/client/sftp/SftpFile;

    move-result-object v3

    :goto_1
    move-object v1, p1

    .line 1486
    :goto_2
    invoke-interface {v1, v3, v0}, Lcom/sshtools/client/sftp/RegularExpressionMatching;->matchFilesWithPattern([Lcom/sshtools/client/sftp/SftpFile;Ljava/lang/String;)[Lcom/sshtools/client/sftp/SftpFile;

    move-result-object p1

    return-object p1
.end method

.method public mkdir(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 778
    invoke-direct {p0, p1}, Lcom/sshtools/client/sftp/SftpClient;->resolveRemotePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 780
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 781
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Creating dir "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 785
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v1, v0}, Lcom/sshtools/client/sftp/SftpChannel;->getAttributes(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v0
    :try_end_0
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_0 .. :try_end_0} :catch_0

    .line 802
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 803
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "File with name "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " already exists!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 805
    :cond_1
    new-instance v1, Lcom/sshtools/common/sftp/SftpStatusException;

    .line 806
    invoke-virtual {v0}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Directory"

    goto :goto_0

    :cond_2
    const-string v0, "File"

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " already exists named "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    invoke-direct {v1, v0, p1}, Lcom/sshtools/common/sftp/SftpStatusException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 790
    :catch_0
    iget-object p1, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    .line 792
    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpChannel;->getCharsetEncoding()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    .line 790
    invoke-static {v1, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->ofType(ILjava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    move-result-object p1

    .line 794
    iget-boolean v1, p0, Lcom/sshtools/client/sftp/SftpClient;->applyUmask:Z

    if-eqz v1, :cond_3

    .line 795
    invoke-static {}, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->create()Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sshtools/client/sftp/SftpClient;->umask:I

    xor-int/lit16 v2, v2, 0x1ff

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->fromBitmask(J)Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->build()Lcom/sshtools/common/sftp/PosixPermissions;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->withPermissions(Lcom/sshtools/common/sftp/PosixPermissions;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    .line 798
    :cond_3
    iget-object v1, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->build()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/sshtools/client/sftp/SftpChannel;->makeDirectory(Ljava/lang/String;Lcom/sshtools/common/sftp/SftpFileAttributes;)V

    return-void
.end method

.method public mkdirs(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 822
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "/"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    move-object p1, v1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 825
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 826
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 829
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sshtools/client/sftp/SftpClient;->stat(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;
    :try_end_0
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 832
    :catch_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/sshtools/client/sftp/SftpClient;->mkdir(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 834
    invoke-virtual {v2}, Lcom/sshtools/common/sftp/SftpStatusException;->getStatus()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 839
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 835
    :cond_1
    throw v2

    :cond_2
    return-void
.end method

.method public openDirectory(Ljava/lang/String;)Lcom/sshtools/client/sftp/SftpHandle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 595
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v0, p1}, Lcom/sshtools/client/sftp/SftpChannel;->openDirectory(Ljava/lang/String;)Lcom/sshtools/client/sftp/SftpHandle;

    move-result-object p1

    return-object p1
.end method

.method public openFile(Ljava/lang/String;)Lcom/sshtools/client/sftp/SftpHandle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 584
    invoke-virtual {p0, p1, v0}, Lcom/sshtools/client/sftp/SftpClient;->openFile(Ljava/lang/String;I)Lcom/sshtools/client/sftp/SftpHandle;

    move-result-object p1

    return-object p1
.end method

.method public openFile(Ljava/lang/String;I)Lcom/sshtools/client/sftp/SftpHandle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 588
    iget v0, p0, Lcom/sshtools/client/sftp/SftpClient;->transferMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpChannel;->getVersion()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 589
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-direct {p0, p1}, Lcom/sshtools/client/sftp/SftpClient;->resolveRemotePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    or-int/lit8 p2, p2, 0x40

    invoke-virtual {v0, p1, p2}, Lcom/sshtools/client/sftp/SftpChannel;->openFile(Ljava/lang/String;I)Lcom/sshtools/client/sftp/SftpHandle;

    move-result-object p1

    return-object p1

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-direct {p0, p1}, Lcom/sshtools/client/sftp/SftpClient;->resolveRemotePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/sshtools/client/sftp/SftpChannel;->openFile(Ljava/lang/String;I)Lcom/sshtools/client/sftp/SftpHandle;

    move-result-object p1

    return-object p1
.end method

.method protected processCheckFileResponse(Lcom/sshtools/client/sftp/SftpMessage;Lcom/sshtools/client/sftp/RemoteHash;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2943
    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpMessage;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2944
    invoke-virtual {p2}, Lcom/sshtools/client/sftp/RemoteHash;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2949
    sget-object v1, Lcom/sshtools/client/sftp/SftpClient$2;->$SwitchMap$com$sshtools$client$sftp$RemoteHash:[I

    invoke-virtual {p2}, Lcom/sshtools/client/sftp/RemoteHash;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_3

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1

    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    const/16 p2, 0x40

    goto :goto_0

    .line 2963
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported hash algorihm "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/16 p2, 0x20

    goto :goto_0

    :cond_2
    const/16 p2, 0x14

    goto :goto_0

    :cond_3
    const/16 p2, 0x10

    .line 2965
    :goto_0
    new-array v0, p2, [B

    .line 2966
    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpMessage;->available()I

    move-result v1

    if-lt v1, p2, :cond_4

    .line 2970
    invoke-virtual {p1, v0}, Lcom/sshtools/client/sftp/SftpMessage;->readFully([B)V

    return-object v0

    .line 2967
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Unexpected hash length returned by remote server"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2945
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Remote server returned a hash in an unsupported algorithm"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public put(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    const-wide/16 v6, -0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 2261
    invoke-virtual/range {v0 .. v7}, Lcom/sshtools/client/sftp/SftpClient;->put(Ljava/io/InputStream;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;JJ)V

    return-void
.end method

.method public put(Ljava/io/InputStream;Ljava/lang/String;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;
        }
    .end annotation

    const/4 v3, 0x0

    const-wide/16 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    .line 2246
    invoke-virtual/range {v0 .. v7}, Lcom/sshtools/client/sftp/SftpClient;->put(Ljava/io/InputStream;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;JJ)V

    return-void
.end method

.method public put(Ljava/io/InputStream;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    const-wide/16 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 2081
    invoke-virtual/range {v0 .. v7}, Lcom/sshtools/client/sftp/SftpClient;->put(Ljava/io/InputStream;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;JJ)V

    return-void
.end method

.method public put(Ljava/io/InputStream;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 2087
    invoke-virtual/range {v0 .. v7}, Lcom/sshtools/client/sftp/SftpClient;->put(Ljava/io/InputStream;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;JJ)V

    return-void
.end method

.method public put(Ljava/io/InputStream;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;JJ)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;
        }
    .end annotation

    .line 2110
    invoke-direct {p0, p2}, Lcom/sshtools/client/sftp/SftpClient;->resolveRemotePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2114
    iget p2, p0, Lcom/sshtools/client/sftp/SftpClient;->transferMode:I

    const/4 v0, 0x1

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-ne p2, v2, :cond_5

    .line 2117
    iget-boolean p2, p0, Lcom/sshtools/client/sftp/SftpClient;->stripEOL:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/sshtools/client/sftp/SftpClient;->inputEOL:I

    .line 2118
    :goto_0
    iget v3, p0, Lcom/sshtools/client/sftp/SftpClient;->outputEOL:I

    .line 2122
    iget-object v4, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v4}, Lcom/sshtools/client/sftp/SftpChannel;->getVersion()I

    move-result v4

    if-gt v4, v1, :cond_1

    iget-object v4, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    const-string v6, "newline@vandyke.com"

    invoke-virtual {v4, v6}, Lcom/sshtools/client/sftp/SftpChannel;->getExtension(Ljava/lang/String;)[B

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2123
    iget-object v4, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v4, v6}, Lcom/sshtools/client/sftp/SftpChannel;->getExtension(Ljava/lang/String;)[B

    move-result-object v4

    goto :goto_1

    .line 2124
    :cond_1
    iget-object v4, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v4}, Lcom/sshtools/client/sftp/SftpChannel;->getVersion()I

    move-result v4

    if-le v4, v1, :cond_2

    .line 2125
    iget-object v4, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v4}, Lcom/sshtools/client/sftp/SftpChannel;->getCanonicalNewline()[B

    move-result-object v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_3

    move v6, v0

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    .line 2129
    :goto_2
    iget-boolean v7, p0, Lcom/sshtools/client/sftp/SftpClient;->forceRemoteEOL:Z

    xor-int/2addr v7, v0

    and-int/2addr v6, v7

    if-eqz v6, :cond_4

    .line 2130
    invoke-virtual {p0, v4}, Lcom/sshtools/client/sftp/SftpClient;->getEOL([B)I

    move-result v3

    .line 2134
    :cond_4
    :try_start_0
    invoke-static {p2, v3, p1}, Lcom/sshtools/common/util/EOLProcessor;->createInputStream(IILjava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 2136
    :catch_0
    new-instance p1, Lcom/sshtools/common/ssh/SshException;

    const-string p2, "Failed to create EOL processing stream"

    const/4 p3, 0x5

    invoke-direct {p1, p2, p3}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_5
    :goto_3
    move-object v4, p1

    .line 2140
    const-string p1, "UTF-8"

    invoke-static {v0, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->ofType(ILjava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    move-result-object p1

    .line 2142
    iget-boolean p2, p0, Lcom/sshtools/client/sftp/SftpClient;->applyUmask:Z

    if-eqz p2, :cond_6

    .line 2143
    invoke-static {}, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->create()Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;

    move-result-object p2

    iget v0, p0, Lcom/sshtools/client/sftp/SftpClient;->umask:I

    xor-int/lit16 v0, v0, 0x1b6

    int-to-long v6, v0

    invoke-virtual {p2, v6, v7}, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->fromBitmask(J)Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->build()Lcom/sshtools/common/sftp/PosixPermissions;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->withPermissions(Lcom/sshtools/common/sftp/PosixPermissions;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    :cond_6
    const-wide/16 v6, 0x0

    cmp-long p2, p4, v6

    if-lez p2, :cond_9

    .line 2149
    :try_start_1
    iget p2, p0, Lcom/sshtools/client/sftp/SftpClient;->transferMode:I

    if-ne p2, v2, :cond_8

    iget-object p2, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {p2}, Lcom/sshtools/client/sftp/SftpChannel;->getVersion()I

    move-result p2

    if-gt p2, v1, :cond_7

    goto :goto_4

    .line 2150
    :cond_7
    new-instance p1, Lcom/sshtools/common/sftp/SftpStatusException;

    const-string p2, "Resume on text mode files is not supported"

    const/16 p3, 0x8

    invoke-direct {p1, p3, p2}, Lcom/sshtools/common/sftp/SftpStatusException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 2154
    :cond_8
    :goto_4
    invoke-virtual {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->build()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v10

    const/4 v9, 0x2

    move-object v1, p0

    move-object v6, p3

    move-wide v7, p4

    move-wide/from16 v2, p6

    invoke-direct/range {v1 .. v10}, Lcom/sshtools/client/sftp/SftpClient;->internalPut(JLjava/io/InputStream;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;JILcom/sshtools/common/sftp/SftpFileAttributes;)V

    return-void

    :catch_1
    move-exception v0

    move-object p1, v0

    goto :goto_5

    :cond_9
    if-nez p2, :cond_b

    .line 2158
    iget p2, p0, Lcom/sshtools/client/sftp/SftpClient;->transferMode:I

    if-ne p2, v2, :cond_a

    iget-object p2, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {p2}, Lcom/sshtools/client/sftp/SftpChannel;->getVersion()I

    move-result p2

    if-le p2, v1, :cond_a

    .line 2160
    invoke-virtual {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->build()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v10

    const/16 v9, 0x5a

    move-object v1, p0

    move-object v6, p3

    move-wide v7, p4

    move-wide/from16 v2, p6

    .line 2159
    invoke-direct/range {v1 .. v10}, Lcom/sshtools/client/sftp/SftpClient;->internalPut(JLjava/io/InputStream;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;JILcom/sshtools/common/sftp/SftpFileAttributes;)V

    return-void

    .line 2163
    :cond_a
    invoke-virtual {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->build()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v10

    const/16 v9, 0x1a

    move-object v1, p0

    move-object v6, p3

    move-wide v7, p4

    move-wide/from16 v2, p6

    .line 2162
    invoke-direct/range {v1 .. v10}, Lcom/sshtools/client/sftp/SftpClient;->internalPut(JLjava/io/InputStream;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;JILcom/sshtools/common/sftp/SftpFileAttributes;)V

    return-void

    .line 2169
    :cond_b
    iget p2, p0, Lcom/sshtools/client/sftp/SftpClient;->transferMode:I

    if-ne p2, v2, :cond_c

    iget-object p2, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {p2}, Lcom/sshtools/client/sftp/SftpChannel;->getVersion()I

    move-result p2

    if-le p2, v1, :cond_c

    .line 2171
    invoke-virtual {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->build()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v10

    const/16 v9, 0x46

    move-object v1, p0

    move-object v6, p3

    move-wide v7, p4

    move-wide/from16 v2, p6

    .line 2170
    invoke-direct/range {v1 .. v10}, Lcom/sshtools/client/sftp/SftpClient;->internalPut(JLjava/io/InputStream;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;JILcom/sshtools/common/sftp/SftpFileAttributes;)V

    return-void

    .line 2174
    :cond_c
    invoke-virtual {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->build()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v10

    const/4 v9, 0x6

    move-object v1, p0

    move-object v6, p3

    move-wide v7, p4

    move-wide/from16 v2, p6

    .line 2173
    invoke-direct/range {v1 .. v10}, Lcom/sshtools/client/sftp/SftpClient;->internalPut(JLjava/io/InputStream;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;JILcom/sshtools/common/sftp/SftpFileAttributes;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    .line 2180
    :goto_5
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {p2, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public put(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1863
    invoke-virtual {p0, p1, v0}, Lcom/sshtools/client/sftp/SftpClient;->put(Ljava/lang/String;Z)V

    return-void
.end method

.method public put(Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1847
    invoke-virtual {p0, p1, p2, v0}, Lcom/sshtools/client/sftp/SftpClient;->put(Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;Z)V

    return-void
.end method

.method public put(Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 1827
    invoke-direct {p0, p1}, Lcom/sshtools/client/sftp/SftpClient;->resolveLocalPath(Ljava/lang/String;)Lcom/sshtools/common/files/AbstractFile;

    move-result-object v0

    .line 1828
    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/sshtools/client/sftp/SftpClient;->put(Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;Z)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2058
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sshtools/client/sftp/SftpClient;->put(Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;Z)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1901
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sshtools/client/sftp/SftpClient;->put(Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;Z)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 1940
    const-string v0, "/"

    invoke-direct {p0, p1}, Lcom/sshtools/client/sftp/SftpClient;->resolveLocalPath(Ljava/lang/String;)Lcom/sshtools/common/files/AbstractFile;

    move-result-object p1

    .line 1942
    invoke-interface {p1}, Lcom/sshtools/common/files/AbstractFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 1945
    invoke-interface {p1}, Lcom/sshtools/common/files/AbstractFile;->length()J

    move-result-wide v7

    .line 1950
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/sshtools/client/sftp/SftpClient;->stat(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v1
    :try_end_0
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1951
    :try_start_1
    invoke-virtual {v1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1952
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, ""

    :cond_0
    invoke-interface {p1}, Lcom/sshtools/common/files/AbstractFile;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1954
    invoke-virtual {p0, p2}, Lcom/sshtools/client/sftp/SftpClient;->stat(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v1
    :try_end_1
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :catch_1
    const/4 p4, 0x0

    :cond_1
    :goto_0
    move-object v3, p2

    if-eqz p4, :cond_3

    .line 1962
    invoke-interface {p1}, Lcom/sshtools/common/files/AbstractFile;->length()J

    move-result-wide p1

    invoke-virtual {v1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->size()Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object p4

    invoke-virtual {p4}, Lcom/sshtools/common/util/UnsignedInteger64;->longValue()J

    move-result-wide v4

    cmp-long p1, p1, v4

    if-lez p1, :cond_2

    .line 1971
    :try_start_2
    invoke-virtual {v1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->size()Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sshtools/common/util/UnsignedInteger64;->longValue()J

    move-result-wide p1

    .line 1972
    invoke-virtual {v2, p1, p2}, Ljava/io/InputStream;->skip(J)J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    move-object p1, v0

    .line 1975
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1978
    :catch_3
    new-instance p2, Lcom/sshtools/common/sftp/SftpStatusException;

    const/4 p3, 0x2

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/sshtools/common/sftp/SftpStatusException;-><init>(ILjava/lang/String;)V

    throw p2

    .line 1964
    :cond_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1967
    :catch_4
    new-instance p1, Lcom/sshtools/common/sftp/SftpStatusException;

    const/16 p2, 0x65

    const-string p3, "The remote file size is greater than the local file"

    invoke-direct {p1, p2, p3}, Lcom/sshtools/common/sftp/SftpStatusException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_3
    const-wide/16 p1, 0x0

    :goto_1
    move-object v1, p0

    move-wide v5, p1

    move-object v4, p3

    .line 1984
    :try_start_5
    invoke-virtual/range {v1 .. v8}, Lcom/sshtools/client/sftp/SftpClient;->put(Ljava/io/InputStream;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;JJ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1988
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :catch_5
    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 1991
    :catch_6
    throw p1
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2041
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/sshtools/client/sftp/SftpClient;->put(Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;Z)V

    return-void
.end method

.method public put(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1880
    move-object v1, v0

    check-cast v1, Lcom/sshtools/client/tasks/FileTransferProgress;

    invoke-virtual {p0, p1, v0, p2}, Lcom/sshtools/client/sftp/SftpClient;->put(Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;Z)V

    return-void
.end method

.method public putFiles(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3615
    invoke-virtual {p0, p1, v0}, Lcom/sshtools/client/sftp/SftpClient;->putFiles(Ljava/lang/String;Z)V

    return-void
.end method

.method public putFiles(Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3651
    invoke-virtual {p0, p1, p2, v0}, Lcom/sshtools/client/sftp/SftpClient;->putFiles(Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;Z)V

    return-void
.end method

.method public putFiles(Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 3670
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpClient;->pwd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/sshtools/client/sftp/SftpClient;->putFiles(Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;Z)V

    return-void
.end method

.method public putFiles(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3687
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sshtools/client/sftp/SftpClient;->putFiles(Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;Z)V

    return-void
.end method

.method public putFiles(Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3726
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sshtools/client/sftp/SftpClient;->putFiles(Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;Z)V

    return-void
.end method

.method public putFiles(Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 3746
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sshtools/client/sftp/SftpClient;->putFileMatches(Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;Z)V

    return-void
.end method

.method public putFiles(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3705
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/sshtools/client/sftp/SftpClient;->putFiles(Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;Z)V

    return-void
.end method

.method public putFiles(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3632
    move-object v1, v0

    check-cast v1, Lcom/sshtools/client/tasks/FileTransferProgress;

    invoke-virtual {p0, p1, v0, p2}, Lcom/sshtools/client/sftp/SftpClient;->putFiles(Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;Z)V

    return-void
.end method

.method public putLocalDirectory(Ljava/lang/String;Ljava/lang/String;ZZZLcom/sshtools/client/tasks/FileTransferProgress;)Lcom/sshtools/client/sftp/DirectoryOperation;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 3044
    new-instance v8, Lcom/sshtools/client/sftp/DirectoryOperation;

    invoke-direct {v8}, Lcom/sshtools/client/sftp/DirectoryOperation;-><init>()V

    .line 3046
    invoke-direct/range {p0 .. p1}, Lcom/sshtools/client/sftp/SftpClient;->resolveLocalPath(Ljava/lang/String;)Lcom/sshtools/common/files/AbstractFile;

    move-result-object v9

    move-object/from16 v0, p2

    .line 3048
    invoke-direct {v1, v0}, Lcom/sshtools/client/sftp/SftpClient;->resolveRemotePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3049
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, ""

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    if-eqz p5, :cond_1

    .line 3054
    :try_start_0
    iget-object v0, v1, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v0, v10}, Lcom/sshtools/client/sftp/SftpChannel;->getAttributes(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;
    :try_end_0
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3056
    :catch_0
    invoke-virtual {v1, v10}, Lcom/sshtools/client/sftp/SftpClient;->mkdirs(Ljava/lang/String;)V

    .line 3061
    :cond_1
    :goto_0
    invoke-direct {v1, v9}, Lcom/sshtools/client/sftp/SftpClient;->listFiles(Lcom/sshtools/common/files/AbstractFile;)[Lcom/sshtools/common/files/AbstractFile;

    move-result-object v11

    .line 3063
    array-length v12, v11

    const/4 v13, 0x0

    move v14, v13

    :goto_1
    const-string v0, ".."

    const-string v2, "."

    const/4 v3, 0x1

    if-ge v14, v12, :cond_9

    aget-object v15, v11, v14

    .line 3065
    invoke-interface {v15}, Lcom/sshtools/common/files/AbstractFile;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v15}, Lcom/sshtools/common/files/AbstractFile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v15}, Lcom/sshtools/common/files/AbstractFile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p3, :cond_8

    .line 3068
    invoke-interface {v15}, Lcom/sshtools/common/files/AbstractFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v15}, Lcom/sshtools/common/files/AbstractFile;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/sshtools/client/sftp/SftpClient;->putLocalDirectory(Ljava/lang/String;Ljava/lang/String;ZZZLcom/sshtools/client/tasks/FileTransferProgress;)Lcom/sshtools/client/sftp/DirectoryOperation;

    move-result-object v0

    invoke-virtual {v8, v0, v15}, Lcom/sshtools/client/sftp/DirectoryOperation;->addDirectoryOperation(Lcom/sshtools/client/sftp/DirectoryOperation;Lcom/sshtools/common/files/AbstractFile;)V

    goto/16 :goto_8

    .line 3071
    :cond_2
    invoke-interface {v15}, Lcom/sshtools/common/files/AbstractFile;->isFile()Z

    move-result v0

    if-eqz v0, :cond_8

    const-wide/16 v4, 0x3e8

    .line 3077
    :try_start_1
    iget-object v0, v1, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-interface {v15}, Lcom/sshtools/common/files/AbstractFile;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sshtools/client/sftp/SftpChannel;->getAttributes(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v0

    .line 3078
    invoke-interface {v15}, Lcom/sshtools/common/files/AbstractFile;->length()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/sshtools/common/sftp/SftpFileAttributes;->size()Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sshtools/common/util/UnsignedInteger64;->longValue()J

    move-result-wide v16

    cmp-long v2, v6, v16

    if-nez v2, :cond_3

    .line 3079
    invoke-interface {v15}, Lcom/sshtools/common/files/AbstractFile;->lastModified()J

    move-result-wide v6

    div-long/2addr v6, v4

    invoke-virtual {v0}, Lcom/sshtools/common/sftp/SftpFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide v16
    :try_end_1
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_1 .. :try_end_1} :catch_2

    cmp-long v0, v6, v16

    if-nez v0, :cond_3

    move v0, v3

    goto :goto_2

    :cond_3
    move v0, v13

    .line 3081
    :goto_2
    :try_start_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v15}, Lcom/sshtools/common/files/AbstractFile;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v0, :cond_4

    const-string v7, "unchanged"

    goto :goto_3

    :cond_4
    const-string v7, "changed"
    :try_end_2
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    move-wide/from16 p1, v4

    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_3 .. :try_end_3} :catch_3

    move v3, v13

    goto :goto_5

    :catch_1
    move-wide/from16 p1, v4

    goto :goto_4

    :catch_2
    move-wide/from16 p1, v4

    move v0, v13

    .line 3084
    :catch_3
    :goto_4
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v15}, Lcom/sshtools/common/files/AbstractFile;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is new"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_5
    if-eqz p5, :cond_5

    if-nez v0, :cond_5

    .line 3096
    :try_start_4
    invoke-interface {v15}, Lcom/sshtools/common/files/AbstractFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v15}, Lcom/sshtools/common/files/AbstractFile;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_4
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_4 .. :try_end_4} :catch_4

    move-object/from16 v7, p6

    :try_start_5
    invoke-virtual {v1, v2, v4, v7}, Lcom/sshtools/client/sftp/SftpClient;->put(Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;)V

    .line 3097
    iget-object v2, v1, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-interface {v15}, Lcom/sshtools/common/files/AbstractFile;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sshtools/client/sftp/SftpChannel;->getAttributes(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v2

    invoke-static {v2}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->createWith(Lcom/sshtools/common/sftp/SftpFileAttributes;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    move-result-object v2

    .line 3098
    invoke-interface {v15}, Lcom/sshtools/common/files/AbstractFile;->lastModified()J

    move-result-wide v4

    div-long v4, v4, p1

    invoke-virtual {v2, v4, v5}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->withLastModifiedTime(J)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    .line 3099
    iget-object v4, v1, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-interface {v15}, Lcom/sshtools/common/files/AbstractFile;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->build()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Lcom/sshtools/client/sftp/SftpChannel;->setAttributes(Ljava/lang/String;Lcom/sshtools/common/sftp/SftpFileAttributes;)V

    goto :goto_6

    :catch_4
    move-exception v0

    move-object/from16 v7, p6

    goto :goto_7

    :cond_5
    move-object/from16 v7, p6

    :goto_6
    if-eqz v0, :cond_6

    .line 3103
    invoke-virtual {v8, v15}, Lcom/sshtools/client/sftp/DirectoryOperation;->addUnchangedFile(Lcom/sshtools/common/files/AbstractFile;)V

    goto :goto_8

    :catch_5
    move-exception v0

    goto :goto_7

    :cond_6
    if-nez v3, :cond_7

    .line 3105
    invoke-virtual {v8, v15}, Lcom/sshtools/client/sftp/DirectoryOperation;->addUpdatedFile(Lcom/sshtools/common/files/AbstractFile;)V

    goto :goto_8

    .line 3107
    :cond_7
    invoke-virtual {v8, v15}, Lcom/sshtools/client/sftp/DirectoryOperation;->addNewFile(Lcom/sshtools/common/files/AbstractFile;)V
    :try_end_5
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_8

    .line 3111
    :goto_7
    invoke-virtual {v8, v15, v0}, Lcom/sshtools/client/sftp/DirectoryOperation;->addFailedTransfer(Lcom/sshtools/common/files/AbstractFile;Lcom/sshtools/common/sftp/SftpStatusException;)V

    goto :goto_8

    :cond_8
    move-object/from16 v7, p6

    :goto_8
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    :cond_9
    if-eqz p4, :cond_c

    .line 3120
    :try_start_6
    invoke-virtual {v1, v10}, Lcom/sshtools/client/sftp/SftpClient;->ls(Ljava/lang/String;)[Lcom/sshtools/client/sftp/SftpFile;

    move-result-object v4

    .line 3125
    :goto_9
    array-length v5, v4

    if-ge v13, v5, :cond_c

    .line 3126
    aget-object v5, v4, v13

    .line 3129
    invoke-virtual {v5}, Lcom/sshtools/client/sftp/SftpFile;->getFilename()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v9, v6}, Lcom/sshtools/common/files/AbstractFile;->resolveFile(Ljava/lang/String;)Lcom/sshtools/common/files/AbstractFile;

    move-result-object v6

    .line 3131
    invoke-virtual {v8, v6}, Lcom/sshtools/client/sftp/DirectoryOperation;->containsFile(Lcom/sshtools/common/files/AbstractFile;)Z

    move-result v6

    if-nez v6, :cond_b

    invoke-virtual {v5}, Lcom/sshtools/client/sftp/SftpFile;->getFilename()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    invoke-virtual {v5}, Lcom/sshtools/client/sftp/SftpFile;->getFilename()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 3132
    invoke-virtual {v8, v5}, Lcom/sshtools/client/sftp/DirectoryOperation;->addDeletedFile(Lcom/sshtools/client/sftp/SftpFile;)V

    if-eqz p5, :cond_b

    .line 3135
    invoke-virtual {v5}, Lcom/sshtools/client/sftp/SftpFile;->attributes()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 3137
    invoke-direct {v1, v5, v8}, Lcom/sshtools/client/sftp/SftpClient;->recurseMarkForDeletion(Lcom/sshtools/client/sftp/SftpFile;Lcom/sshtools/client/sftp/DirectoryOperation;)V

    if-eqz p5, :cond_b

    .line 3140
    invoke-virtual {v5}, Lcom/sshtools/client/sftp/SftpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v3, v3}, Lcom/sshtools/client/sftp/SftpClient;->rm(Ljava/lang/String;ZZ)V

    goto :goto_a

    .line 3142
    :cond_a
    invoke-virtual {v5}, Lcom/sshtools/client/sftp/SftpFile;->attributes()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isFile()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 3143
    invoke-virtual {v5}, Lcom/sshtools/client/sftp/SftpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/sshtools/client/sftp/SftpClient;->rm(Ljava/lang/String;)V
    :try_end_6
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_6 .. :try_end_6} :catch_6

    :cond_b
    :goto_a
    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    :catch_6
    :cond_c
    return-object v8
.end method

.method public pwd()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 882
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient;->cwd:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sshtools/client/sftp/SftpClient;->getAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public quit()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 3007
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpChannel;->close()V

    return-void
.end method

.method public readDirectory(Lcom/sshtools/client/sftp/SftpHandle;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/client/sftp/SftpHandle;",
            ")",
            "Ljava/util/List<",
            "Lcom/sshtools/client/sftp/SftpFile;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 599
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 600
    invoke-virtual {p1, v0}, Lcom/sshtools/client/sftp/SftpHandle;->listChildren(Ljava/util/List;)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object v0
.end method

.method public relativeSymlink(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 2680
    invoke-direct {p0, p2}, Lcom/sshtools/client/sftp/SftpClient;->resolveRemotePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2681
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v0, p2, p1}, Lcom/sshtools/client/sftp/SftpChannel;->createSymbolicLink(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeCustomRoot(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "3.1.0"
    .end annotation

    .line 714
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient;->customRoots:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    return-void
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 2525
    invoke-direct {p0, p1}, Lcom/sshtools/client/sftp/SftpClient;->resolveRemotePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2526
    invoke-direct {p0, p2}, Lcom/sshtools/client/sftp/SftpClient;->resolveRemotePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2531
    :try_start_0
    iget-object v1, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v1, v0}, Lcom/sshtools/client/sftp/SftpChannel;->getAttributes(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v1
    :try_end_0
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 2538
    invoke-virtual {v1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2539
    iget-object p2, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-static {v0}, Lcom/sshtools/common/util/FileUtils;->checkEndsWithSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/sshtools/common/util/FileUtils;->lastPathElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/sshtools/client/sftp/SftpChannel;->renameFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2541
    :cond_0
    new-instance p1, Lcom/sshtools/common/sftp/SftpStatusException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " already exists on the remote filesystem"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0xb

    invoke-direct {p1, v0, p2}, Lcom/sshtools/common/sftp/SftpStatusException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 2534
    :catch_0
    iget-object p2, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {p2, p1, v0}, Lcom/sshtools/client/sftp/SftpChannel;->renameFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 2477
    new-instance p3, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {p3}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V

    .line 2480
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sshtools/client/sftp/SftpClient;->resolveRemotePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 2481
    invoke-direct {p0, p2}, Lcom/sshtools/client/sftp/SftpClient;->resolveRemotePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 2483
    iget-object p1, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    const-string v0, "posix-rename@openssh.com"

    .line 2484
    invoke-virtual {p3}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/sshtools/client/sftp/SftpChannel;->sendExtensionMessage(Ljava/lang/String;[B)Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v0

    .line 2483
    invoke-virtual {p1, v0, p2}, Lcom/sshtools/client/sftp/SftpChannel;->getOKRequestStatus(Lcom/sshtools/common/util/UnsignedInteger32;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2488
    invoke-virtual {p3}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p3}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V

    .line 2489
    throw p1

    .line 2491
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sshtools/client/sftp/SftpClient;->rename(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public rm(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 2558
    invoke-direct {p0, p1}, Lcom/sshtools/client/sftp/SftpClient;->resolveRemotePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2561
    :try_start_0
    iget-object v1, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v1, v0}, Lcom/sshtools/client/sftp/SftpChannel;->getAttributes(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v1

    .line 2562
    invoke-virtual {v1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2563
    iget-object v1, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v1, v0}, Lcom/sshtools/client/sftp/SftpChannel;->removeDirectory(Ljava/lang/String;)V

    return-void

    .line 2565
    :cond_0
    iget-object v1, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v1, v0}, Lcom/sshtools/client/sftp/SftpChannel;->removeFile(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 2569
    invoke-virtual {v1}, Lcom/sshtools/common/sftp/SftpStatusException;->getStatus()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 2571
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/sshtools/client/sftp/SftpClient;->statLink(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object p1

    .line 2572
    invoke-virtual {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isLink()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2573
    iget-object p1, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {p1, v0}, Lcom/sshtools/client/sftp/SftpChannel;->removeFile(Ljava/lang/String;)V

    return-void

    .line 2576
    :cond_1
    throw v1
    :try_end_1
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2579
    :catch_1
    throw v1

    .line 2583
    :cond_2
    throw v1
.end method

.method public rm(Ljava/lang/String;ZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 2599
    invoke-direct {p0, p1}, Lcom/sshtools/client/sftp/SftpClient;->resolveRemotePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2601
    iget-object v1, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v1, v0}, Lcom/sshtools/client/sftp/SftpChannel;->getAttributes(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v1

    .line 2605
    invoke-virtual {v1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2606
    invoke-virtual {p0, p1}, Lcom/sshtools/client/sftp/SftpClient;->ls(Ljava/lang/String;)[Lcom/sshtools/client/sftp/SftpFile;

    move-result-object p1

    const/4 v1, 0x4

    if-nez p2, :cond_1

    .line 2608
    array-length v2, p1

    if-gtz v2, :cond_0

    goto :goto_0

    .line 2609
    :cond_0
    new-instance p1, Lcom/sshtools/common/sftp/SftpStatusException;

    const-string p2, "You cannot delete non-empty directory, use force=true to overide"

    invoke-direct {p1, v1, p2}, Lcom/sshtools/common/sftp/SftpStatusException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 2612
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_6

    .line 2613
    aget-object v3, p1, v2

    .line 2615
    invoke-virtual {v3}, Lcom/sshtools/client/sftp/SftpFile;->attributes()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/sshtools/client/sftp/SftpFile;->getFilename()Ljava/lang/String;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Lcom/sshtools/client/sftp/SftpFile;->getFilename()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".."

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz p3, :cond_2

    .line 2617
    invoke-virtual {v3}, Lcom/sshtools/client/sftp/SftpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p2, p3}, Lcom/sshtools/client/sftp/SftpClient;->rm(Ljava/lang/String;ZZ)V

    goto :goto_2

    .line 2619
    :cond_2
    new-instance p1, Lcom/sshtools/common/sftp/SftpStatusException;

    const-string p2, "Directory has contents, cannot delete without recurse=true"

    invoke-direct {p1, v1, p2}, Lcom/sshtools/common/sftp/SftpStatusException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 2622
    :cond_3
    invoke-virtual {v3}, Lcom/sshtools/client/sftp/SftpFile;->attributes()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isFile()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3}, Lcom/sshtools/client/sftp/SftpFile;->attributes()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isLink()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2623
    :cond_4
    iget-object v4, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v3}, Lcom/sshtools/client/sftp/SftpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/sshtools/client/sftp/SftpChannel;->removeFile(Ljava/lang/String;)V

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2627
    :cond_6
    iget-object p1, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {p1, v0}, Lcom/sshtools/client/sftp/SftpChannel;->removeDirectory(Ljava/lang/String;)V

    return-void

    .line 2629
    :cond_7
    iget-object p1, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {p1, v0}, Lcom/sshtools/client/sftp/SftpChannel;->removeFile(Ljava/lang/String;)V

    return-void
.end method

.method public rmdir(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 2642
    invoke-direct {p0, p1}, Lcom/sshtools/client/sftp/SftpClient;->resolveRemotePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2643
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v0, p1}, Lcom/sshtools/client/sftp/SftpChannel;->getAttributes(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v0

    .line 2645
    invoke-virtual {v0}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2646
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v0, p1}, Lcom/sshtools/client/sftp/SftpChannel;->removeDirectory(Ljava/lang/String;)V

    return-void

    .line 2648
    :cond_0
    new-instance p1, Lcom/sshtools/common/sftp/SftpStatusException;

    const/16 v0, 0x13

    const-string v1, "File is not a directory"

    invoke-direct {p1, v0, v1}, Lcom/sshtools/common/sftp/SftpStatusException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public setAttributes(Ljava/lang/String;Lcom/sshtools/common/sftp/SftpFileAttributes;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 2300
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-direct {p0, p1}, Lcom/sshtools/client/sftp/SftpClient;->resolveRemotePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/sshtools/client/sftp/SftpChannel;->setAttributes(Ljava/lang/String;Lcom/sshtools/common/sftp/SftpFileAttributes;)V

    return-void
.end method

.method public setBlockSize(I)V
    .locals 1

    const/16 v0, 0x200

    if-lt p1, v0, :cond_0

    .line 387
    iput p1, p0, Lcom/sshtools/client/sftp/SftpClient;->blocksize:I

    return-void

    .line 385
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Block size must be greater than 512"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBufferSize(I)V
    .locals 2

    .line 512
    iput p1, p0, Lcom/sshtools/client/sftp/SftpClient;->buffersize:I

    .line 514
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Buffer size set to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setForceRemoteEOL(Z)V
    .locals 0

    .line 487
    iput-boolean p1, p0, Lcom/sshtools/client/sftp/SftpClient;->forceRemoteEOL:Z

    return-void
.end method

.method public setLocalEOL(I)V
    .locals 1

    .line 473
    iput p1, p0, Lcom/sshtools/client/sftp/SftpClient;->inputEOL:I

    .line 475
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 476
    const-string p1, "CRLF"

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    const-string p1, "CR"

    goto :goto_0

    :cond_1
    const-string p1, "LF"

    :goto_0
    const-string v0, "Input EOL set to "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public setMaxAsyncRequests(I)V
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    .line 531
    iput p1, p0, Lcom/sshtools/client/sftp/SftpClient;->asyncRequests:I

    .line 533
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Max async requests set to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 529
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Maximum asynchronous requests must be greater or equal to 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRegularExpressionSyntax(I)V
    .locals 0

    .line 1442
    iput p1, p0, Lcom/sshtools/client/sftp/SftpClient;->RegExpSyntax:I

    return-void
.end method

.method public setRemoteEOL(I)V
    .locals 1

    .line 453
    iput p1, p0, Lcom/sshtools/client/sftp/SftpClient;->outputEOL:I

    .line 455
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 456
    const-string p1, "CRLF"

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    const-string p1, "CR"

    goto :goto_0

    :cond_1
    const-string p1, "LF"

    :goto_0
    const-string v0, "Remote EOL set to "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public setStripEOL(Z)V
    .locals 0

    .line 434
    iput-boolean p1, p0, Lcom/sshtools/client/sftp/SftpClient;->stripEOL:Z

    return-void
.end method

.method public setTransferMode(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 419
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Mode can only be either binary or text"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 421
    :cond_1
    :goto_0
    iput p1, p0, Lcom/sshtools/client/sftp/SftpClient;->transferMode:I

    .line 423
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    if-ne p1, v0, :cond_2

    .line 424
    const-string p1, "binary"

    goto :goto_1

    :cond_2
    const-string p1, "text"

    :goto_1
    const-string v0, "Transfer mode set to "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public stat(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 2697
    invoke-direct {p0, p1}, Lcom/sshtools/client/sftp/SftpClient;->resolveRemotePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2698
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v0, p1}, Lcom/sshtools/client/sftp/SftpChannel;->getAttributes(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object p1

    return-object p1
.end method

.method public statLink(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 2714
    invoke-direct {p0, p1}, Lcom/sshtools/client/sftp/SftpClient;->resolveRemotePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2715
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v0, p1}, Lcom/sshtools/client/sftp/SftpChannel;->getLinkAttributes(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object p1

    return-object p1
.end method

.method public statVFS(Ljava/lang/String;)Lcom/sshtools/client/sftp/StatVfs;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/common/sftp/SftpStatusException;
        }
    .end annotation

    .line 3894
    :try_start_0
    new-instance v0, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {v0}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3895
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 3896
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpClient;->getSubsystemChannel()Lcom/sshtools/client/sftp/SftpChannel;

    move-result-object v1

    .line 3897
    const-string v2, "statvfs@openssh.com"

    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sshtools/client/sftp/SftpChannel;->sendExtensionMessage(Ljava/lang/String;[B)Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v2

    .line 3898
    invoke-virtual {v1, v2}, Lcom/sshtools/client/sftp/SftpChannel;->getResponse(Lcom/sshtools/common/util/UnsignedInteger32;)Lcom/sshtools/client/sftp/SftpMessage;

    move-result-object v1

    .line 3899
    invoke-virtual {v1}, Lcom/sshtools/client/sftp/SftpMessage;->getType()I

    move-result v3

    const/16 v4, 0x65

    if-eq v3, v4, :cond_0

    .line 3903
    new-instance p1, Lcom/sshtools/client/sftp/StatVfs;

    invoke-direct {p1, v1}, Lcom/sshtools/client/sftp/StatVfs;-><init>(Lcom/sshtools/client/sftp/SftpMessage;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3906
    :try_start_2
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    .line 3900
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/sshtools/client/sftp/SftpClient;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v3, v1, p1, v2}, Lcom/sshtools/client/sftp/SftpChannel;->processStatusResponse(Lcom/sshtools/client/sftp/SftpMessage;Ljava/lang/String;Lcom/sshtools/common/util/UnsignedInteger32;)V

    .line 3901
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Received unexpected SSH_FX_OK in status response!"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    .line 3894
    :try_start_4
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    .line 3907
    new-instance v0, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {v0, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public symlink(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 2665
    invoke-direct {p0, p1}, Lcom/sshtools/client/sftp/SftpClient;->resolveRemotePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/sshtools/client/sftp/SftpClient;->relativeSymlink(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public umask(I)I
    .locals 3

    const/4 v0, 0x1

    .line 573
    iput-boolean v0, p0, Lcom/sshtools/client/sftp/SftpClient;->applyUmask:Z

    .line 574
    iget v0, p0, Lcom/sshtools/client/sftp/SftpClient;->umask:I

    .line 575
    iput p1, p0, Lcom/sshtools/client/sftp/SftpClient;->umask:I

    .line 577
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 578
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "umask "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return v0
.end method

.method public umask(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 2453
    :try_start_0
    invoke-static {p1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/sshtools/client/sftp/SftpClient;->umask:I

    const/4 p1, 0x1

    .line 2454
    iput-boolean p1, p0, Lcom/sshtools/client/sftp/SftpClient;->applyUmask:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2456
    :catch_0
    new-instance p1, Lcom/sshtools/common/ssh/SshException;

    const-string v0, "umask must be 4 digit octal number e.g. 0022"

    const/4 v1, 0x4

    invoke-direct {p1, v0, v1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public verifyFiles(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 2747
    invoke-virtual/range {v0 .. v6}, Lcom/sshtools/client/sftp/SftpClient;->verifyFiles(Ljava/lang/String;Ljava/lang/String;JJ)Z

    move-result p1

    return p1
.end method

.method public verifyFiles(Ljava/lang/String;Ljava/lang/String;JJ)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 2771
    sget-object v7, Lcom/sshtools/client/sftp/RemoteHash;->md5:Lcom/sshtools/client/sftp/RemoteHash;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/sshtools/client/sftp/SftpClient;->verifyFiles(Ljava/lang/String;Ljava/lang/String;JJLcom/sshtools/client/sftp/RemoteHash;)Z

    move-result p1

    return p1
.end method

.method public verifyFiles(Ljava/lang/String;Ljava/lang/String;JJLcom/sshtools/client/sftp/RemoteHash;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 2777
    invoke-direct/range {p0 .. p1}, Lcom/sshtools/client/sftp/SftpClient;->resolveLocalPath(Ljava/lang/String;)Lcom/sshtools/common/files/AbstractFile;

    move-result-object v0

    .line 2778
    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->exists()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v8, 0x5

    .line 2784
    :try_start_0
    sget-object v1, Lcom/sshtools/client/sftp/SftpClient$2;->$SwitchMap$com$sshtools$client$sftp$RemoteHash:[I

    invoke-virtual/range {p7 .. p7}, Lcom/sshtools/client/sftp/RemoteHash;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v2, p2

    move-wide v3, p3

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object v9, v1

    move-object v1, p0

    goto :goto_1

    .line 2795
    :cond_0
    const-string v1, "SHA-512"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    goto :goto_0

    .line 2792
    :cond_1
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    goto :goto_0

    .line 2789
    :cond_2
    const-string v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    goto :goto_0

    .line 2786
    :cond_3
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    goto :goto_0

    .line 2799
    :goto_1
    invoke-virtual/range {v1 .. v7}, Lcom/sshtools/client/sftp/SftpClient;->getRemoteHash(Ljava/lang/String;JJLcom/sshtools/client/sftp/RemoteHash;)[B

    move-result-object v7

    .line 2801
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2802
    const-string v1, "Remote hash for {} is {}"

    invoke-static {v7}, Lcom/sshtools/common/util/Utils;->bytesToHex([B)Ljava/lang/String;

    move-result-object v10

    filled-new-array {p2, v10}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2805
    :cond_4
    new-instance p2, Ljava/security/DigestInputStream;

    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p2, v0, v9}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_5

    .line 2807
    :try_start_1
    invoke-virtual {p2, p3, p4}, Ljava/security/DigestInputStream;->skip(J)J

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_4

    :cond_5
    :goto_2
    cmp-long v0, v5, v0

    if-lez v0, :cond_6

    .line 2811
    invoke-static {}, Ljava/io/OutputStream;->nullOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {p2, v0, v5, v6}, Lcom/sshtools/common/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)V

    goto :goto_3

    .line 2813
    :cond_6
    invoke-static {}, Ljava/io/OutputStream;->nullOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/sshtools/common/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2815
    :goto_3
    :try_start_2
    invoke-virtual {p2}, Ljava/security/DigestInputStream;->close()V

    .line 2817
    invoke-virtual {v9}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p2

    .line 2819
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2820
    const-string v0, "Local hash for {} is {}"

    invoke-static {p2}, Lcom/sshtools/common/util/Utils;->bytesToHex([B)Ljava/lang/String;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2823
    :cond_7
    invoke-static {v7, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return p1

    .line 2805
    :goto_4
    :try_start_3
    invoke-virtual {p2}, Ljava/security/DigestInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object p2, v0

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p1
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 2828
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {p2, v8, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(ILjava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception v0

    move-object p1, v0

    .line 2826
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {p2, v8, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(ILjava/lang/Throwable;)V

    throw p2

    .line 2779
    :cond_8
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Local file "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " does not exist!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public verifyFiles(Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/client/sftp/RemoteHash;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, p3

    .line 2752
    invoke-virtual/range {v0 .. v7}, Lcom/sshtools/client/sftp/SftpClient;->verifyFiles(Ljava/lang/String;Ljava/lang/String;JJLcom/sshtools/client/sftp/RemoteHash;)Z

    move-result p1

    return p1
.end method

.method public visit(Ljava/lang/String;Ljava/nio/file/FileVisitor;)Ljava/nio/file/FileVisitResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/file/FileVisitor<",
            "Lcom/sshtools/client/sftp/SftpFile;",
            ">;)",
            "Ljava/nio/file/FileVisitResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/common/sftp/SftpStatusException;
        }
    .end annotation

    .line 3925
    invoke-virtual {p0, p1}, Lcom/sshtools/client/sftp/SftpClient;->stat(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v0

    .line 3926
    new-instance v1, Lcom/sshtools/client/sftp/SftpFile;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lcom/sshtools/client/sftp/SftpFile;-><init>(Ljava/lang/String;Lcom/sshtools/common/sftp/SftpFileAttributes;Ljava/lang/String;)V

    .line 3928
    :try_start_0
    invoke-virtual {v0}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3929
    invoke-direct {p0, v1}, Lcom/sshtools/client/sftp/SftpClient;->fileToBasicAttributes(Lcom/sshtools/client/sftp/SftpFile;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Ljava/nio/file/FileVisitor;->preVisitDirectory(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3931
    :try_start_1
    sget-object v3, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    if-eq v0, v3, :cond_0

    return-object v0

    .line 3934
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sshtools/client/sftp/SftpClient;->ls(Ljava/lang/String;)[Lcom/sshtools/client/sftp/SftpFile;

    move-result-object p1

    array-length v0, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_5

    aget-object v4, p1, v3

    .line 3935
    invoke-virtual {v4}, Lcom/sshtools/client/sftp/SftpFile;->attributes()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isLink()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Lcom/sshtools/client/sftp/SftpFile;->attributes()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 3940
    :cond_1
    invoke-virtual {v4}, Lcom/sshtools/client/sftp/SftpFile;->attributes()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lcom/sshtools/client/sftp/SftpFile;->getFilename()Ljava/lang/String;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 3941
    invoke-virtual {v4}, Lcom/sshtools/client/sftp/SftpFile;->getFilename()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".."

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 3942
    sget-object v5, Lcom/sshtools/client/sftp/SftpClient$2;->$SwitchMap$java$nio$file$FileVisitResult:[I

    invoke-virtual {v4}, Lcom/sshtools/client/sftp/SftpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, p2}, Lcom/sshtools/client/sftp/SftpClient;->visit(Ljava/lang/String;Ljava/nio/file/FileVisitor;)Ljava/nio/file/FileVisitResult;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/file/FileVisitResult;->ordinal()I

    move-result v4

    aget v4, v5, v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    goto :goto_2

    .line 3946
    :cond_2
    sget-object p1, Ljava/nio/file/FileVisitResult;->TERMINATE:Ljava/nio/file/FileVisitResult;

    return-object p1

    .line 3936
    :cond_3
    :goto_1
    invoke-direct {p0, v4}, Lcom/sshtools/client/sftp/SftpClient;->fileToBasicAttributes(Lcom/sshtools/client/sftp/SftpFile;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v5

    invoke-interface {p2, v4, v5}, Ljava/nio/file/FileVisitor;->visitFile(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object v4

    .line 3937
    sget-object v5, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    if-eq v4, v5, :cond_4

    sget-object v5, Ljava/nio/file/FileVisitResult;->SKIP_SUBTREE:Ljava/nio/file/FileVisitResult;

    if-eq v4, v5, :cond_4

    return-object v4

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3953
    :cond_5
    invoke-interface {p2, v1, v2}, Ljava/nio/file/FileVisitor;->postVisitDirectory(Ljava/lang/Object;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    .line 3954
    sget-object v0, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    if-eq p1, v0, :cond_7

    sget-object p2, Ljava/nio/file/FileVisitResult;->SKIP_SUBTREE:Ljava/nio/file/FileVisitResult;
    :try_end_1
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-eq p1, p2, :cond_7

    return-object p1

    :catch_0
    move-exception p1

    .line 3957
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p2, v1, v0}, Ljava/nio/file/FileVisitor;->postVisitDirectory(Ljava/lang/Object;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    .line 3958
    sget-object p2, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    if-eq p1, p2, :cond_7

    sget-object p2, Ljava/nio/file/FileVisitResult;->SKIP_SUBTREE:Ljava/nio/file/FileVisitResult;

    if-eq p1, p2, :cond_7

    return-object p1

    .line 3962
    :cond_6
    invoke-direct {p0, v1}, Lcom/sshtools/client/sftp/SftpClient;->fileToBasicAttributes(Lcom/sshtools/client/sftp/SftpFile;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object p1

    invoke-interface {p2, v1, p1}, Ljava/nio/file/FileVisitor;->visitFile(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    .line 3963
    sget-object p2, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    if-eq p1, p2, :cond_7

    sget-object p2, Ljava/nio/file/FileVisitResult;->SKIP_SUBTREE:Ljava/nio/file/FileVisitResult;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    if-eq p1, p2, :cond_7

    return-object p1

    .line 3969
    :cond_7
    sget-object p1, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object p1

    :catch_1
    move-exception p1

    .line 3967
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {p2, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
