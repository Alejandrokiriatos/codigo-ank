.class public Lcom/sshtools/common/ssh/components/DiffieHellmanGroups$DHGroup;
.super Ljava/lang/Object;
.source "DiffieHellmanGroups.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/ssh/components/DiffieHellmanGroups;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DHGroup"
.end annotation


# instance fields
.field g:Ljava/math/BigInteger;

.field p:Ljava/math/BigInteger;

.field size:Ljava/lang/Integer;


# direct methods
.method private constructor <init>(Ljava/lang/Integer;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    iput-object p1, p0, Lcom/sshtools/common/ssh/components/DiffieHellmanGroups$DHGroup;->size:Ljava/lang/Integer;

    .line 248
    iput-object p2, p0, Lcom/sshtools/common/ssh/components/DiffieHellmanGroups$DHGroup;->g:Ljava/math/BigInteger;

    .line 249
    iput-object p3, p0, Lcom/sshtools/common/ssh/components/DiffieHellmanGroups$DHGroup;->p:Ljava/math/BigInteger;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Integer;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/sshtools/common/ssh/components/DiffieHellmanGroups-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sshtools/common/ssh/components/DiffieHellmanGroups$DHGroup;-><init>(Ljava/lang/Integer;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method


# virtual methods
.method public getG()Ljava/math/BigInteger;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/DiffieHellmanGroups$DHGroup;->g:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getP()Ljava/math/BigInteger;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/DiffieHellmanGroups$DHGroup;->p:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getSize()Ljava/lang/Integer;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/DiffieHellmanGroups$DHGroup;->size:Ljava/lang/Integer;

    return-object v0
.end method
