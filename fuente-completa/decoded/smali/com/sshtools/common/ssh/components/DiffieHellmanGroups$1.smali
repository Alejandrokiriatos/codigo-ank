.class Lcom/sshtools/common/ssh/components/DiffieHellmanGroups$1;
.super Ljava/lang/Object;
.source "DiffieHellmanGroups.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/common/ssh/components/DiffieHellmanGroups;->loadGroups(Ljava/net/URI;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/sshtools/common/ssh/components/DiffieHellmanGroups$DHGroup;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sshtools/common/ssh/components/DiffieHellmanGroups$DHGroup;Lcom/sshtools/common/ssh/components/DiffieHellmanGroups$DHGroup;)I
    .locals 0

    .line 301
    iget-object p1, p1, Lcom/sshtools/common/ssh/components/DiffieHellmanGroups$DHGroup;->size:Ljava/lang/Integer;

    invoke-virtual {p2}, Lcom/sshtools/common/ssh/components/DiffieHellmanGroups$DHGroup;->getSize()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 298
    check-cast p1, Lcom/sshtools/common/ssh/components/DiffieHellmanGroups$DHGroup;

    check-cast p2, Lcom/sshtools/common/ssh/components/DiffieHellmanGroups$DHGroup;

    invoke-virtual {p0, p1, p2}, Lcom/sshtools/common/ssh/components/DiffieHellmanGroups$1;->compare(Lcom/sshtools/common/ssh/components/DiffieHellmanGroups$DHGroup;Lcom/sshtools/common/ssh/components/DiffieHellmanGroups$DHGroup;)I

    move-result p1

    return p1
.end method
