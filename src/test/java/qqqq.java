/**
 * Create by mysteriousTime
 * time on 2019/8/29  11:06
 */
//public class qqqq {
//    final String replyNickName = "喊美美啊";
//    final String commentNickName ="欧巴沙拉呦";
//    String replyContentStr = "你写的文章非常好，我很喜欢";
//用来标识在 Span 范围内的文本前后输入新的字符时是否把它们也应用这个效果
//Spanned.SPAN_EXCLUSIVE_EXCLUSIVE(前后都不包括)
//Spanned.SPAN_INCLUSIVE_EXCLUSIVE(前面包括，后面不包括)
//Spanned.SPAN_EXCLUSIVE_INCLUSIVE(前面不包括，后面包括)
//Spanned.SPAN_INCLUSIVE_INCLUSIVE(前后都包括)
//    SpannableString ss = new SpannableString(replyNickName+"回复"+commentNickName
//            +":"+replyContentStr);
//    //为回复的人昵称添加点击事件
// ss.setSpan(new TextSpanClick(true), 0,
//            replyNickName.length(), Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
//    //为评论的人的添加点击事件
// ss.setSpan(new TextSpanClick(false),replyNickName.length() + 2,
//            replyNickName.length() + commentNickName.length() + 2, Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
// ss.setSpan(new ForegroundColorSpan(Color.RED),0,
//            replyNickName.length(), Spannable.SPAN_EXCLUSIVE_INCLUSIVE);
//
// ss.setSpan(new ForegroundColorSpan(Color.RED),replyNickName.length()+2,
//            replyNickName.length()+commentNickName.length()+2, Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
//
//    //添加点击事件时，必须设置
//tvContent.setText(ss);
//tvContent.setMovementMethod(LinkMovementMethod.getInstance());
//    //部分字体点击效果的监听如下
//    private final class TextSpanClick extends ClickableSpan {
//        private boolean status;
//        public TextSpanClick(boolean status){
//            this.status = status;
//        }
//        @Override
//        public void updateDrawState(TextPaint ds) {
//            super.updateDrawState(ds);
//            ds.setUnderlineText(false);//取消下划线
//        }
//        @Override
//        public void onClick(View v) {
//            String msgStr ="";
//            if(status){
//                msgStr = "我是回复的人";
//            }else{
//                msgStr = "我是评论的人";
//            }
//            Toast.makeText(FoodDetail.this, msgStr, Toast.LENGTH_SHORT).show();
//        }
//    }
//
//}
