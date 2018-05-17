package testaction;

	import java.io.File;

	import org.apache.commons.io.FileUtils;
	import org.apache.struts2.ServletActionContext;

	import com.opensymphony.xwork2.ActionContext;
	import com.opensymphony.xwork2.ActionSupport;

	@SuppressWarnings("serial")
	public class uploginAction extends ActionSupport{
	    
	    private File[] image; //�ϴ����ļ�
	    private String[] imageFileName; //�ļ�����
	    private String[] imageContentType; //�ļ�����

	    public String execute() throws Exception {
	        ServletActionContext.getRequest().setCharacterEncoding("UTF-8");
	        String realpath = ServletActionContext.getServletContext().getRealPath("/images");
	        System.out.println(realpath);
	        if (image != null) {
	            File savedir=new File(realpath);
	            if(!savedir.getParentFile().exists())
	                savedir.getParentFile().mkdirs();
	            for(int i=0;i<image.length;i++){
	                File savefile = new File(savedir, imageFileName[i]);
	                FileUtils.copyFile(image[i], savefile);
	            }
	            ActionContext.getContext().put("message", "�ļ��ϴ��ɹ�");
	        }
	        return "success";
	    }

	    public File[] getImage() {
	        return image;
	    }

	    public void setImage(File[] image) {
	        this.image = image;
	    }

	    public String[] getImageContentType() {
	        return imageContentType;
	    }

	    public void setImageContentType(String[] imageContentType) {
	        this.imageContentType = imageContentType;
	    }

	    public String[] getImageFileName() {
	        return imageFileName;
	    }

	    public void setImageFileName(String[] imageFileName) {
	        this.imageFileName = imageFileName;
	    }



	    
	}

