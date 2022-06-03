contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
address owner; offset 16
uint256 stor0; offset 8
mapping of uint8 stor1;
address stor2;
mapping of struct sub_16cdcaa4;
uint256 sub_6bdc5079;
uint256 sub_0e6bf4f3;

function sub_0e6bf4f3(?) payable {
    return sub_0e6bf4f3
}

function operators(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function sub_16cdcaa4(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    return sub_16cdcaa4[arg1][address(arg2)].field_0
}

function sub_44d6de56(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_16cdcaa4[arg1].field_2048, 
           sub_16cdcaa4[arg1].field_2048,
           sub_16cdcaa4[arg1].field_1792,
           sub_16cdcaa4[arg1].field_1536,
           sub_16cdcaa4[arg1].field_1280,
           sub_16cdcaa4[arg1].field_2560,
           sub_16cdcaa4[arg1].field_2304,
           bool(sub_16cdcaa4[arg1].field_2816),
           bool(sub_16cdcaa4[arg1].field_2824)
}

function sub_497694ee(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 >= sub_16cdcaa4[arg1].field_256:
        revert with 'NH{q', 50
    if arg2 >= sub_16cdcaa4[arg1].field_512:
        revert with 'NH{q', 50
    if arg2 >= sub_16cdcaa4[arg1].field_768:
        revert with 'NH{q', 50
    return stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'sub_16cdcaa4', 3))) + arg2].field_0, 
           stor[('array', 2, ('map', ('param', 'arg1'), ('name', 'sub_16cdcaa4', 3))) + arg2].field_0,
           stor[('array', 3, ('map', ('param', 'arg1'), ('name', 'sub_16cdcaa4', 3))) + arg2].field_0
}

function sub_6bdc5079(?) payable {
    return sub_6bdc5079
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function getHash(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sha3(arg1)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_0efee652(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not arg3:
        revert with 'NH{q', 18
    if arg1 xor arg2 % arg3 > -2:
        revert with 'NH{q', 17
    return ((arg1 xor arg2 % arg3) + 1)
}

function setOperator(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = uint8(arg2)
    emit SetOperator(address(arg1), arg2);
}

function sub_f0156830(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not arg3:
        revert with 'NH{q', 18
    if sub_16cdcaa4[arg1].field_2304 xor arg2 % arg3 > -2:
        revert with 'NH{q', 17
    return ((sub_16cdcaa4[arg1].field_2304 xor arg2 % arg3) + 1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_f777fb84(?) payable {
    return sub_0e6bf4f3, 
           sub_16cdcaa4[stor5].field_2048,
           sub_16cdcaa4[stor5].field_2048,
           sub_16cdcaa4[stor5].field_1792,
           sub_16cdcaa4[stor5].field_1536,
           sub_16cdcaa4[stor5].field_1280,
           sub_16cdcaa4[stor5].field_2560,
           sub_16cdcaa4[stor5].field_2304,
           bool(sub_16cdcaa4[stor5].field_2816),
           bool(sub_16cdcaa4[stor5].field_2824)
}

function sub_795b2ebc(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == bool(arg2)
    if not stor1[address(msg.sender)]:
        revert with 0, 'NOT OPERATOR'
    if not sub_16cdcaa4[arg1].field_2048:
        revert with 0, 'LD: draw does not exist'
    if not sub_16cdcaa4[arg1].field_2176:
        revert with 0, 'LD: draw does not exist'
    sub_16cdcaa4[arg1].field_2816 = uint8(bool(arg2))
    emit 0x1fb67f4e: bool(arg2), arg1
}

function sub_1d41cc30(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, 'NOT OPERATOR'
    sub_0e6bf4f3 = arg1
    if not sub_16cdcaa4[arg1].field_2048:
        revert with 0, 'LD: draw does not exist'
    if not sub_16cdcaa4[arg1].field_2176:
        revert with 0, 'LD: draw does not exist'
    if sub_16cdcaa4[arg1].field_2824:
        revert with 0, 'LD: started'
    sub_16cdcaa4[arg1].field_2824 = 1
    emit 0xbc964b68: arg1
}

function sub_0521a70e(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == uint128(arg1)
    require arg2 == uint128(arg2)
    require arg3 == arg3
    require arg4 == arg4
    if not stor1[address(msg.sender)]:
        revert with 0, 'NOT OPERATOR'
    if sub_6bdc5079 == -1:
        revert with 'NH{q', 17
    sub_6bdc5079++
    sub_16cdcaa4[stor4].field_2048 = uint128(arg1)
    sub_16cdcaa4[stor4].field_2176 = uint128(arg2)
    sub_16cdcaa4[stor4].field_1792 = arg3
    sub_16cdcaa4[stor4].field_2560 = arg4
    emit 0x1b0115ae: arg1 << 128, arg2 << 128, arg3, arg4, sub_6bdc5079
}

function withdrawToken(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not stor1[address(msg.sender)]:
        revert with 0, 'NOT OPERATOR'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit WithdrawToken(address(arg1), address(arg2), arg3);
}

function sub_085e2eef(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == uint128(arg2)
    require arg3 == uint128(arg3)
    require arg4 == arg4
    require arg5 == arg5
    if not stor1[address(msg.sender)]:
        revert with 0, 'NOT OPERATOR'
    if not sub_16cdcaa4[arg1].field_2048:
        revert with 0, 'LD: draw does not exist'
    if not sub_16cdcaa4[arg1].field_2176:
        revert with 0, 'LD: draw does not exist'
    sub_16cdcaa4[arg1].field_2048 = uint128(arg2)
    sub_16cdcaa4[arg1].field_2176 = uint128(arg3)
    sub_16cdcaa4[arg1].field_1792 = arg4
    sub_16cdcaa4[arg1].field_2560 = arg5
    emit 0x7025f2cf: arg2 << 128, arg3 << 128, arg4, arg5, arg1
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            Mask(248, 0, stor0.field_8) = 1
            uint8(stor0.field_0) = 1
    stor2 = arg1
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(msg.sender)] = 1
    emit SetOperator(msg.sender, 1);
    if not uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 0
}

function sub_03803fbc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_16cdcaa4[arg1].field_1024:
        mem[128] = sub_16cdcaa4[arg1][4].field_0
        idx = 128
        s = 0
        while (32 * sub_16cdcaa4[arg1].field_1024) + 96 > idx:
            mem[idx + 32] = sub_16cdcaa4[arg1][s + 4].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=sub_16cdcaa4[arg1].field_1024, data=mem[128 len 32 * sub_16cdcaa4[arg1].field_1024])
    mem[(32 * sub_16cdcaa4[arg1].field_1024) + 128] = 32
    mem[(32 * sub_16cdcaa4[arg1].field_1024) + 160] = sub_16cdcaa4[arg1].field_1024
    mem[(32 * sub_16cdcaa4[arg1].field_1024) + 192 len 32 * sub_16cdcaa4[arg1].field_1024] = mem[128 len 32 * sub_16cdcaa4[arg1].field_1024]
    return memory
      from (32 * sub_16cdcaa4[arg1].field_1024) + 128
       len (96 * sub_16cdcaa4[arg1].field_1024) + 64
}

function sub_4d71fa73(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == cd[4]
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if not stor1[address(msg.sender)]:
        revert with 0, 'NOT OPERATOR'
    if sub_16cdcaa4[cd[4]].field_2176 >= block.timestamp:
        revert with 0, 'LD: only settle after closed'
    if sub_16cdcaa4[cd[4]].field_2304:
        revert with 0, 'LD: settled'
    if not sub_16cdcaa4[cd[4]].field_2048:
        revert with 0, 'LD: draw does not exist'
    if not sub_16cdcaa4[cd[4]].field_2176:
        revert with 0, 'LD: draw does not exist'
    if sha3(cd[36]) != sub_16cdcaa4[cd[4]].field_2560:
        revert with 0, 'LD: wrong secret number'
    sub_16cdcaa4[cd[4]].field_2304 = cd[36]
    sub_16cdcaa4[cd[4]].field_1024 = ('cd', 68).length
    if not ('cd', 68).length:
        idx = 0
        while sub_16cdcaa4[cd[4]].field_1024 > idx:
            sub_16cdcaa4[cd[4]][idx + 4].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[68] + 36
        while cd[68] + (32 * ('cd', 68).length) + 36 > idx:
            sub_16cdcaa4[cd[4]][s + 4].field_0 = cd[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5
        while sub_16cdcaa4[cd[4]].field_1024 > idx:
            sub_16cdcaa4[cd[4]][idx + 4].field_0 = 0
            idx = idx + 1
            continue 
    require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    emit 0x3096d978: cd[36], Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len 32 * ('cd', 68).length]), cd[4]
}

function buyTickets(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if sub_16cdcaa4[arg1].field_2048 >= block.timestamp:
        revert with 0, 'LD: out of time'
    if block.timestamp >= sub_16cdcaa4[arg1].field_2176:
        revert with 0, 'LD: out of time'
    if sub_16cdcaa4[arg1].field_2816:
        revert with 0, 'LD: paused'
    if not sub_16cdcaa4[arg1].field_2824:
        revert with 0, 'LD: not start'
    if arg2 <= 0:
        revert with 0, 'LD: invalid amount'
    if sub_16cdcaa4[arg1].field_1792 and arg2 > -1 / sub_16cdcaa4[arg1].field_1792:
        revert with 'NH{q', 17
    require ext_code.size(stor2)
    call stor2.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), sub_16cdcaa4[arg1].field_1792 * arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not sub_16cdcaa4[arg1][address(msg.sender)].field_0:
        if sub_16cdcaa4[arg1].field_1280 > -2:
            revert with 'NH{q', 17
        sub_16cdcaa4[arg1].field_1280++
    if sub_16cdcaa4[arg1].field_1536 > -2:
        revert with 'NH{q', 17
    if sub_16cdcaa4[arg1].field_1536 + 1 > -arg2 - 1:
        revert with 'NH{q', 17
    if sub_16cdcaa4[arg1].field_1536 + arg2 + 1 < 1:
        revert with 'NH{q', 17
    sub_16cdcaa4[arg1].field_1536 += arg2
    sub_16cdcaa4[arg1].field_256++
    stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'sub_16cdcaa4', 3))) + sub_16cdcaa4[arg1].field_256].field_0 = msg.sender
    sub_16cdcaa4[arg1].field_512++
    stor[('array', 2, ('map', ('param', 'arg1'), ('name', 'sub_16cdcaa4', 3))) + sub_16cdcaa4[arg1].field_512].field_0 = sub_16cdcaa4[arg1].field_1536 + 1
    sub_16cdcaa4[arg1].field_768++
    stor[('array', 3, ('map', ('param', 'arg1'), ('name', 'sub_16cdcaa4', 3))) + sub_16cdcaa4[arg1].field_768].field_0 = sub_16cdcaa4[arg1].field_1536 + arg2
    if sub_16cdcaa4[arg1][address(msg.sender)].field_0 > -arg2 - 1:
        revert with 'NH{q', 17
    sub_16cdcaa4[arg1][address(msg.sender)].field_0 += arg2
    emit 0xd86506fd: sub_16cdcaa4[arg1].field_1536 + 1, sub_16cdcaa4[arg1].field_1536 + arg2, msg.sender, arg1
}



}
