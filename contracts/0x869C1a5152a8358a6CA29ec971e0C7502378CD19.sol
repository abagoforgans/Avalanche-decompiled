contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
address stor1;
address stor2;
mapping of uint256 claims;
mapping of uint8 stor4;
array of uint256 stor6;
array of address stor124;
address stor125;
address stor126;
address stor127;
address stor128;
address stor129;
address stor130;
address stor131;
address stor132;
address stor133;
address stor134;
address stor135;
address stor136;
address stor137;
address stor138;
address stor139;
address stor140;
address stor141;
address stor142;
address stor143;
address stor144;
address stor145;
address stor146;
address stor147;
address stor148;
address stor149;
address stor150;
address stor151;
address stor152;
address stor153;
address stor154;
address stor155;
address stor156;
address stor157;
address stor158;
address stor159;
address stor160;
address stor161;
address stor162;

function claims(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return claims[arg1]
}

function claimed(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor4[arg1])
}

function _fallback() payable {
    revert
}

function addAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor0[msg.sender]:
        revert with 0, 'Admin: caller is not a admin!'
    if msg.sender == arg1:
        revert with 0, 'Admin: You are already an admin!'
    stor0[address(arg1)] = 1
}

function removeAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor0[msg.sender]:
        revert with 0, 'Admin: caller is not a admin!'
    if stor1 == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERROR: You cannot remove contract owner as admin.'
    stor0[address(arg1)] = 0
}

function sub_fd2c0783(?) payable {
    if not stor0[msg.sender]:
        revert with 0, 'Admin: caller is not a admin!'
    idx = 0
    while idx < 118:
        mem[96] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[100] = msg.sender
        mem[132] = stor124[idx]
        mem[164] = stor6[idx]
        require ext_code.size(stor2)
        call stor2.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, stor124[idx], stor6[idx]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_c6be3b4f(?) payable {
    require calldata.size - 4 >= 7552
    require calldata.size >= 3780
    require calldata.size >= 7556
    if not stor0[msg.sender]:
        revert with 0, 'Admin: caller is not a admin!'
    s = 6
    idx = 4
    while 3780 > idx:
        uint256(stor[s]) = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 124
    while 124 > idx:
        uint256(stor[idx]) = 0
        idx = idx + 1
        continue 
    stor124.length = address(cd[3780])
    stor125 = address(cd[3812])
    stor126 = address(cd[3844])
    stor127 = address(cd[3876])
    stor128 = address(cd[3908])
    stor129 = address(cd[3940])
    stor130 = address(cd[3972])
    stor131 = address(cd[4004])
    stor132 = address(cd[4036])
    stor133 = address(cd[4068])
    stor134 = address(cd[4100])
    stor135 = address(cd[4132])
    stor136 = address(cd[4164])
    stor137 = address(cd[4196])
    stor138 = address(cd[4228])
    stor139 = address(cd[4260])
    stor140 = address(cd[4292])
    stor141 = address(cd[4324])
    stor142 = address(cd[4356])
    stor143 = address(cd[4388])
    stor144 = address(cd[4420])
    stor145 = address(cd[4452])
    stor146 = address(cd[4484])
    stor147 = address(cd[4516])
    stor148 = address(cd[4548])
    stor149 = address(cd[4580])
    stor150 = address(cd[4612])
    stor151 = address(cd[4644])
    stor152 = address(cd[4676])
    stor153 = address(cd[4708])
    stor154 = address(cd[4740])
    stor155 = address(cd[4772])
    stor156 = address(cd[4804])
    stor157 = address(cd[4836])
    stor158 = address(cd[4868])
    stor159 = address(cd[4900])
    stor160 = address(cd[4932])
    stor161 = address(cd[4964])
    stor162 = address(cd[4996])
    s = 163
    idx = 5028
    while 7556 > idx:
        address(stor[s]) = address(cd[idx])
        s = s + 1
        idx = idx + 32
        continue 
    idx = 242
    while 242 > idx:
        uint256(stor[idx]) = 0
        idx = idx + 1
        continue 
}



}
