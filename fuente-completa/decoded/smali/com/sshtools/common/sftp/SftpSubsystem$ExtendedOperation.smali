.class Lcom/sshtools/common/sftp/SftpSubsystem$ExtendedOperation;
.super Lcom/sshtools/common/sftp/SftpSubsystem$FileSystemOperation;
.source "SftpSubsystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/sftp/SftpSubsystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExtendedOperation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/common/sftp/SftpSubsystem;


# direct methods
.method constructor <init>(Lcom/sshtools/common/sftp/SftpSubsystem;[B)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$ExtendedOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    .line 418
    invoke-direct {p0, p1, p2}, Lcom/sshtools/common/sftp/SftpSubsystem$FileSystemOperation;-><init>(Lcom/sshtools/common/sftp/SftpSubsystem;[B)V

    return-void
.end method


# virtual methods
.method public doOperation()V
    .locals 5

    .line 423
    new-instance v0, Lcom/sshtools/common/util/ByteArrayReader;

    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$ExtendedOperation;->msg:[B

    invoke-direct {v0, v1}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V

    const-wide/16 v1, 0x1

    .line 425
    invoke-virtual {v0, v1, v2}, Lcom/sshtools/common/util/ByteArrayReader;->skip(J)J

    .line 428
    :try_start_0
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v1

    long-to-int v1, v1

    .line 429
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object v2

    .line 431
    iget-object v3, p0, Lcom/sshtools/common/sftp/SftpSubsystem$ExtendedOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v3}, Lcom/sshtools/common/sftp/SftpSubsystem;->getContext()Lcom/sshtools/common/ssh/Context;

    move-result-object v3

    const-class v4, Lcom/sshtools/common/policy/FileSystemPolicy;

    invoke-interface {v3, v4}, Lcom/sshtools/common/ssh/Context;->getPolicy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sshtools/common/policy/FileSystemPolicy;

    invoke-virtual {v3, v2}, Lcom/sshtools/common/policy/FileSystemPolicy;->getSFTPExtension(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpExtension;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 434
    iget-object v3, p0, Lcom/sshtools/common/sftp/SftpSubsystem$ExtendedOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-interface {v2, v0, v1, v3}, Lcom/sshtools/common/sftp/SftpExtension;->processMessage(Lcom/sshtools/common/util/ByteArrayReader;ILcom/sshtools/common/sftp/SftpSubsystem;)V

    goto :goto_0

    .line 436
    :cond_0
    iget-object v2, p0, Lcom/sshtools/common/sftp/SftpSubsystem$ExtendedOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    const-string v3, "Extensions not currently supported"

    const/16 v4, 0x8

    invoke-virtual {v2, v1, v4, v3}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    :goto_0
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 443
    throw v1

    .line 442
    :catch_0
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-void
.end method

.method public getOp()Lcom/sshtools/common/sftp/SftpSubsystemOperation;
    .locals 1

    .line 448
    sget-object v0, Lcom/sshtools/common/sftp/SftpSubsystemOperation;->EXTENDED:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    return-object v0
.end method
