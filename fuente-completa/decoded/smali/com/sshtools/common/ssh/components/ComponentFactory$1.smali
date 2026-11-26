.class Lcom/sshtools/common/ssh/components/ComponentFactory$1;
.super Ljava/lang/Object;
.source "ComponentFactory.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/common/ssh/components/ComponentFactory;->configureSecurityLevel(Lcom/sshtools/common/ssh/SecurityLevel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/sshtools/common/ssh/SecureComponent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/common/ssh/components/ComponentFactory;


# direct methods
.method constructor <init>(Lcom/sshtools/common/ssh/components/ComponentFactory;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/sshtools/common/ssh/components/ComponentFactory$1;->this$0:Lcom/sshtools/common/ssh/components/ComponentFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sshtools/common/ssh/SecureComponent;Lcom/sshtools/common/ssh/SecureComponent;)I
    .locals 0

    .line 371
    invoke-interface {p2}, Lcom/sshtools/common/ssh/SecureComponent;->getPriority()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1}, Lcom/sshtools/common/ssh/SecureComponent;->getPriority()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 368
    check-cast p1, Lcom/sshtools/common/ssh/SecureComponent;

    check-cast p2, Lcom/sshtools/common/ssh/SecureComponent;

    invoke-virtual {p0, p1, p2}, Lcom/sshtools/common/ssh/components/ComponentFactory$1;->compare(Lcom/sshtools/common/ssh/SecureComponent;Lcom/sshtools/common/ssh/SecureComponent;)I

    move-result p1

    return p1
.end method
