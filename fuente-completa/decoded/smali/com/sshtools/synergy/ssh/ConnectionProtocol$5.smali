.class Lcom/sshtools/synergy/ssh/ConnectionProtocol$5;
.super Ljava/lang/Object;
.source "ConnectionProtocol.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/synergy/ssh/ConnectionProtocol;->idle()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/synergy/ssh/ConnectionProtocol;


# direct methods
.method constructor <init>(Lcom/sshtools/synergy/ssh/ConnectionProtocol;)V
    .locals 0

    .line 1119
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$5;->this$0:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1121
    new-instance v0, Lcom/sshtools/common/ssh/GlobalRequest;

    iget-object v1, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$5;->this$0:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    iget-object v1, v1, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->con:Lcom/sshtools/synergy/ssh/Connection;

    const/4 v2, 0x0

    const-string v3, "ping@sshtools.com"

    invoke-direct {v0, v3, v1, v2}, Lcom/sshtools/common/ssh/GlobalRequest;-><init>(Ljava/lang/String;Lcom/sshtools/common/ssh/SshConnection;[B)V

    .line 1124
    const-string v1, "maverick.pingTimeout"

    const-string v2, "60000"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 1125
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$5;->this$0:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    invoke-virtual {v3, v0, v1, v2}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->sendGlobalRequestAndWait(Lcom/sshtools/common/ssh/GlobalRequest;J)V

    .line 1126
    invoke-virtual {v0}, Lcom/sshtools/common/ssh/GlobalRequest;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1127
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1128
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Remote node did not respond to the ping within the timeout period {}ms!"

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1130
    :cond_0
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$5;->this$0:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->getTransport()Lcom/sshtools/synergy/ssh/TransportProtocol;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->kill()V

    return-void

    .line 1132
    :cond_1
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 1133
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Remote node successfully responded to the ping."

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
