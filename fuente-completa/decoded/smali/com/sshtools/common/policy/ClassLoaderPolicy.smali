.class public Lcom/sshtools/common/policy/ClassLoaderPolicy;
.super Ljava/lang/Object;
.source "ClassLoaderPolicy.java"


# instance fields
.field classLoader:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/sshtools/common/policy/ClassLoaderPolicy;->classLoader:Ljava/lang/ClassLoader;

    return-void
.end method


# virtual methods
.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/sshtools/common/policy/ClassLoaderPolicy;->classLoader:Ljava/lang/ClassLoader;

    return-void
.end method
