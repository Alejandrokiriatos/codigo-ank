.class public final synthetic Lcom/sshtools/common/ssh/components/ComponentManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/sshtools/common/ssh/components/ComponentManager;

.field public final synthetic f$1:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Lcom/sshtools/common/ssh/components/ComponentManager;Ljava/lang/Class;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sshtools/common/ssh/components/ComponentManager$$ExternalSyntheticLambda1;->f$0:Lcom/sshtools/common/ssh/components/ComponentManager;

    iput-object p2, p0, Lcom/sshtools/common/ssh/components/ComponentManager$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/ComponentManager$$ExternalSyntheticLambda1;->f$0:Lcom/sshtools/common/ssh/components/ComponentManager;

    iget-object v1, p0, Lcom/sshtools/common/ssh/components/ComponentManager$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Class;

    check-cast p1, Lcom/sshtools/common/ssh/components/ComponentInstanceFactory;

    invoke-virtual {v0, v1, p1}, Lcom/sshtools/common/ssh/components/ComponentManager;->lambda$loadComponents$1$com-sshtools-common-ssh-components-ComponentManager(Ljava/lang/Class;Lcom/sshtools/common/ssh/components/ComponentInstanceFactory;)Z

    move-result p1

    return p1
.end method
