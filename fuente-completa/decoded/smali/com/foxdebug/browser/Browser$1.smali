.class Lcom/foxdebug/browser/Browser$1;
.super Ljava/lang/Object;
.source "Browser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/foxdebug/browser/Browser;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/foxdebug/browser/Browser;


# direct methods
.method constructor <init>(Lcom/foxdebug/browser/Browser;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lcom/foxdebug/browser/Browser$1;->this$0:Lcom/foxdebug/browser/Browser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/foxdebug/browser/Browser$1;->this$0:Lcom/foxdebug/browser/Browser;

    iget-object v0, v0, Lcom/foxdebug/browser/Browser;->menu:Lcom/foxdebug/browser/Menu;

    invoke-virtual {v0, p1}, Lcom/foxdebug/browser/Menu;->show(Landroid/view/View;)V

    return-void
.end method
