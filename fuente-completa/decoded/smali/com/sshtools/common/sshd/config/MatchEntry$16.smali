.class Lcom/sshtools/common/sshd/config/MatchEntry$16;
.super Ljava/lang/Object;
.source "MatchEntry.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/common/sshd/config/MatchEntry;->hasLocalPortEntry()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/common/sshd/config/MatchEntry;


# direct methods
.method constructor <init>(Lcom/sshtools/common/sshd/config/MatchEntry;)V
    .locals 0

    .line 463
    iput-object p1, p0, Lcom/sshtools/common/sshd/config/MatchEntry$16;->this$0:Lcom/sshtools/common/sshd/config/MatchEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 467
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/MatchEntry$16;->this$0:Lcom/sshtools/common/sshd/config/MatchEntry;

    invoke-static {v0}, Lcom/sshtools/common/sshd/config/MatchEntry;->-$$Nest$fgetmatchCriteriaMap(Lcom/sshtools/common/sshd/config/MatchEntry;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "LocalPort"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 463
    invoke-virtual {p0}, Lcom/sshtools/common/sshd/config/MatchEntry$16;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
