.class Lcom/sshtools/common/sftp/SftpSubsystem$1;
.super Ljava/lang/Object;
.source "SftpSubsystem.java"

# interfaces
.implements Lcom/sshtools/common/ssh/ChannelEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/common/sftp/SftpSubsystem;->init(Lcom/sshtools/common/ssh/SessionChannel;Lcom/sshtools/common/ssh/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/common/sftp/SftpSubsystem;


# direct methods
.method constructor <init>(Lcom/sshtools/common/sftp/SftpSubsystem;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$1;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChannelClosing(Lcom/sshtools/common/ssh/Channel;)V
    .locals 1

    const/4 v0, 0x0

    .line 136
    invoke-static {p1, v0}, Lcom/sshtools/common/ssh/SessionChannelHelper;->sendExitStatus(Lcom/sshtools/common/ssh/Channel;I)V

    return-void
.end method
