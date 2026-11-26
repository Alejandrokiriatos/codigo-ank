.class Lcom/sshtools/synergy/nio/SshEngine$1;
.super Ljava/lang/Thread;
.source "SshEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/synergy/nio/SshEngine;->startup(Ljava/util/Properties;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/synergy/nio/SshEngine;

.field final synthetic val$properties:Ljava/util/Properties;


# direct methods
.method constructor <init>(Lcom/sshtools/synergy/nio/SshEngine;Ljava/util/Properties;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/sshtools/synergy/nio/SshEngine$1;->this$0:Lcom/sshtools/synergy/nio/SshEngine;

    iput-object p2, p0, Lcom/sshtools/synergy/nio/SshEngine$1;->val$properties:Ljava/util/Properties;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 220
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 221
    const-string v0, "The system is shutting down"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SshEngine$1;->this$0:Lcom/sshtools/synergy/nio/SshEngine;

    iget-object v2, p0, Lcom/sshtools/synergy/nio/SshEngine$1;->val$properties:Ljava/util/Properties;

    const-string v3, "maverick.config.shutdown.defaultGracePeriod"

    const-wide/16 v4, 0x1388

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/sshtools/synergy/nio/SshEngine;->getLongValue(Ljava/util/Properties;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/sshtools/synergy/nio/SshEngine;->shutdownNow(ZJ)V

    return-void
.end method
