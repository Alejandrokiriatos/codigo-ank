.class Lcom/sshtools/common/sftp/SftpSubsystem$MakeDirectoryOperation;
.super Lcom/sshtools/common/sftp/SftpSubsystem$FileSystemOperation;
.source "SftpSubsystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/sftp/SftpSubsystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MakeDirectoryOperation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/common/sftp/SftpSubsystem;


# direct methods
.method constructor <init>(Lcom/sshtools/common/sftp/SftpSubsystem;[B)V
    .locals 0

    .line 2276
    iput-object p1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$MakeDirectoryOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    .line 2277
    invoke-direct {p0, p1, p2}, Lcom/sshtools/common/sftp/SftpSubsystem$FileSystemOperation;-><init>(Lcom/sshtools/common/sftp/SftpSubsystem;[B)V

    return-void
.end method


# virtual methods
.method public doOperation()V
    .locals 10

    .line 2287
    new-instance v0, Lcom/sshtools/common/util/ByteArrayReader;

    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$MakeDirectoryOperation;->msg:[B

    invoke-direct {v0, v1}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V

    const-wide/16 v1, 0x1

    .line 2289
    invoke-virtual {v0, v1, v2}, Lcom/sshtools/common/util/ByteArrayReader;->skip(J)J

    .line 2292
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 2296
    :try_start_0
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v6

    long-to-int v4, v6

    .line 2297
    iget-object v6, p0, Lcom/sshtools/common/sftp/SftpSubsystem$MakeDirectoryOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v6}, Lcom/sshtools/common/sftp/SftpSubsystem;->-$$Nest$fgetCHARSET_ENCODING(Lcom/sshtools/common/sftp/SftpSubsystem;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/sshtools/common/util/ByteArrayReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sshtools/common/sftp/SftpSubsystem;->checkDefaultPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Lcom/sshtools/common/files/FileExistsException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2298
    :try_start_1
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->available()I

    move-result v7

    if-lez v7, :cond_0

    .line 2299
    iget-object v7, p0, Lcom/sshtools/common/sftp/SftpSubsystem$MakeDirectoryOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    iget v7, v7, Lcom/sshtools/common/sftp/SftpSubsystem;->version:I

    iget-object v8, p0, Lcom/sshtools/common/sftp/SftpSubsystem$MakeDirectoryOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v8}, Lcom/sshtools/common/sftp/SftpSubsystem;->-$$Nest$fgetCHARSET_ENCODING(Lcom/sshtools/common/sftp/SftpSubsystem;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v7, v8}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->of(Lcom/sshtools/common/util/ByteArrayReader;ILjava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->build()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v7

    goto :goto_0

    :cond_0
    move-object v7, v5

    .line 2302
    :goto_0
    iget-object v8, p0, Lcom/sshtools/common/sftp/SftpSubsystem$MakeDirectoryOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v8}, Lcom/sshtools/common/sftp/SftpSubsystem;->-$$Nest$fgetnfs(Lcom/sshtools/common/sftp/SftpSubsystem;)Lcom/sshtools/common/sftp/AbstractFileSystem;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/sshtools/common/sftp/AbstractFileSystem;->fileExists(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 2303
    iget-object v9, p0, Lcom/sshtools/common/sftp/SftpSubsystem$MakeDirectoryOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v9}, Lcom/sshtools/common/sftp/SftpSubsystem;->-$$Nest$fgetnfs(Lcom/sshtools/common/sftp/SftpSubsystem;)Lcom/sshtools/common/sftp/AbstractFileSystem;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Lcom/sshtools/common/sftp/AbstractFileSystem;->makeDirectory(Ljava/lang/String;Lcom/sshtools/common/sftp/SftpFileAttributes;)Z

    move-result v7
    :try_end_1
    .catch Lcom/sshtools/common/files/FileExistsException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_1

    .line 2306
    :try_start_2
    iget-object v7, p0, Lcom/sshtools/common/sftp/SftpSubsystem$MakeDirectoryOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v7, v6, v1, v5}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireMakeDirectoryEvent(Ljava/lang/String;Ljava/util/Date;Ljava/lang/Exception;)V

    .line 2308
    iget-object v5, p0, Lcom/sshtools/common/sftp/SftpSubsystem$MakeDirectoryOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    const-string v7, "The operation completed sucessfully"

    const/4 v8, 0x0

    invoke-virtual {v5, v4, v8, v7}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V
    :try_end_2
    .catch Lcom/sshtools/common/sftp/SftpStatusEventException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/sshtools/common/files/FileExistsException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v5

    .line 2311
    :try_start_3
    iget-object v7, p0, Lcom/sshtools/common/sftp/SftpSubsystem$MakeDirectoryOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v5}, Lcom/sshtools/common/sftp/SftpStatusEventException;->getStatus()I

    move-result v8

    invoke-virtual {v5}, Lcom/sshtools/common/sftp/SftpStatusEventException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v4, v8, v5}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V
    :try_end_3
    .catch Lcom/sshtools/common/files/FileExistsException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 2316
    :cond_1
    :try_start_4
    iget-object v5, p0, Lcom/sshtools/common/sftp/SftpSubsystem$MakeDirectoryOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    if-eqz v8, :cond_2

    .line 2317
    new-instance v7, Lcom/sshtools/common/files/FileExistsException;

    invoke-direct {v7}, Lcom/sshtools/common/files/FileExistsException;-><init>()V

    goto :goto_1

    :cond_2
    new-instance v7, Ljava/io/IOException;

    const-string v9, "The operation failed."

    invoke-direct {v7, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 2316
    :goto_1
    invoke-virtual {v5, v6, v1, v7}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireMakeDirectoryEvent(Ljava/lang/String;Ljava/util/Date;Ljava/lang/Exception;)V

    .line 2319
    iget-object v5, p0, Lcom/sshtools/common/sftp/SftpSubsystem$MakeDirectoryOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    if-eqz v8, :cond_3

    const/16 v7, 0xb

    goto :goto_2

    :cond_3
    move v7, v2

    :goto_2
    const-string v8, "The operation failed"

    invoke-virtual {v5, v4, v7, v8}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V
    :try_end_4
    .catch Lcom/sshtools/common/sftp/SftpStatusEventException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/sshtools/common/files/FileExistsException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v5

    .line 2322
    :try_start_5
    iget-object v7, p0, Lcom/sshtools/common/sftp/SftpSubsystem$MakeDirectoryOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v5}, Lcom/sshtools/common/sftp/SftpStatusEventException;->getStatus()I

    move-result v8

    invoke-virtual {v5}, Lcom/sshtools/common/sftp/SftpStatusEventException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v4, v8, v5}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V
    :try_end_5
    .catch Lcom/sshtools/common/files/FileExistsException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2341
    :goto_3
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-void

    :catch_2
    move-exception v2

    move-object v5, v6

    goto :goto_4

    :catch_3
    move-exception v2

    move-object v5, v6

    goto :goto_5

    :catch_4
    move-exception v3

    move-object v5, v6

    goto :goto_6

    :catch_5
    move-exception v2

    move-object v5, v6

    goto :goto_7

    :catchall_0
    move-exception v1

    goto :goto_9

    :catch_6
    move-exception v2

    .line 2338
    :goto_4
    :try_start_6
    iget-object v6, p0, Lcom/sshtools/common/sftp/SftpSubsystem$MakeDirectoryOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v6, v5, v1, v2}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireMakeDirectoryEvent(Ljava/lang/String;Ljava/util/Date;Ljava/lang/Exception;)V

    .line 2339
    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$MakeDirectoryOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v3, v2}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V

    goto :goto_8

    :catch_7
    move-exception v2

    .line 2334
    :goto_5
    iget-object v3, p0, Lcom/sshtools/common/sftp/SftpSubsystem$MakeDirectoryOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v3, v5, v1, v2}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireMakeDirectoryEvent(Ljava/lang/String;Ljava/util/Date;Ljava/lang/Exception;)V

    .line 2335
    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$MakeDirectoryOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    .line 2336
    invoke-virtual {v2}, Lcom/sshtools/common/permissions/PermissionDeniedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    .line 2335
    invoke-virtual {v1, v4, v3, v2}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V

    goto :goto_8

    :catch_8
    move-exception v3

    .line 2331
    :goto_6
    iget-object v6, p0, Lcom/sshtools/common/sftp/SftpSubsystem$MakeDirectoryOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v6, v5, v1, v3}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireMakeDirectoryEvent(Ljava/lang/String;Ljava/util/Date;Ljava/lang/Exception;)V

    .line 2332
    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$MakeDirectoryOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v2, v3}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V

    goto :goto_8

    :catch_9
    move-exception v2

    .line 2328
    :goto_7
    iget-object v6, p0, Lcom/sshtools/common/sftp/SftpSubsystem$MakeDirectoryOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v6, v5, v1, v2}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireMakeDirectoryEvent(Ljava/lang/String;Ljava/util/Date;Ljava/lang/Exception;)V

    .line 2329
    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$MakeDirectoryOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    const-string v2, "File already exists"

    invoke-virtual {v1, v4, v3, v2}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2341
    :goto_8
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-void

    :goto_9
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 2342
    throw v1
.end method

.method public getOp()Lcom/sshtools/common/sftp/SftpSubsystemOperation;
    .locals 1

    .line 2282
    sget-object v0, Lcom/sshtools/common/sftp/SftpSubsystemOperation;->MAKE_DIRECTORY:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    return-object v0
.end method
