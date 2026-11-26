.class Lcom/sshtools/synergy/nio/SshEngine$2;
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
.method constructor <init>(Lcom/sshtools/synergy/nio/SshEngine;Ljava/lang/String;Ljava/util/Properties;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/sshtools/synergy/nio/SshEngine$2;->this$0:Lcom/sshtools/synergy/nio/SshEngine;

    iput-object p3, p0, Lcom/sshtools/synergy/nio/SshEngine$2;->val$properties:Ljava/util/Properties;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 292
    :goto_0
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SshEngine$2;->this$0:Lcom/sshtools/synergy/nio/SshEngine;

    invoke-virtual {v0}, Lcom/sshtools/synergy/nio/SshEngine;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SshEngine$2;->this$0:Lcom/sshtools/synergy/nio/SshEngine;

    iget-object v1, p0, Lcom/sshtools/synergy/nio/SshEngine$2;->val$properties:Ljava/util/Properties;

    const-string v2, "maverick.threadDumpInterval"

    const-wide/32 v3, 0x493e0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sshtools/synergy/nio/SshEngine;->getLongValue(Ljava/util/Properties;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :catch_0
    sget-object v0, Lcom/sshtools/common/logger/Log$Level;->INFO:Lcom/sshtools/common/logger/Log$Level;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Thread$State;

    invoke-static {v1}, Lcom/sshtools/common/util/Utils;->generateThreadDump([Ljava/lang/Thread$State;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sshtools/common/logger/Log;->raw(Lcom/sshtools/common/logger/Log$Level;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
