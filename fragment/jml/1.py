class Node(object):
    def __init__(self,item):
        self.item = item
        self.prev = None
        self.next = None
    
class BilateralCycleLinkList(object):
    def __init__(self):
        self._head = None

    def is_empty(self):
        return self._head is None
    def length(self):
        count = 1
        cur = self._head
        if self.is_empty():
            return 
        else:
            while cur.next != self._head:
                cur = cur.next
                count += 1
        return count
    def items(self):
        if self.is_empty():
            return
        cur = self._head
        while cur.next != self._head:
            #返回生成器
            yield cur.item
            cur = cur.next
        yield cur.item
    def add(self,item):
        """添加到链表头部"""
        node = Node(item)
        if self.is_empty():
            self._head = node
            node.next = self._head
            return
        # #新结点下指针为当前的首元素
        # node.next = self._head
        # #新结点的上指针为当前首元素的上指针
        # node.prev = self._head.prev  
        # #原首结点的上指针为node
        # self._head.prev = node
        # #寻找末尾结点
        # cur = self._head
        # while cur.next != self._head:
        #     cur = cur.next 
        # #末尾元素的下指针为node    
        # cur.next = node
        # #node为当前的首元素
        # self._head = node

        node.next = self._head
        node.prev = self._head.prev
        ls = self._head.prev
        ls.next = node
        self._head.prev = node       
        self._head = node
    def append(self,item):
        """添加到链表尾部"""
        node = Node(item)
        #寻找末尾结点
        cur = self._head
        while cur.next != self._head:
            cur = cur.next 
        #末尾元素的下指针为node    
        cur.next = node
        self._head.prev = node
        node.prev = cur.prev
    def insert(self,index,item):
        """在固定位置插入"""
        node = Node(item)
        if index <= 0:
            self.add(item)
        elif index > self.length() - 1:
            self.append(item)
        else:
            cur = self._head
            for i in range(index - 1):
                cur = cur.next
            node.next = cur.next
            cur.next.prev = node
            node.prev = cur
            cur.next = node
    def remove(self,item):
        cur = self._head
        #如果要删除的是第一个
        if cur.item == item:
            #如果链表只有一个元素
            if cur.next != self._head:
                self._head = cur.next
                cur.prev.next = cur.next
                cur.next.prev = cur.prev
            else:
                self._head = None
        else: #要删除的不是第一个元素
            while cur.next != self._head:
                if cur.item == item:
                    cur.prev.next = cur.next
                    cur.next.prev = cur.prev 
                else:
                    cur = cur.next
        #要删除的是最后一个
        if cur.item == item:
            cur.prev.next = cur.next
            self._head.prev = cur.prev
    def find(self,item):
        return item in self.items()

    


if __name__ == '__main__':
    link_list = BilateralCycleLinkList()
    #头部添加
    # for i in range(5):
    #     link_list.add(i)
    link_list.add(2)
    print(list(link_list.items()))
    link_list.add(3)
    print(list(link_list.items()))
    #尾部添加
    # for i in range(6):
    #     link_list.append(i)
    # print(list(link_list.items()))
    # #插入
    # link_list.insert(2,33)
    # #删除
    # link_list.remove(5)
    # #寻找是否有在链表中    
    # link_list.find(2)