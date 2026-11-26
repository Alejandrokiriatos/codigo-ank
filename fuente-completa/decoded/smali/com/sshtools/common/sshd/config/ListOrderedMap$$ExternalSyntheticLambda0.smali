.class public final synthetic Lcom/sshtools/common/sshd/config/ListOrderedMap$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/sshtools/common/sshd/config/ListOrderedMap;


# direct methods
.method public synthetic constructor <init>(Lcom/sshtools/common/sshd/config/ListOrderedMap;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sshtools/common/sshd/config/ListOrderedMap$$ExternalSyntheticLambda0;->f$0:Lcom/sshtools/common/sshd/config/ListOrderedMap;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/ListOrderedMap$$ExternalSyntheticLambda0;->f$0:Lcom/sshtools/common/sshd/config/ListOrderedMap;

    invoke-virtual {v0, p1, p2}, Lcom/sshtools/common/sshd/config/ListOrderedMap;->lambda$putAll$0$com-sshtools-common-sshd-config-ListOrderedMap(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
