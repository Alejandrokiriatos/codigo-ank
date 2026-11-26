.class Lcom/sshtools/common/config/AdaptiveConfiguration$1;
.super Ljava/lang/Object;
.source "AdaptiveConfiguration.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/common/config/AdaptiveConfiguration;->resetConfiguration()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/common/config/AdaptiveConfiguration;


# direct methods
.method constructor <init>(Lcom/sshtools/common/config/AdaptiveConfiguration;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/sshtools/common/config/AdaptiveConfiguration$1;->this$0:Lcom/sshtools/common/config/AdaptiveConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1

    .line 112
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, ".cfg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
