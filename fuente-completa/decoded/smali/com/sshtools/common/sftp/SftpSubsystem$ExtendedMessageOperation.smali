.class Lcom/sshtools/common/sftp/SftpSubsystem$ExtendedMessageOperation;
.super Lcom/sshtools/common/sftp/SftpSubsystem$FileSystemOperation;
.source "SftpSubsystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/sftp/SftpSubsystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExtendedMessageOperation"
.end annotation


# instance fields
.field ext:Lcom/sshtools/common/sftp/SftpExtension;

.field final synthetic this$0:Lcom/sshtools/common/sftp/SftpSubsystem;


# direct methods
.method constructor <init>(Lcom/sshtools/common/sftp/SftpSubsystem;[BLcom/sshtools/common/sftp/SftpExtension;)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$ExtendedMessageOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    .line 399
    invoke-direct {p0, p1, p2}, Lcom/sshtools/common/sftp/SftpSubsystem$FileSystemOperation;-><init>(Lcom/sshtools/common/sftp/SftpSubsystem;[B)V

    .line 400
    iput-object p3, p0, Lcom/sshtools/common/sftp/SftpSubsystem$ExtendedMessageOperation;->ext:Lcom/sshtools/common/sftp/SftpExtension;

    return-void
.end method


# virtual methods
.method public doOperation()V
    .locals 3

    .line 405
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpSubsystem$ExtendedMessageOperation;->ext:Lcom/sshtools/common/sftp/SftpExtension;

    new-instance v1, Lcom/sshtools/common/util/ByteArrayReader;

    iget-object v2, p0, Lcom/sshtools/common/sftp/SftpSubsystem$ExtendedMessageOperation;->msg:[B

    invoke-direct {v1, v2}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V

    iget-object v2, p0, Lcom/sshtools/common/sftp/SftpSubsystem$ExtendedMessageOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-interface {v0, v1, v2}, Lcom/sshtools/common/sftp/SftpExtension;->processExtendedMessage(Lcom/sshtools/common/util/ByteArrayReader;Lcom/sshtools/common/sftp/SftpSubsystem;)V

    return-void
.end method

.method public getOp()Lcom/sshtools/common/sftp/SftpSubsystemOperation;
    .locals 1

    .line 410
    sget-object v0, Lcom/sshtools/common/sftp/SftpSubsystemOperation;->EXTENDED:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    return-object v0
.end method
