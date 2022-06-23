contract main {




// =====================  Runtime code  =====================


#
#  - safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5)
#
const sub_594dee75(?) = 2

const sub_739e60e6(?) = 1

const SEED = 0


address stor0;
mapping of uint256 balanceOf;
mapping of uint8 stor2;
address adminAddress;
address stor5;
uint256 sub_ee54a6ef;
uint256 sub_2cc58021;
uint256 sub_bcfec1ad;
uint8 sub_523ee8da;
uint8 sub_dfa7703b; offset 8
uint256 stor9; offset 8
uint256 sub_07028a97;

function balanceOf(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    return balanceOf[arg2][address(arg1)]
}

function sub_07028a97(?) payable {
    return sub_07028a97
}

function sub_2cc58021(?) payable {
    return sub_2cc58021
}

function sub_523ee8da(?) payable {
    return bool(sub_523ee8da)
}

function sub_bcfec1ad(?) payable {
    return sub_bcfec1ad
}

function sub_dfa7703b(?) payable {
    return bool(sub_dfa7703b)
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor2[address(arg1)][address(arg2)])
}

function sub_ee54a6ef(?) payable {
    return sub_ee54a6ef
}

function admin() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function sub_b9078e64(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FOREST: Unauthorized to set max NFTS.'
    sub_07028a97 = arg1
}

function sub_51802150(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FOREST: Unauthorized to paused state.'
    sub_523ee8da = uint8(bool(arg1))
}

function setPaymentTokenAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FOREST: Unauthorized to set payment token.'
    stor5 = arg1
}

function sub_99818308(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FOREST: Unauthorized to set maxOwnable value.'
    stor9 = Mask(248, 0, bool(arg1))
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: setting approval status for self'
    stor2[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0xd9b67a2600000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0xe89341c00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function sub_d4f1a040(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    if balanceOf[0][address(arg1)] > -balanceOf[1][address(arg1)] - 1:
        revert with 'NH{q', 17
    if balanceOf[0][address(arg1)] + balanceOf[1][address(arg1)] > -balanceOf[2][address(arg1)] - 1:
        revert with 'NH{q', 17
    return (balanceOf[0][address(arg1)] + balanceOf[1][address(arg1)] + balanceOf[2][address(arg1)])
}

function getLatestPrice() payable {
    require ext_code.size(stor0)
    staticcall stor0.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    return ext_call.return_data[32]
}

function sub_af6dc3bc(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if adminAddress != msg.sender:
        revert with 0, 'FOREST: Unauthorized to set NFT prices.'
    if ('cd', 4).length != 3:
        revert with 0, 'FOREST: No price given for each NFT.'
    if 0 >= ('cd', 4).length:
        revert with 'NH{q', 50
    sub_ee54a6ef = mem[128]
    if 1 >= ('cd', 4).length:
        revert with 'NH{q', 50
    sub_2cc58021 = mem[160]
    if 2 >= ('cd', 4).length:
        revert with 'NH{q', 50
    sub_bcfec1ad = mem[192]
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg5.length)) + 97 > test266151307() or ceil32(ceil32(arg5.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg5 + arg5.length + 36 <= calldata.size
    if arg1 != msg.sender:
        if not stor2[address(arg1)][address(msg.sender)]:
            revert with 0, 'ERC1155: caller is not owner nor approved'
    if not arg2:
        revert with 0, 'ERC1155: transfer to the zero address'
    if balanceOf[arg3][address(arg1)] < arg4:
        revert with 0, 'ERC1155: insufficient balance for transfer'
    balanceOf[arg3][address(arg1)] -= arg4
    if balanceOf[arg3][address(arg2)] > -arg4 - 1:
        revert with 'NH{q', 17
    balanceOf[arg3][address(arg2)] += arg4
    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
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
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + floor32(arg2.length) + 98 > test266151307() or floor32(arg2.length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(arg1.length) + 97] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = floor32(arg1.length) + 129
    while idx < arg2.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if arg1.length != arg2.length:
        revert with 0, 'ERC1155: accounts and ids length mismatch'
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(arg1.length) + floor32(arg2.length) + 98] = arg1.length
    if arg1.length:
        mem[floor32(arg1.length) + floor32(arg2.length) + 130 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        if idx >= arg2.length:
            revert with 'NH{q', 50
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'ERC1155: balance query for the zero address'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(mem[(32 * idx) + floor32(arg1.length) + 129], 1)
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[(32 * idx) + floor32(arg1.length) + floor32(arg2.length) + 130] = balanceOf[mem[(32 * idx) + floor32(arg1.length) + 129]][address(mem[(32 * idx) + 128])]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return Array(len=arg1.length, data=mem[floor32(arg1.length) + floor32(arg2.length) + 130 len 32 * arg1.length])
}

function uri(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        return 32, 74, 'https://ipfs.io/ipfs/QmaVp5MEDgz', '6SoZhJzZtTxMEox6piSDoEcZfa57K3Pg', 'dNK/', '0', '.json', 0 >> 336, 0
    s = 0
    idx = arg1
    while idx:
        if s == -1:
            revert with 'NH{q', 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 'NH{q', 65
    mem[96] = s
    mem[64] = ceil32(s) + 128
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[96]:
                revert with 'NH{q', 50
            mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _65 = mem[64]
        mem[mem[64] + 32] = 'https://ipfs.io/ipfs/QmaVp5MEDgz'
        mem[mem[64] + 64] = '6SoZhJzZtTxMEox6piSDoEcZfa57K3Pg'
        mem[mem[64] + 96] = 'dNK/'
        _71 = mem[96]
        mem[mem[64] + 100 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[mem[64] + mem[96] + 100] = '.json'
        if ceil32(mem[96]) <= mem[96]:
            _103 = mem[64]
            mem[64] = mem[64] + mem[96] + 105
            mem[_65 + mem[96] + 105] = 32
            _111 = mem[_103]
            mem[_65 + _71 + 137] = mem[_103]
            mem[_65 + _71 + 169 len ceil32(_111)] = mem[_103 + 32 len ceil32(_111)]
            if ceil32(_111) > _111:
                mem[_65 + _71 + _111 + 169] = 0
            return memory
              from mem[64]
               len _65 + _71 + ceil32(_111) + -mem[64] + 169
        _106 = mem[64]
        mem[64] = mem[64] + mem[96] + 105
        mem[_65 + mem[96] + 105] = 32
        _113 = mem[_106]
        mem[_65 + _71 + 137] = mem[_106]
        mem[_65 + _71 + 169 len ceil32(_113)] = mem[_106 + 32 len ceil32(_113)]
        if ceil32(_113) > _113:
            mem[_65 + _71 + _113 + 169] = 0
        return memory
          from mem[64]
           len _65 + _71 + ceil32(_113) + -mem[64] + 169
    mem[128 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[96]:
            revert with 'NH{q', 50
        mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _66 = mem[64]
    mem[mem[64] + 32] = 'https://ipfs.io/ipfs/QmaVp5MEDgz'
    mem[mem[64] + 64] = '6SoZhJzZtTxMEox6piSDoEcZfa57K3Pg'
    mem[mem[64] + 96] = 'dNK/'
    _72 = mem[96]
    mem[mem[64] + 100 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    mem[mem[64] + mem[96] + 100] = '.json'
    if ceil32(mem[96]) <= mem[96]:
        _104 = mem[64]
        mem[64] = mem[64] + mem[96] + 105
        mem[_66 + mem[96] + 105] = 32
        _112 = mem[_104]
        mem[_66 + _72 + 137] = mem[_104]
        mem[_66 + _72 + 169 len ceil32(_112)] = mem[_104 + 32 len ceil32(_112)]
        if ceil32(_112) > _112:
            mem[_66 + _72 + _112 + 169] = 0
        return memory
          from mem[64]
           len _66 + _72 + ceil32(_112) + -mem[64] + 169
    _108 = mem[64]
    mem[64] = mem[64] + mem[96] + 105
    mem[_66 + mem[96] + 105] = 32
    _114 = mem[_108]
    mem[_66 + _72 + 137] = mem[_108]
    mem[_66 + _72 + 169 len ceil32(_114)] = mem[_108 + 32 len ceil32(_114)]
    if ceil32(_114) > _114:
        mem[_66 + _72 + _114 + 169] = 0
    return memory
      from mem[64]
       len _66 + _72 + ceil32(_114) + -mem[64] + 169
}

function sub_c37845b2(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FOREST: Unauthorized to add supply.'
    if not arg1:
        if not adminAddress:
            revert with 0, 'ERC1155: mint to the zero address'
        if balanceOf[0][stor4] > -arg2 - 1:
            revert with 'NH{q', 17
        balanceOf[0][stor4] += arg2
        emit TransferSingle(0, arg2, msg.sender, 0, adminAddress);
        if ext_code.size(adminAddress) > 0:
            require ext_code.size(adminAddress)
            call adminAddress.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                 gas gas_remaining wei
                args msg.sender, 0, 0, arg2, 160, 0
            if not ext_call.success:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    else:
        if arg1 != 1:
            if arg1 != 2:
                revert with 0, 'FOREST: NFT id doesn't exist.'
        if not arg1:
            if not adminAddress:
                revert with 0, 'ERC1155: mint to the zero address'
            if balanceOf[0][stor4] > -arg2 - 1:
                revert with 'NH{q', 17
            balanceOf[0][stor4] += arg2
            emit TransferSingle(0, arg2, msg.sender, 0, adminAddress);
            if ext_code.size(adminAddress) > 0:
                require ext_code.size(adminAddress)
                call adminAddress.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args msg.sender, 0, 0, arg2, 160, 0
                if not ext_call.success:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        else:
            if arg1 == 1:
                if not adminAddress:
                    revert with 0, 'ERC1155: mint to the zero address'
                if balanceOf[1][stor4] > -arg2 - 1:
                    revert with 'NH{q', 17
                balanceOf[1][stor4] += arg2
                emit TransferSingle(1, arg2, msg.sender, 0, adminAddress);
                if ext_code.size(adminAddress) > 0:
                    require ext_code.size(adminAddress)
                    call adminAddress.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args msg.sender, 0, 1, arg2, 160, 0
                    if not ext_call.success:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            else:
                if arg1 == 2:
                    if not adminAddress:
                        revert with 0, 'ERC1155: mint to the zero address'
                    if balanceOf[2][stor4] > -arg2 - 1:
                        revert with 'NH{q', 17
                    balanceOf[2][stor4] += arg2
                    emit TransferSingle(2, arg2, msg.sender, 0, adminAddress);
                    if ext_code.size(adminAddress) > 0:
                        require ext_code.size(adminAddress)
                        call adminAddress.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args msg.sender, 0, 2, arg2, 160, 0
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
}

function sub_7fbd30c0(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98 > test266151307() or floor32(('cd', 68).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 36).length) + 97] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = floor32(('cd', 36).length) + 129
    while idx < ('cd', 68).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 100).length)) + 99 > test266151307() or ceil32(ceil32(('cd', 100).length)) + 99 < 98:
        revert with 'NH{q', 65
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98] = ('cd', 100).length
    require cd[100] + ('cd', 100).length + 36 <= calldata.size
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ('cd', 100).length + 130] = 0
    if adminAddress != msg.sender:
        revert with 0, 'FOREST: Unauthorized mint nft(s).'
    if not address(cd[4]):
        revert with 0, 'ERC1155: mint to the zero address'
    if ('cd', 36).length != ('cd', 68).length:
        revert with 0, 'ERC1155: ids and amounts length mismatch'
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= ('cd', 68).length:
            revert with 'NH{q', 50
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        mem[0] = address(cd[4])
        mem[32] = sha3(mem[(32 * idx) + 128], 1)
        if balanceOf[mem[(32 * idx) + 128]][address(cd[4])] > -mem[(32 * idx) + floor32(('cd', 36).length) + 129] - 1:
            revert with 'NH{q', 17
        balanceOf[mem[(32 * idx) + 128]][address(cd[4])] += mem[(32 * idx) + floor32(('cd', 36).length) + 129]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 100).length)) + 99] = 64
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 100).length)) + 163] = ('cd', 36).length
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 100).length)) + 195 len 32 * ('cd', 36).length] = mem[128 len 32 * ('cd', 36).length]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 100).length)) + 131] = (32 * ('cd', 36).length) + 96
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 100).length)) + (32 * ('cd', 36).length) + 195] = ('cd', 68).length
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 100).length)) + (32 * ('cd', 36).length) + 227 len 32 * ('cd', 68).length] = mem[floor32(('cd', 36).length) + 129 len 32 * ('cd', 68).length]
    emit TransferBatch(Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 100).length)) + 195 len (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 32]), (32 * ('cd', 36).length) + 96, msg.sender, 0, address(cd[4]));
    if ext_code.size(address(cd[4])) <= 0:
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 100).length)) + 99] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 100).length)) + 103] = msg.sender
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 100).length)) + 135] = 0
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 100).length)) + 167] = 160
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 100).length)) + 263] = ('cd', 36).length
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 100).length)) + 295 len 32 * ('cd', 36).length] = mem[128 len 32 * ('cd', 36).length]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 100).length)) + 199] = (32 * ('cd', 36).length) + 192
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 100).length)) + (32 * ('cd', 36).length) + 295] = ('cd', 68).length
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 100).length)) + (32 * ('cd', 36).length) + 327 len 32 * ('cd', 68).length] = mem[floor32(('cd', 36).length) + 129 len 32 * ('cd', 68).length]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 100).length)) + 231] = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 100).length)) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 327] = ('cd', 100).length
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 100).length)) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 359 len ceil32(('cd', 100).length)] = call.data[cd[100] + 36 len ('cd', 100).length], Mask(8 * ceil32(('cd', 100).length) - ('cd', 100).length, -(8 * ceil32(('cd', 100).length) + -ceil32(ceil32(('cd', 100).length)) + 27) + 256, msg.sender) >> -(8 * ceil32(('cd', 100).length) + -ceil32(ceil32(('cd', 100).length)) + 27) + 256
    if ceil32(('cd', 100).length) <= ('cd', 100).length:
        require ext_code.size(address(cd[4]))
        call address(cd[4]).onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, 0, 160, (32 * ('cd', 36).length) + 192, (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224, ('cd', 36).length, mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 100).length)) + 295 len (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 32], ('cd', 100).length, call.data[cd[100] + 36 len ('cd', 100).length], Mask(8 * ceil32(('cd', 100).length) - ('cd', 100).length, -(8 * ceil32(('cd', 100).length) + -ceil32(ceil32(('cd', 100).length)) + 27) + 256, msg.sender) >> -(8 * ceil32(('cd', 100).length) + -ceil32(ceil32(('cd', 100).length)) + 27) + 256
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 100).length)) + 99] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        if return_data.size <= 3:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if return_data.size < 68:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 100).length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 100).length)) + ext_call.return_data[0] + 99] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 100).length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 100).length)) + floor32(ext_call.return_data[0] + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 100).length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307() or floor32(ext_call.return_data[0] + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 100).length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99:
            revert with 'NH{q', 65
        mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 100).length)) + floor32(ext_call.return_data[0] + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 100).length)) + ext_call.return_data[0] + 99] + 31) + 100
        if not floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 100).length)) + ext_call.return_data[0] + 99:
            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 100).length)) + floor32(ext_call.return_data[0] + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 100).length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
        _619 = floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 100).length)) + floor32(ext_call.return_data[0] + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 100).length)) + ext_call.return_data[0] + 99] + 31) + 100
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 100).length)) + floor32(ext_call.return_data[0] + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 100).length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _625 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 100).length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 36] = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 100).length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 68 len ceil32(_625)] = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 100).length)) + ext_call.return_data[0] + 131 len ceil32(_625)]
        if ceil32(_625) <= _625:
            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_625) + 32]
        mem[mem[64] + _625 + 68] = 0
        revert with memory
          from mem[64]
           len _619 + ceil32(_625) + -mem[64] + 68
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 100).length)) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ('cd', 100).length + 359] = 0
    require ext_code.size(address(cd[4]))
    call address(cd[4]).onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
         gas gas_remaining wei
        args msg.sender, 0, 160, (32 * ('cd', 36).length) + 192, (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224, ('cd', 36).length, mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 100).length)) + 295 len (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 32], ('cd', 100).length, call.data[cd[100] + 36 len ('cd', 100).length], Mask(8 * ceil32(('cd', 100).length) - ('cd', 100).length, -(8 * ceil32(('cd', 100).length) + -ceil32(ceil32(('cd', 100).length)) + 27) + 256, msg.sender) >> -(8 * ceil32(('cd', 100).length) + -ceil32(ceil32(('cd', 100).length)) + 27) + 256
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 100).length)) + 99] = ext_call.return_data[0]
    if ext_call.success:
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    if return_data.size <= 3:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    mem[0 len 4] = ext_call.return_data[0 len 4]
    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if return_data.size < 68:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 100).length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 100).length)) + ext_call.return_data[0] + 99] > test266151307():
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if ext_call.return_data[0] + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 100).length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 100).length)) + floor32(ext_call.return_data[0] + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 100).length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307() or floor32(ext_call.return_data[0] + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 100).length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 100).length)) + floor32(ext_call.return_data[0] + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 100).length)) + ext_call.return_data[0] + 99] + 31) + 100
    if not floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 100).length)) + ext_call.return_data[0] + 99:
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 100).length)) + floor32(ext_call.return_data[0] + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 100).length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
    _622 = floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 100).length)) + floor32(ext_call.return_data[0] + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 100).length)) + ext_call.return_data[0] + 99] + 31) + 100
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 100).length)) + floor32(ext_call.return_data[0] + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 100).length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _629 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 100).length)) + ext_call.return_data[0] + 99]
    mem[mem[64] + 36] = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 100).length)) + ext_call.return_data[0] + 99]
    mem[mem[64] + 68 len ceil32(_629)] = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 100).length)) + ext_call.return_data[0] + 131 len ceil32(_629)]
    if ceil32(_629) <= _629:
        revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_629) + 32]
    mem[mem[64] + _629 + 68] = 0
    revert with memory
      from mem[64]
       len _622 + ceil32(_629) + -mem[64] + 68
}



}
