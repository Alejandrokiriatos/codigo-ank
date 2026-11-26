.class Lcom/sshtools/common/logger/FileLoggingContext$1;
.super Ljava/lang/Thread;
.source "FileLoggingContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/common/logger/FileLoggingContext;-><init>(Lcom/sshtools/common/logger/Log$Level;Ljava/io/File;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/common/logger/FileLoggingContext;


# direct methods
.method constructor <init>(Lcom/sshtools/common/logger/FileLoggingContext;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/sshtools/common/logger/FileLoggingContext$1;->this$0:Lcom/sshtools/common/logger/FileLoggingContext;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/sshtools/common/logger/FileLoggingContext$1;->this$0:Lcom/sshtools/common/logger/FileLoggingContext;

    invoke-static {v0}, Lcom/sshtools/common/logger/FileLoggingContext;->-$$Nest$mcloseLog(Lcom/sshtools/common/logger/FileLoggingContext;)V

    return-void
.end method
