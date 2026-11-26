.class Lcom/foxdebug/browser/Menu$1;
.super Lcom/foxdebug/browser/MenuItemCallback;
.source "Menu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/foxdebug/browser/Menu;->addItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/foxdebug/browser/Menu;


# direct methods
.method constructor <init>(Lcom/foxdebug/browser/Menu;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/foxdebug/browser/Menu$1;->this$0:Lcom/foxdebug/browser/Menu;

    invoke-direct {p0}, Lcom/foxdebug/browser/MenuItemCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/foxdebug/browser/MenuItem;)V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/foxdebug/browser/Menu$1;->this$0:Lcom/foxdebug/browser/Menu;

    invoke-static {v0}, Lcom/foxdebug/browser/Menu;->-$$Nest$fgetcallback(Lcom/foxdebug/browser/Menu;)Lcom/foxdebug/browser/Menu$Callback;

    move-result-object v0

    iget-object v1, p1, Lcom/foxdebug/browser/MenuItem;->action:Ljava/lang/String;

    iget-object p1, p1, Lcom/foxdebug/browser/MenuItem;->checked:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1}, Lcom/foxdebug/browser/Menu$Callback;->onSelect(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 95
    iget-object p1, p0, Lcom/foxdebug/browser/Menu$1;->this$0:Lcom/foxdebug/browser/Menu;

    invoke-virtual {p1}, Lcom/foxdebug/browser/Menu;->hide()V

    return-void
.end method
