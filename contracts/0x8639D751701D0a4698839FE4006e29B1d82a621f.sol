contract main {




// =====================  Runtime code  =====================


#
#  - safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5)
#  - initialize(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5)
#  - burn(uint256 arg1, uint256 arg2)
#
mapping of uint256 balanceOf;
mapping of uint8 stor102;
array of struct stor103;
uint256 stor151;
address governorAddress;
uint256 stor201;
address pendingGovernorAddress;
address registryAddress;
address crvAddress;
address stor269;
uint256 stor270;
uint256 stor271;
address underlyingTokenFromIdsAddress;
address workerAddress;
address sub_b9e2e2c6Address;
uint256 crvBalance;
uint256 sub_907889b5;

function balanceOf(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    return balanceOf[arg2][address(arg1)]
}

function governor() payable {
    return address(governorAddress)
}

function worker() payable {
    return workerAddress
}

function sub_5cd1ab7e(?) payable {
    return underlyingTokenFromIdsAddress
}

function crv() payable {
    return crvAddress
}

function registry() payable {
    return registryAddress
}

function crvBalance() payable {
    return crvBalance
}

function sub_907889b5(?) payable {
    return sub_907889b5
}

function getUnderlyingToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return underlyingTokenFromIdsAddress
}

function getUnderlyingTokenFromIds(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return underlyingTokenFromIdsAddress
}

function sub_b9e2e2c6(?) payable {
    return sub_b9e2e2c6Address
}

function pendingGovernor() payable {
    return pendingGovernorAddress
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor102[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function gauge() payable {
    return stor269, stor270, stor271
}

function getUnderlyingRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return 0x10000000000000000000000000000
}

function decodeId(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return Mask(256, -246, arg1) << 246, 0, Mask(240, 0, arg1)
}

function setWorker(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(governorAddress) != msg.sender:
        revert with 0, 'not the governor'
    workerAddress = arg1
    emit SetWorker(arg1);
}

function acceptGovernor() payable {
    if pendingGovernorAddress != msg.sender:
        revert with 0, 'not the pending governor'
    pendingGovernorAddress = 0
    uint256(stor201) = msg.sender or Mask(96, 160, uint256(stor201))
    emit AcceptGovernor(msg.sender);
}

function setPendingGovernor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(governorAddress) != msg.sender:
        revert with 0, 'not the governor'
    pendingGovernorAddress = arg1
    emit SetPendingGovernor(arg1);
}

function encodeId(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg1 >= 1024:
        revert with 0, 'bad pid'
    if arg2 >= 64:
        revert with 0, 'bad gid'
    if arg3 >= 0x1000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 'bad crv per share'
    return (arg3 or arg2 << 240 or arg1 << 246)
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: setting approval status for self'
    stor102[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0xd9b67a2600000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0xe89341c00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg5.length)) + 97 < 96 or ceil32(ceil32(arg5.length)) + 97 > test266151307():
        revert with 0, 65
    require arg5 + arg5.length + 36 <= calldata.size
    if arg1 != msg.sender:
        if not stor102[address(arg1)][address(msg.sender)]:
            revert with 0, 'ERC1155: caller is not owner nor approved'
    if not arg2:
        revert with 0, 'ERC1155: transfer to the zero address'
    if balanceOf[arg3][address(arg1)] < arg4:
        revert with 0, 'ERC1155: insufficient balance for transfer'
    balanceOf[arg3][address(arg1)] -= arg4
    if balanceOf[arg3][arg2] > !arg4:
        revert with 0, 17
    balanceOf[arg3][arg2] += arg4
    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.0xf23a6e61 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
        if not ext_call.success:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
}

function balanceOfBatch(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 98 < 97 or ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * arg1.length) + 97] = arg2.length
    require calldata.size >= arg2 + (32 * arg2.length) + 36
    idx = 0
    s = arg2 + 36
    t = ceil32(32 * arg1.length) + 129
    while idx < arg2.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if arg1.length != arg2.length:
        revert with 0, 'ERC1155: accounts and ids length mismatch'
    if arg1.length > test266151307():
        revert with 0, 65
    mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98] = arg1.length
    if arg1.length:
        mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        if idx >= arg2.length:
            revert with 0, 50
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'ERC1155: balance query for the zero address'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(mem[(32 * idx) + ceil32(32 * arg1.length) + 129], 101)
        if idx >= arg1.length:
            revert with 0, 50
        mem[(32 * idx) + ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130] = balanceOf[mem[(32 * idx) + ceil32(32 * arg1.length) + 129]][address(mem[(32 * idx) + 128])]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return Array(len=arg1.length, data=mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130 len 32 * arg1.length])
}

function uri(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor103.length):
        if bool(stor103.length) == uint255(stor103.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor103.length):
            if bool(stor103.length) == uint255(stor103.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor103.length):
                if 31 < uint255(stor103.length) * 0.5:
                    mem[128] = uint256(stor103.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor103.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor103[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor103.length), data=mem[128 len ceil32(uint255(stor103.length) * 0.5)])
                mem[128] = 256 * stor103.length.field_8
        else:
            if bool(stor103.length) == stor103.length.field_1 < 32:
                revert with 0, 34
            if stor103.length.field_1:
                if 31 < stor103.length.field_1:
                    mem[128] = uint256(stor103.field_0)
                    idx = 128
                    s = 0
                    while stor103.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor103[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor103.length), data=mem[128 len ceil32(uint255(stor103.length) * 0.5)])
                mem[128] = 256 * stor103.length.field_8
        mem[ceil32(uint255(stor103.length) * 0.5) + 192 len ceil32(uint255(stor103.length) * 0.5)] = mem[128 len ceil32(uint255(stor103.length) * 0.5)]
        if ceil32(uint255(stor103.length) * 0.5) > uint255(stor103.length) * 0.5:
            mem[(uint255(stor103.length) * 0.5) + ceil32(uint255(stor103.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor103.length), data=mem[128 len ceil32(uint255(stor103.length) * 0.5)], mem[(2 * ceil32(uint255(stor103.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor103.length) * 0.5)]), 
    if bool(stor103.length) == stor103.length.field_1 < 32:
        revert with 0, 34
    if bool(stor103.length):
        if bool(stor103.length) == uint255(stor103.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor103.length):
            if 31 < uint255(stor103.length) * 0.5:
                mem[128] = uint256(stor103.field_0)
                idx = 128
                s = 0
                while (uint255(stor103.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor103[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor103.length % 128, data=mem[128 len ceil32(stor103.length.field_1)])
            mem[128] = 256 * stor103.length.field_8
    else:
        if bool(stor103.length) == stor103.length.field_1 < 32:
            revert with 0, 34
        if stor103.length.field_1:
            if 31 < stor103.length.field_1:
                mem[128] = uint256(stor103.field_0)
                idx = 128
                s = 0
                while stor103.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor103[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor103.length % 128, data=mem[128 len ceil32(stor103.length.field_1)])
            mem[128] = 256 * stor103.length.field_8
    mem[ceil32(stor103.length.field_1) + 192 len ceil32(stor103.length.field_1)] = mem[128 len ceil32(stor103.length.field_1)]
    if ceil32(stor103.length.field_1) > stor103.length.field_1:
        mem[stor103.length.field_1 + ceil32(stor103.length.field_1) + 192] = 0
    return Array(len=stor103.length % 128, data=mem[128 len ceil32(stor103.length.field_1)], mem[(2 * ceil32(stor103.length.field_1)) + 192 len 2 * ceil32(stor103.length.field_1)]), 
}

function mint(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if stor151 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor151 = 2
    if arg1 != sub_907889b5:
        revert with 0, 'bad pid'
    if arg2 != stor271:
        revert with 0, 'bad gid'
    if not stor269:
        revert with 0, 'gauge not registered'
    require ext_code.size(stor269)
    call stor269.claim_rewards() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[100] = this.address
    require ext_code.size(crvAddress)
    staticcall crvAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < crvBalance:
        revert with 0, 17
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(stor269)
    staticcall stor269.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] - crvBalance > 0:
        if ext_call.return_data[0] > 0:
            if ext_call.return_data[0] - crvBalance > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if stor270 > !((10^18 * ext_call.return_data[0]) - (10^18 * crvBalance) / ext_call.return_data[0]):
                revert with 0, 17
            stor270 += (10^18 * ext_call.return_data[0]) - (10^18 * crvBalance) / ext_call.return_data[0]
            crvBalance = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
    mem[(2 * ceil32(return_data.size)) + 164] = this.address
    mem[(2 * ceil32(return_data.size)) + 196] = arg3
    mem[(2 * ceil32(return_data.size)) + 96] = 100
    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[(2 * ceil32(return_data.size)) + 228] = 32
    mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(underlyingTokenFromIdsAddress):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg3, 0
    mem[(2 * ceil32(return_data.size)) + 392] = 0
    call underlyingTokenFromIdsAddress with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg3, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg3, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(2 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + 324] == bool(mem[(2 * ceil32(return_data.size)) + 324])
            if not mem[(2 * ceil32(return_data.size)) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    require ext_code.size(stor269)
    call stor269.deposit(uint256 arg1) with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 >= 1024:
        revert with 0, 'bad pid'
    if arg2 >= 64:
        revert with 0, 'bad gid'
    if stor270 >= 0x1000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 'bad crv per share'
    if not msg.sender:
        revert with 0, 'ERC1155: mint to the zero address'
    if balanceOf[stor270 or arg2 << 240 or arg1 << 246][address(msg.sender)] > !arg3:
        revert with 0, 17
    balanceOf[stor270 or arg2 << 240 or arg1 << 246][address(msg.sender)] += arg3
    emit TransferSingle(stor270 or arg2 << 240 or arg1 << 246, arg3, msg.sender, 0, msg.sender);
    if ext_code.size(msg.sender):
        require ext_code.size(msg.sender)
        call msg.sender.0xf23a6e61 with:
             gas gas_remaining wei
            args msg.sender, 0, stor270 or arg2 << 240 or arg1 << 246, arg3, 160, 0
        if not ext_call.success:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    stor151 = 1
    return (stor270 or arg2 << 240 or arg1 << 246)
}

function sub_2ebafe83(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require calldata.size + -cd[36] - 4 >= 128
    if not stor269:
        revert with 0, 'gauge not registered'
    if workerAddress != msg.sender:
        revert with 0, '!worker'
    require ('cd', 36)[1] < calldata.size + -cd[36] - 35
    require cd[(cd[36] + ('cd', 36)[1] + 4)] <= test266151307()
    require cd[36] + ('cd', 36)[1] + 36 <= calldata.size - (32 * cd[(cd[36] + ('cd', 36)[1] + 4)])
    require ('cd', 36)[1] < calldata.size + -cd[36] - 35
    require cd[(cd[36] + ('cd', 36)[1] + 4)] <= test266151307()
    require cd[36] + ('cd', 36)[1] + 36 <= calldata.size - (32 * cd[(cd[36] + ('cd', 36)[1] + 4)])
    if cd[(cd[36] + ('cd', 36)[1] + 4)] < 1:
        revert with 0, 17
    if cd[(cd[36] + ('cd', 36)[1] + 4)] - 1 >= cd[(cd[36] + ('cd', 36)[1] + 4)]:
        revert with 0, 50
    require cd[((32 * cd[(cd[36] + ('cd', 36)[1] + 4)] - 1) + cd[36] + ('cd', 36)[1] + 36)] == address(cd[((32 * cd[(cd[36] + ('cd', 36)[1] + 4)] - 1) + cd[36] + ('cd', 36)[1] + 36)])
    if address(cd[((32 * cd[(cd[36] + ('cd', 36)[1] + 4)] - 1) + cd[36] + ('cd', 36)[1] + 36)]) != crvAddress:
        revert with 0, '!crv'
    require ('cd', 36)[1] < calldata.size + -cd[36] - 35
    require cd[(cd[36] + ('cd', 36)[1] + 4)] <= test266151307()
    require cd[36] + ('cd', 36)[1] + 36 <= calldata.size - (32 * cd[(cd[36] + ('cd', 36)[1] + 4)])
    if 0 >= cd[(cd[36] + ('cd', 36)[1] + 4)]:
        revert with 0, 50
    require cd[(cd[36] + ('cd', 36)[1] + 36)] == address(cd[(cd[36] + ('cd', 36)[1] + 36)])
    if address(cd[(cd[36] + ('cd', 36)[1] + 36)]) == underlyingTokenFromIdsAddress:
        revert with 0, 'path0 must not be lpToken'
    require ('cd', 36)[1] < calldata.size + -cd[36] - 35
    require cd[(cd[36] + ('cd', 36)[1] + 4)] <= test266151307()
    require cd[36] + ('cd', 36)[1] + 36 <= calldata.size - (32 * cd[(cd[36] + ('cd', 36)[1] + 4)])
    if 0 >= cd[(cd[36] + ('cd', 36)[1] + 4)]:
        revert with 0, 50
    require cd[(cd[36] + ('cd', 36)[1] + 36)] == address(cd[(cd[36] + ('cd', 36)[1] + 36)])
    mem[100] = this.address
    mem[132] = address(cd[4])
    require ext_code.size(address(cd[(cd[36] + ('cd', 36)[1] + 36)]))
    staticcall address(cd[(cd[36] + ('cd', 36)[1] + 36)]).0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, address(cd[4])
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ('cd', 36)[1] < calldata.size + -cd[36] - 35
        require cd[(cd[36] + ('cd', 36)[1] + 4)] <= test266151307()
        require cd[36] + ('cd', 36)[1] + 36 <= calldata.size - (32 * cd[(cd[36] + ('cd', 36)[1] + 4)])
        mem[ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 100] = ('cd', 36).length
        mem[ceil32(return_data.size) + 132] = ('cd', 36)[0]
        mem[ceil32(return_data.size) + 164] = 160
        mem[ceil32(return_data.size) + 260] = cd[(cd[36] + ('cd', 36)[1] + 4)]
        idx = 0
        s = ceil32(return_data.size) + 292
        t = cd[36] + ('cd', 36)[1] + 36
        while idx < cd[(cd[36] + ('cd', 36)[1] + 4)]:
            require cd[t] == address(cd[t])
            mem[s] = address(cd[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(return_data.size) + 196] = this.address
        mem[ceil32(return_data.size) + 228] = ('cd', 36)[2]
        require ext_code.size(address(cd[4]))
        call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ('cd', 36).length, ('cd', 36)[0], Array(len=cd[(cd[36] + ('cd', 36)[1] + 4)], data=mem[ceil32(return_data.size) + 292 len 32 * cd[(cd[36] + ('cd', 36)[1] + 4)]]), address(this.address), ('cd', 36)[2]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ('cd', 36).length) >> 32 <= test266151307()
        require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ('cd', 36).length) >> 32 + 127
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ('cd', 36).length) >> 32 + 96] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ('cd', 36).length) >> 32 + 96]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ('cd', 36).length) >> 32 + 96]) + 97 > test266151307():
            revert with 0, 65
        require return_data.size >= mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ('cd', 36).length) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ('cd', 36).length) >> 32 + 96]) + 32
    else:
        mem[ceil32(return_data.size) + 100] = this.address
        mem[ceil32(return_data.size) + 132] = address(cd[4])
        require ext_code.size(address(cd[(cd[36] + ('cd', 36)[1] + 36)]))
        staticcall address(cd[(cd[36] + ('cd', 36)[1] + 36)]).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(cd[4])
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[(2 * ceil32(return_data.size)) + 132] = address(cd[4])
        mem[(2 * ceil32(return_data.size)) + 164] = -1
        mem[(2 * ceil32(return_data.size)) + 96] = 68
        mem[(2 * ceil32(return_data.size)) + 132 len 28] = address(cd[4]) << 64
        mem[(2 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
        mem[(2 * ceil32(return_data.size)) + 196] = 32
        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(cd[(cd[36] + ('cd', 36)[1] + 36)])):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), address(cd[4]) << 64, 0, -1, 0
        mem[(2 * ceil32(return_data.size)) + 328] = 0
        call address(cd[(cd[36] + ('cd', 36)[1] + 36)]) with:
           funct Mask(32, 224, approve(address arg1, uint256 arg2), address(cd[4]) << 64, 0, -1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, approve(address arg1, uint256 arg2), address(cd[4]) << 64, 0, -1, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(this.address), address(cd[4]) << 64 == bool(uint32(this.address), address(cd[4]) << 64)
                if not uint32(this.address), address(cd[4]) << 64:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ('cd', 36)[1] < calldata.size + -cd[36] - 35
            require cd[(cd[36] + ('cd', 36)[1] + 4)] <= test266151307()
            require cd[36] + ('cd', 36)[1] + 36 <= calldata.size - (32 * cd[(cd[36] + ('cd', 36)[1] + 4)])
            mem[(2 * ceil32(return_data.size)) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 264] = ('cd', 36).length
            mem[(2 * ceil32(return_data.size)) + 296] = ('cd', 36)[0]
            mem[(2 * ceil32(return_data.size)) + 328] = 160
            mem[(2 * ceil32(return_data.size)) + 424] = cd[(cd[36] + ('cd', 36)[1] + 4)]
            idx = 0
            s = (2 * ceil32(return_data.size)) + 456
            t = cd[36] + ('cd', 36)[1] + 36
            while idx < cd[(cd[36] + ('cd', 36)[1] + 4)]:
                require cd[t] == address(cd[t])
                mem[s] = address(cd[t])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 360] = this.address
            mem[(2 * ceil32(return_data.size)) + 392] = ('cd', 36)[2]
            require ext_code.size(address(cd[4]))
            call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ('cd', 36).length, ('cd', 36)[0], Array(len=cd[(cd[36] + ('cd', 36)[1] + 4)], data=mem[(2 * ceil32(return_data.size)) + 456 len 32 * cd[(cd[36] + ('cd', 36)[1] + 4)]]), address(this.address), ('cd', 36)[2]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 260
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, ('cd', 36).length) >> 32 <= test266151307()
            require (2 * ceil32(return_data.size)) + return_data.size + 260 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, ('cd', 36).length) >> 32 + 291
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, ('cd', 36).length) >> 32 + 260] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, ('cd', 36).length) >> 32 + 260]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, ('cd', 36).length) >> 32 + 260]) + 261 > test266151307():
                revert with 0, 65
            require return_data.size >= mem[(2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, ('cd', 36).length) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, ('cd', 36).length) >> 32 + 260]) + 32
        else:
            mem[(2 * ceil32(return_data.size)) + 260] = return_data.size
            mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                if not mem[(2 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ('cd', 36)[1] < calldata.size + -cd[36] - 35
            require cd[(cd[36] + ('cd', 36)[1] + 4)] <= test266151307()
            require cd[36] + ('cd', 36)[1] + 36 <= calldata.size - (32 * cd[(cd[36] + ('cd', 36)[1] + 4)])
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = ('cd', 36).length
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = ('cd', 36)[0]
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 160
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = cd[(cd[36] + ('cd', 36)[1] + 4)]
            idx = 0
            s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
            t = cd[36] + ('cd', 36)[1] + 36
            while idx < cd[(cd[36] + ('cd', 36)[1] + 4)]:
                require cd[t] == address(cd[t])
                mem[s] = address(cd[t])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = ('cd', 36)[2]
            require ext_code.size(address(cd[4]))
            call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ('cd', 36).length, ('cd', 36)[0], Array(len=cd[(cd[36] + ('cd', 36)[1] + 4)], data=mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 32 * cd[(cd[36] + ('cd', 36)[1] + 4)]]), address(this.address), ('cd', 36)[2]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, ('cd', 36).length) >> 32 <= test266151307()
            require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 261 > (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, ('cd', 36).length) >> 32 + 292
            if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, ('cd', 36).length) >> 32 + 261] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, ('cd', 36).length) >> 32 + 261]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, ('cd', 36).length) >> 32 + 261]) + 262 > test266151307():
                revert with 0, 65
            require return_data.size >= mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, ('cd', 36).length) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, ('cd', 36).length) >> 32 + 261]) + 32
}



}
