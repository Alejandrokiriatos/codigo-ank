.class Lcom/sshtools/common/sftp/SftpSubsystem$SetStatOperation;
.super Lcom/sshtools/common/sftp/SftpSubsystem$FileSystemOperation;
.source "SftpSubsystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/sftp/SftpSubsystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SetStatOperation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/common/sftp/SftpSubsystem;


# direct methods
.method constructor <init>(Lcom/sshtools/common/sftp/SftpSubsystem;[B)V
    .locals 0

    .line 454
    iput-object p1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$SetStatOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    .line 455
    invoke-direct {p0, p1, p2}, Lcom/sshtools/common/sftp/SftpSubsystem$FileSystemOperation;-><init>(Lcom/sshtools/common/sftp/SftpSubsystem;[B)V

    return-void
.end method


# virtual methods
.method public doOperation()V
    .locals 9

    .line 465
    new-instance v0, Lcom/sshtools/common/util/ByteArrayReader;

    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$SetStatOperation;->msg:[B

    invoke-direct {v0, v1}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V

    const-wide/16 v1, 0x1

    .line 467
    invoke-virtual {v0, v1, v2}, Lcom/sshtools/common/util/ByteArrayReader;->skip(J)J

    .line 471
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 477
    :try_start_0
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v3

    long-to-int v1, v3

    .line 478
    iget-object v3, p0, Lcom/sshtools/common/sftp/SftpSubsystem$SetStatOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v3}, Lcom/sshtools/common/sftp/SftpSubsystem;->-$$Nest$fgetCHARSET_ENCODING(Lcom/sshtools/common/sftp/SftpSubsystem;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sshtools/common/util/ByteArrayReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sshtools/common/sftp/SftpSubsystem;->checkDefaultPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a

    .line 480
    :try_start_1
    iget-object v3, p0, Lcom/sshtools/common/sftp/SftpSubsystem$SetStatOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v3}, Lcom/sshtools/common/sftp/SftpSubsystem;->-$$Nest$fgetnfs(Lcom/sshtools/common/sftp/SftpSubsystem;)Lcom/sshtools/common/sftp/AbstractFileSystem;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/sshtools/common/sftp/AbstractFileSystem;->getFileAttributes(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v5
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 483
    :try_start_2
    iget-object v3, p0, Lcom/sshtools/common/sftp/SftpSubsystem$SetStatOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    iget v3, v3, Lcom/sshtools/common/sftp/SftpSubsystem;->version:I

    iget-object v6, p0, Lcom/sshtools/common/sftp/SftpSubsystem$SetStatOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v6}, Lcom/sshtools/common/sftp/SftpSubsystem;->-$$Nest$fgetCHARSET_ENCODING(Lcom/sshtools/common/sftp/SftpSubsystem;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v3, v6}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->of(Lcom/sshtools/common/util/ByteArrayReader;ILjava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->build()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v6
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 485
    :try_start_3
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpSubsystem$SetStatOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v0}, Lcom/sshtools/common/sftp/SftpSubsystem;->-$$Nest$fgetnfs(Lcom/sshtools/common/sftp/SftpSubsystem;)Lcom/sshtools/common/sftp/AbstractFileSystem;

    move-result-object v0

    invoke-virtual {v0, v4, v6}, Lcom/sshtools/common/sftp/AbstractFileSystem;->setFileAttributes(Ljava/lang/String;Lcom/sshtools/common/sftp/SftpFileAttributes;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 488
    :try_start_4
    iget-object v3, p0, Lcom/sshtools/common/sftp/SftpSubsystem$SetStatOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireSetStatEvent(Ljava/lang/String;Lcom/sshtools/common/sftp/SftpFileAttributes;Lcom/sshtools/common/sftp/SftpFileAttributes;Ljava/util/Date;Ljava/lang/Exception;)V

    .line 489
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpSubsystem$SetStatOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    const-string v2, "The attributes were set"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V
    :try_end_4
    .catch Lcom/sshtools/common/sftp/SftpStatusEventException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_6

    :catch_0
    move-exception v0

    move-object v8, v0

    .line 492
    :try_start_5
    iget-object v3, p0, Lcom/sshtools/common/sftp/SftpSubsystem$SetStatOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual/range {v3 .. v8}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireSetStatEvent(Ljava/lang/String;Lcom/sshtools/common/sftp/SftpFileAttributes;Lcom/sshtools/common/sftp/SftpFileAttributes;Ljava/util/Date;Ljava/lang/Exception;)V

    .line 493
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpSubsystem$SetStatOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v8}, Lcom/sshtools/common/sftp/SftpStatusEventException;->getStatus()I

    move-result v2

    invoke-virtual {v8}, Lcom/sshtools/common/sftp/SftpStatusEventException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_6

    :catch_1
    move-exception v0

    move-object v8, v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v8, v0

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v8, v0

    goto/16 :goto_5

    :catch_4
    move-exception v0

    move-object v8, v0

    move-object v6, v2

    goto :goto_1

    :catch_5
    move-exception v0

    move-object v8, v0

    move-object v6, v2

    goto :goto_3

    :catch_6
    move-exception v0

    move-object v8, v0

    move-object v6, v2

    goto :goto_5

    :catch_7
    move-exception v0

    move-object v8, v0

    move-object v5, v2

    goto :goto_0

    :catch_8
    move-exception v0

    move-object v8, v0

    move-object v5, v2

    goto :goto_2

    :catch_9
    move-exception v0

    move-object v8, v0

    move-object v5, v2

    goto :goto_4

    :catch_a
    move-exception v0

    move-object v8, v0

    move-object v4, v2

    move-object v5, v4

    :goto_0
    move-object v6, v5

    .line 504
    :goto_1
    iget-object v3, p0, Lcom/sshtools/common/sftp/SftpSubsystem$SetStatOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual/range {v3 .. v8}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireSetStatEvent(Ljava/lang/String;Lcom/sshtools/common/sftp/SftpFileAttributes;Lcom/sshtools/common/sftp/SftpFileAttributes;Ljava/util/Date;Ljava/lang/Exception;)V

    .line 505
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpSubsystem$SetStatOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    const/4 v2, 0x4

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V

    goto :goto_6

    :catch_b
    move-exception v0

    move-object v8, v0

    move-object v4, v2

    move-object v5, v4

    :goto_2
    move-object v6, v5

    .line 500
    :goto_3
    iget-object v3, p0, Lcom/sshtools/common/sftp/SftpSubsystem$SetStatOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual/range {v3 .. v8}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireSetStatEvent(Ljava/lang/String;Lcom/sshtools/common/sftp/SftpFileAttributes;Lcom/sshtools/common/sftp/SftpFileAttributes;Ljava/util/Date;Ljava/lang/Exception;)V

    .line 501
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpSubsystem$SetStatOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    const/4 v2, 0x3

    .line 502
    invoke-virtual {v8}, Lcom/sshtools/common/permissions/PermissionDeniedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 501
    invoke-virtual {v0, v1, v2, v3}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V

    goto :goto_6

    :catch_c
    move-exception v0

    move-object v8, v0

    move-object v4, v2

    move-object v5, v4

    :goto_4
    move-object v6, v5

    .line 497
    :goto_5
    iget-object v3, p0, Lcom/sshtools/common/sftp/SftpSubsystem$SetStatOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual/range {v3 .. v8}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireSetStatEvent(Ljava/lang/String;Lcom/sshtools/common/sftp/SftpFileAttributes;Lcom/sshtools/common/sftp/SftpFileAttributes;Ljava/util/Date;Ljava/lang/Exception;)V

    .line 498
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpSubsystem$SetStatOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    const/4 v2, 0x2

    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V

    :goto_6
    return-void
.end method

.method public getOp()Lcom/sshtools/common/sftp/SftpSubsystemOperation;
    .locals 1

    .line 460
    sget-object v0, Lcom/sshtools/common/sftp/SftpSubsystemOperation;->SET_ATTRIBUTES:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    return-object v0
.end method
