.class Lcom/sshtools/common/sftp/SftpSubsystem$OpenFileOperation;
.super Lcom/sshtools/common/sftp/SftpSubsystem$FileSystemOperation;
.source "SftpSubsystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/sftp/SftpSubsystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OpenFileOperation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/common/sftp/SftpSubsystem;


# direct methods
.method constructor <init>(Lcom/sshtools/common/sftp/SftpSubsystem;[B)V
    .locals 0

    .line 947
    iput-object p1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$OpenFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    .line 948
    invoke-direct {p0, p1, p2}, Lcom/sshtools/common/sftp/SftpSubsystem$FileSystemOperation;-><init>(Lcom/sshtools/common/sftp/SftpSubsystem;[B)V

    return-void
.end method


# virtual methods
.method public doOperation()V
    .locals 15

    .line 958
    const-string v0, "Maximum concurrent transfers exceeded for the current context"

    new-instance v1, Lcom/sshtools/common/util/ByteArrayReader;

    iget-object v2, p0, Lcom/sshtools/common/sftp/SftpSubsystem$OpenFileOperation;->msg:[B

    invoke-direct {v1, v2}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V

    const-wide/16 v2, 0x1

    .line 960
    invoke-virtual {v1, v2, v3}, Lcom/sshtools/common/util/ByteArrayReader;->skip(J)J

    .line 964
    const-string v2, ""

    .line 965
    new-instance v3, Lcom/sshtools/common/util/UnsignedInteger32;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v4, v5}, Lcom/sshtools/common/util/UnsignedInteger32;-><init>(J)V

    .line 966
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v4

    .line 967
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    const/4 v12, 0x3

    const/4 v13, 0x4

    const/4 v5, -0x1

    const/4 v6, 0x0

    .line 972
    :try_start_0
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v7
    :try_end_0
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_0 .. :try_end_0} :catch_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_19
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_18
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_0 .. :try_end_0} :catch_17

    long-to-int v14, v7

    .line 973
    :try_start_1
    iget-object v7, p0, Lcom/sshtools/common/sftp/SftpSubsystem$OpenFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v7}, Lcom/sshtools/common/sftp/SftpSubsystem;->-$$Nest$fgetCHARSET_ENCODING(Lcom/sshtools/common/sftp/SftpSubsystem;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/sshtools/common/util/ByteArrayReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sshtools/common/sftp/SftpSubsystem;->checkDefaultPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_1
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_1 .. :try_end_1} :catch_16
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_1 .. :try_end_1} :catch_13

    .line 974
    :try_start_2
    iget-object v2, p0, Lcom/sshtools/common/sftp/SftpSubsystem$OpenFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    iget v2, v2, Lcom/sshtools/common/sftp/SftpSubsystem;->version:I
    :try_end_2
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_2 .. :try_end_2} :catch_12
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_10
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_2 .. :try_end_2} :catch_f

    if-le v2, v13, :cond_0

    .line 975
    :try_start_3
    new-instance v2, Lcom/sshtools/common/util/UnsignedInteger32;

    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v10

    invoke-direct {v2, v10, v11}, Lcom/sshtools/common/util/UnsignedInteger32;-><init>(J)V

    invoke-static {v2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4
    :try_end_3
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v11, v0

    move-object v7, v6

    goto/16 :goto_9

    :catch_1
    move-exception v0

    move-object v11, v0

    move-object v7, v6

    goto/16 :goto_a

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    :goto_0
    move-object v11, v0

    move-object v7, v6

    goto/16 :goto_c

    :cond_0
    :goto_1
    move-object v7, v6

    .line 977
    :try_start_4
    new-instance v6, Lcom/sshtools/common/util/UnsignedInteger32;

    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v10

    invoke-direct {v6, v10, v11}, Lcom/sshtools/common/util/UnsignedInteger32;-><init>(J)V
    :try_end_4
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_4 .. :try_end_4} :catch_e
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_4 .. :try_end_4} :catch_b

    .line 978
    :try_start_5
    iget-object v2, p0, Lcom/sshtools/common/sftp/SftpSubsystem$OpenFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    iget v2, v2, Lcom/sshtools/common/sftp/SftpSubsystem;->version:I

    iget-object v3, p0, Lcom/sshtools/common/sftp/SftpSubsystem$OpenFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v3}, Lcom/sshtools/common/sftp/SftpSubsystem;->-$$Nest$fgetCHARSET_ENCODING(Lcom/sshtools/common/sftp/SftpSubsystem;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->of(Lcom/sshtools/common/util/ByteArrayReader;ILjava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->build()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v7

    .line 980
    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$OpenFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v1}, Lcom/sshtools/common/sftp/SftpSubsystem;->getContext()Lcom/sshtools/common/ssh/Context;

    move-result-object v1

    const-class v2, Lcom/sshtools/common/policy/FileSystemPolicy;

    invoke-interface {v1, v2}, Lcom/sshtools/common/ssh/Context;->getPolicy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/common/policy/FileSystemPolicy;

    invoke-virtual {v1}, Lcom/sshtools/common/policy/FileSystemPolicy;->getMaxConcurrentTransfers()I

    move-result v1

    if-le v1, v5, :cond_1

    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$OpenFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v1}, Lcom/sshtools/common/sftp/SftpSubsystem;->-$$Nest$fgetopenFilesByContext(Lcom/sshtools/common/sftp/SftpSubsystem;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/sshtools/common/sftp/SftpSubsystem$OpenFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v2}, Lcom/sshtools/common/sftp/SftpSubsystem;->getContext()Lcom/sshtools/common/ssh/Context;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 982
    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$OpenFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v1}, Lcom/sshtools/common/sftp/SftpSubsystem;->-$$Nest$fgetopenFilesByContext(Lcom/sshtools/common/sftp/SftpSubsystem;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/sshtools/common/sftp/SftpSubsystem$OpenFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v2}, Lcom/sshtools/common/sftp/SftpSubsystem;->getContext()Lcom/sshtools/common/ssh/Context;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 983
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget-object v2, p0, Lcom/sshtools/common/sftp/SftpSubsystem$OpenFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v2}, Lcom/sshtools/common/sftp/SftpSubsystem;->getContext()Lcom/sshtools/common/ssh/Context;

    move-result-object v2

    const-class v3, Lcom/sshtools/common/policy/FileSystemPolicy;

    invoke-interface {v2, v3}, Lcom/sshtools/common/ssh/Context;->getPolicy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sshtools/common/policy/FileSystemPolicy;

    invoke-virtual {v2}, Lcom/sshtools/common/policy/FileSystemPolicy;->getMaxConcurrentTransfers()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 984
    iget-object v5, p0, Lcom/sshtools/common/sftp/SftpSubsystem$OpenFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    new-instance v10, Lcom/sshtools/common/permissions/PermissionDeniedException;

    invoke-direct {v10, v0}, Lcom/sshtools/common/permissions/PermissionDeniedException;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v5 .. v10}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireOpenInitEvent(Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/sftp/SftpFileAttributes;Ljava/lang/String;Ljava/util/Date;Ljava/lang/Exception;)V

    .line 985
    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$OpenFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v1, v14, v12, v0}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V

    return-void

    .line 990
    :cond_1
    iget-object v5, p0, Lcom/sshtools/common/sftp/SftpSubsystem$OpenFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireOpenInitEvent(Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/sftp/SftpFileAttributes;Ljava/lang/String;Ljava/util/Date;Ljava/lang/Exception;)V
    :try_end_5
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_5 .. :try_end_5} :catch_7

    .line 995
    :try_start_6
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpSubsystem$OpenFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v0}, Lcom/sshtools/common/sftp/SftpSubsystem;->-$$Nest$fgetnfs(Lcom/sshtools/common/sftp/SftpSubsystem;)Lcom/sshtools/common/sftp/AbstractFileSystem;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/sshtools/common/sftp/AbstractFileSystem;->fileExists(Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_2

    :catch_4
    const/4 v0, 0x0

    .line 999
    :goto_2
    :try_start_7
    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$OpenFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v1}, Lcom/sshtools/common/sftp/SftpSubsystem;->-$$Nest$fgetnfs(Lcom/sshtools/common/sftp/SftpSubsystem;)Lcom/sshtools/common/sftp/AbstractFileSystem;

    move-result-object v1

    invoke-virtual {v1, v8, v6, v4, v7}, Lcom/sshtools/common/sftp/AbstractFileSystem;->openFile(Ljava/lang/String;Lcom/sshtools/common/util/UnsignedInteger32;Ljava/util/Optional;Lcom/sshtools/common/sftp/SftpFileAttributes;)[B

    move-result-object v10

    .line 1001
    new-instance v1, Lcom/sshtools/common/sftp/TransferEvent;

    invoke-direct {v1}, Lcom/sshtools/common/sftp/TransferEvent;-><init>()V

    .line 1002
    iput-object v8, v1, Lcom/sshtools/common/sftp/TransferEvent;->path:Ljava/lang/String;

    .line 1003
    iget-object v2, p0, Lcom/sshtools/common/sftp/SftpSubsystem$OpenFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v2}, Lcom/sshtools/common/sftp/SftpSubsystem;->-$$Nest$fgetnfs(Lcom/sshtools/common/sftp/SftpSubsystem;)Lcom/sshtools/common/sftp/AbstractFileSystem;

    move-result-object v2

    iput-object v2, v1, Lcom/sshtools/common/sftp/TransferEvent;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    .line 1004
    iput-object v10, v1, Lcom/sshtools/common/sftp/TransferEvent;->handle:[B

    .line 1005
    iput-boolean v0, v1, Lcom/sshtools/common/sftp/TransferEvent;->exists:Z

    .line 1006
    iput-object v6, v1, Lcom/sshtools/common/sftp/TransferEvent;->flags:Lcom/sshtools/common/util/UnsignedInteger32;

    .line 1007
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v10}, Ljava/lang/String;-><init>([B)V

    iput-object v0, v1, Lcom/sshtools/common/sftp/TransferEvent;->key:Ljava/lang/String;
    :try_end_7
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_7 .. :try_end_7} :catch_7

    .line 1010
    :try_start_8
    iget-object v5, p0, Lcom/sshtools/common/sftp/SftpSubsystem$OpenFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireOpenFileEvent(Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/sftp/SftpFileAttributes;Ljava/lang/String;Ljava/util/Date;[BLjava/lang/Exception;)V

    .line 1012
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpSubsystem$OpenFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v0, v8, v1}, Lcom/sshtools/common/sftp/SftpSubsystem;->addTransferEvent(Ljava/lang/String;Lcom/sshtools/common/sftp/TransferEvent;)V

    .line 1014
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpSubsystem$OpenFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v0, v14, v10}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendHandleMessage(I[B)V
    :try_end_8
    .catch Lcom/sshtools/common/sftp/SftpStatusEventException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_8 .. :try_end_8} :catch_7

    goto/16 :goto_11

    :catch_5
    move-exception v0

    .line 1016
    :try_start_9
    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$OpenFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v0}, Lcom/sshtools/common/sftp/SftpStatusEventException;->getStatus()I

    move-result v2

    invoke-virtual {v0}, Lcom/sshtools/common/sftp/SftpStatusEventException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v14, v2, v0}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V
    :try_end_9
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_9 .. :try_end_9} :catch_7

    .line 1018
    :try_start_a
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpSubsystem$OpenFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v0}, Lcom/sshtools/common/sftp/SftpSubsystem;->-$$Nest$fgetnfs(Lcom/sshtools/common/sftp/SftpSubsystem;)Lcom/sshtools/common/sftp/AbstractFileSystem;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/sshtools/common/sftp/AbstractFileSystem;->closeFile([B)V
    :try_end_a
    .catch Lcom/sshtools/common/sftp/InvalidHandleException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1021
    :try_start_b
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpSubsystem$OpenFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v0}, Lcom/sshtools/common/sftp/SftpSubsystem;->-$$Nest$fgetnfs(Lcom/sshtools/common/sftp/SftpSubsystem;)Lcom/sshtools/common/sftp/AbstractFileSystem;

    move-result-object v0

    :goto_3
    invoke-virtual {v0, v10}, Lcom/sshtools/common/sftp/AbstractFileSystem;->freeHandle([B)V

    goto/16 :goto_11

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$OpenFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v1}, Lcom/sshtools/common/sftp/SftpSubsystem;->-$$Nest$fgetnfs(Lcom/sshtools/common/sftp/SftpSubsystem;)Lcom/sshtools/common/sftp/AbstractFileSystem;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/sshtools/common/sftp/AbstractFileSystem;->freeHandle([B)V

    .line 1022
    throw v0

    .line 1021
    :catch_6
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpSubsystem$OpenFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v0}, Lcom/sshtools/common/sftp/SftpSubsystem;->-$$Nest$fgetnfs(Lcom/sshtools/common/sftp/SftpSubsystem;)Lcom/sshtools/common/sftp/AbstractFileSystem;

    move-result-object v0
    :try_end_b
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_b .. :try_end_b} :catch_a
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_3

    :catch_7
    move-exception v0

    move-object v11, v0

    goto/16 :goto_d

    :catch_8
    move-exception v0

    move-object v11, v0

    goto/16 :goto_e

    :catch_9
    move-exception v0

    goto :goto_4

    :catch_a
    move-exception v0

    :goto_4
    move-object v11, v0

    goto/16 :goto_10

    :catch_b
    move-exception v0

    goto :goto_5

    :catch_c
    move-exception v0

    goto :goto_6

    :catch_d
    move-exception v0

    goto :goto_8

    :catch_e
    move-exception v0

    goto :goto_8

    :catch_f
    move-exception v0

    move-object v7, v6

    :goto_5
    move-object v11, v0

    goto :goto_9

    :catch_10
    move-exception v0

    move-object v7, v6

    :goto_6
    move-object v11, v0

    goto :goto_a

    :catch_11
    move-exception v0

    goto :goto_7

    :catch_12
    move-exception v0

    :goto_7
    move-object v7, v6

    :goto_8
    move-object v11, v0

    goto :goto_c

    :catch_13
    move-exception v0

    move-object v7, v6

    move-object v11, v0

    move-object v8, v2

    :goto_9
    move-object v6, v3

    goto :goto_d

    :catch_14
    move-exception v0

    move-object v7, v6

    move-object v11, v0

    move-object v8, v2

    :goto_a
    move-object v6, v3

    goto :goto_e

    :catch_15
    move-exception v0

    goto :goto_b

    :catch_16
    move-exception v0

    :goto_b
    move-object v7, v6

    move-object v11, v0

    move-object v8, v2

    :goto_c
    move-object v6, v3

    goto :goto_10

    :catch_17
    move-exception v0

    move-object v7, v6

    move-object v11, v0

    move-object v8, v2

    move-object v6, v3

    move v14, v5

    .line 1034
    :goto_d
    iget-object v5, p0, Lcom/sshtools/common/sftp/SftpSubsystem$OpenFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v11}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireOpenFileEvent(Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/sftp/SftpFileAttributes;Ljava/lang/String;Ljava/util/Date;[BLjava/lang/Exception;)V

    .line 1035
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpSubsystem$OpenFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    .line 1036
    invoke-virtual {v11}, Lcom/sshtools/common/permissions/PermissionDeniedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 1035
    invoke-virtual {v0, v14, v12, v1}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V

    goto :goto_11

    :catch_18
    move-exception v0

    move-object v7, v6

    move-object v11, v0

    move-object v8, v2

    move-object v6, v3

    move v14, v5

    .line 1031
    :goto_e
    iget-object v5, p0, Lcom/sshtools/common/sftp/SftpSubsystem$OpenFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v11}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireOpenFileEvent(Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/sftp/SftpFileAttributes;Ljava/lang/String;Ljava/util/Date;[BLjava/lang/Exception;)V

    .line 1032
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpSubsystem$OpenFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v11}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v14, v13, v1}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V

    goto :goto_11

    :catch_19
    move-exception v0

    goto :goto_f

    :catch_1a
    move-exception v0

    :goto_f
    move-object v7, v6

    move-object v11, v0

    move-object v8, v2

    move-object v6, v3

    move v14, v5

    .line 1028
    :goto_10
    iget-object v5, p0, Lcom/sshtools/common/sftp/SftpSubsystem$OpenFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v11}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireOpenFileEvent(Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/sftp/SftpFileAttributes;Ljava/lang/String;Ljava/util/Date;[BLjava/lang/Exception;)V

    .line 1029
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpSubsystem$OpenFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    const/4 v1, 0x2

    invoke-virtual {v11}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v14, v1, v2}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V

    :goto_11
    return-void
.end method

.method public getOp()Lcom/sshtools/common/sftp/SftpSubsystemOperation;
    .locals 1

    .line 953
    sget-object v0, Lcom/sshtools/common/sftp/SftpSubsystemOperation;->OPEN_FILE:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    return-object v0
.end method
