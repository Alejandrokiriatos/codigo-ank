.class Lcom/sshtools/synergy/nio/SshEngine$3;
.super Ljava/lang/Thread;
.source "SshEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/synergy/nio/SshEngine;->shutdownAsync(ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/synergy/nio/SshEngine;

.field final synthetic val$forceAfterMs:J

.field final synthetic val$graceful:Z


# direct methods
.method constructor <init>(Lcom/sshtools/synergy/nio/SshEngine;ZJ)V
    .locals 0

    .line 415
    iput-object p1, p0, Lcom/sshtools/synergy/nio/SshEngine$3;->this$0:Lcom/sshtools/synergy/nio/SshEngine;

    iput-boolean p2, p0, Lcom/sshtools/synergy/nio/SshEngine$3;->val$graceful:Z

    iput-wide p3, p0, Lcom/sshtools/synergy/nio/SshEngine$3;->val$forceAfterMs:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 417
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SshEngine$3;->this$0:Lcom/sshtools/synergy/nio/SshEngine;

    iget-boolean v1, p0, Lcom/sshtools/synergy/nio/SshEngine$3;->val$graceful:Z

    iget-wide v2, p0, Lcom/sshtools/synergy/nio/SshEngine$3;->val$forceAfterMs:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/sshtools/synergy/nio/SshEngine;->shutdownNow(ZJ)V

    return-void
.end method
