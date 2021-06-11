#!/usr/bin/env python3

'''CONFIG START'''
# import husha_pk_dict as pk_dict_src
# import husha_contract_dict as contract_dict_src
# import meng_216_pk_dict as pk_dict_src
# import meng_216_contract_dict as contract_dict_src
import tianya_240_pk_dict as pk_dict_src
import tianya_240_contract_dict as contract_dict_src

save_name = 'tianya240'

# Query by contract_addr or opr_addr
# import to_query as to_query
import to_query_by_opr as to_query
query_list = to_query.query_list

# default query by contract
# use_query_by_opr = False
use_query_by_opr = True

'''CONFIG END'''

from typing import List
import xlwt
pk_map = pk_dict_src.opr_to_pk
contract_map = contract_dict_src.opr_to_contract

class SwarmNode:
    '''
    完整节点的数据结构
    '''

    def __init__(self, contract_addr, opr_addr, opr_pk) -> None:
        self.contract_addr = contract_addr
        self.opr_addr = opr_addr
        self.opr_pk = opr_pk
    
    def __str__(self) -> str:
        return f'{self.contract_addr} {self.opr_addr} {self.opr_pk}'

class SwarmNodeQuery:
    def __init__(self) -> None:
        self.opr_pk = pk_map
        self.opr_contract = contract_map
        self.pk_opr = dict((v, k) for k, v in pk_map.items())
        self.contract_opr = dict((v, k) for k, v in contract_map.items())
    
    def query_by_contract(self, contract_addr) -> SwarmNode:
        lower_addr = contract_addr.lower()
        opr = self.contract_opr.get(lower_addr)
        if opr is None:
            return SwarmNode(lower_addr, None, None)
        else:
            pk = self.opr_pk.get(opr)
            return SwarmNode(lower_addr, opr, pk)
    
    def query_by_opr(self, opr_addr) -> SwarmNode:
        lower_addr = opr_addr.lower()
        contract_addr = self.opr_contract.get(lower_addr)
        pk = self.opr_pk.get(lower_addr)
        return SwarmNode(contract_addr, opr_addr, pk)
    
    def query_by_contract_batch(self, contract_addr_list: List[str]) -> List[SwarmNode]:
        res: List[SwarmNode] = []
        for contract_addr in contract_addr_list:
            res.append(self.query_by_contract(contract_addr))
        return res

    def query_by_opr_batch(self, opr_addr_list: List[str]) -> List[SwarmNode]:
        res: List[SwarmNode] = []
        for opr_addr in opr_addr_list:
            res.append(self.query_by_opr(opr_addr))
        return res

def save_node_list(node_list: List[SwarmNode], save_path: str) -> None:
    workbook = xlwt.Workbook()
    sheet1 = workbook.add_sheet('sheet1',cell_overwrite_ok=True)
    sheet1.write(0, 0, 'Chequebook地址')
    sheet1.write(0, 1, '操作者地址')
    sheet1.write(0, 2, '操作者私钥')
    for i in range(len(node_list)):
        node = node_list[i]
        sheet1.write(i+1, 0, node.contract_addr)
        sheet1.write(i+1, 1, node.opr_addr)
        sheet1.write(i+1, 2, node.opr_pk)
    
    workbook.save(save_path)

if __name__ == '__main__':
    q = SwarmNodeQuery()
    if use_query_by_opr:
        n = q.query_by_opr_batch(query_list)
    else:
        n = q.query_by_contract_batch(query_list)
    save_node_list(n, f'{save_name}.xls')