.class Lcom/sshtools/common/sshd/config/MatchEntry$2;
.super Ljava/lang/Object;
.source "MatchEntry.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/common/sshd/config/MatchEntry;->remove()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/common/sshd/config/MatchEntry;


# direct methods
.method constructor <init>(Lcom/sshtools/common/sshd/config/MatchEntry;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/sshtools/common/sshd/config/MatchEntry$2;->this$0:Lcom/sshtools/common/sshd/config/MatchEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 91
    invoke-virtual {p0}, Lcom/sshtools/common/sshd/config/MatchEntry$2;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/MatchEntry$2;->this$0:Lcom/sshtools/common/sshd/config/MatchEntry;

    iget-object v0, v0, Lcom/sshtools/common/sshd/config/MatchEntry;->sshdConfigFile:Lcom/sshtools/common/sshd/config/SshdConfigFile;

    iget-object v1, p0, Lcom/sshtools/common/sshd/config/MatchEntry$2;->this$0:Lcom/sshtools/common/sshd/config/MatchEntry;

    invoke-virtual {v0, v1}, Lcom/sshtools/common/sshd/config/SshdConfigFile;->removeMatchEntry(Lcom/sshtools/common/sshd/config/MatchEntry;)V

    const/4 v0, 0x0

    return-object v0
.end method
