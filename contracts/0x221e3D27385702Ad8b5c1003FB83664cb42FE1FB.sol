contract main {




// =====================  Runtime code  =====================


#
#  - sub_2cbf4c62(?)
#  - collectFee(address arg1)
#  - acceptOffer(uint256 arg1)
#
const platformAddress = 0


address owner;
uint256 stor1;
uint256 stor2;
uint256 stor3;
mapping of struct sub_1f0c602d;
mapping of struct sub_511ff563;
mapping of struct sub_35d2e1ed;
mapping of uint256 sub_17bca43e;
mapping of uint8 stor8;
uint256 platformFee;

function sub_17bca43e(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sub_17bca43e[address(arg1)][address(arg2)]
}

function sub_1f0c602d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(sub_1f0c602d[address(arg1)].field_0), 
           sub_1f0c602d[address(arg1)].field_0,
           sub_1f0c602d[address(arg1)].field_256,
           bool(sub_1f0c602d[address(arg1)].field_512)
}

function platformFee() {
    return platformFee
}

function sub_35d2e1ed(?) {
    require calldata.size - 4 >= 32
    return bool(sub_35d2e1ed[arg1].field_0), 
           sub_35d2e1ed[arg1].field_256,
           sub_35d2e1ed[arg1].field_512,
           sub_35d2e1ed[arg1].field_768,
           sub_35d2e1ed[arg1].field_1024
}

function sub_511ff563(?) {
    require calldata.size - 4 >= 32
    return bool(sub_511ff563[arg1].field_0), 
           sub_511ff563[arg1].field_0,
           sub_511ff563[arg1].field_256,
           sub_511ff563[arg1].field_512,
           sub_511ff563[arg1].field_768,
           sub_511ff563[arg1].field_1024,
           sub_511ff563[arg1].field_1280
}

function paymentAccepted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor8[address(arg1)])
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_f7efb89c(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8[address(arg1)] = uint8(bool(arg2))
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x4e2312e000000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
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
    return 0xf23a6e6100000000000000000000000000000000000000000000000000000000
}

function sub_de6a6d92(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg4 == bool(arg4)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_1f0c602d[address(arg1)].field_0:
        revert with 0, 'Collection: Already be listed'
    if arg3:
        if not address(arg2):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Collection: Creator parameters incorrect'
    else:
        if address(arg2):
            if not arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Collection: Creator parameters incorrect'
            if not address(arg2):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Collection: Creator parameters incorrect'
    if platformFee > !arg3:
        revert with 0, 17
    if platformFee + arg3 > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Collection: Sum of fee must be less than TOTAL_MAX_FEE'
    sub_1f0c602d[address(arg1)].field_0 = 1
    sub_1f0c602d[address(arg1)].field_8 = address(arg2)
    sub_1f0c602d[address(arg1)].field_168 = 0
    sub_1f0c602d[address(arg1)].field_256 = arg3
    sub_1f0c602d[address(arg1)].field_512 = uint8(bool(arg4))
    emit 0xf604db42: 1, address(arg2), arg3, bool(arg4), address(arg1)
}

function sub_0ebe59d2(?) {
    require calldata.size - 4 >= 96
    require arg2 == bool(arg2)
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not sub_511ff563[arg1].field_0:
        revert with 0, 'Ask: This ask already canceled!'
    if sub_511ff563[arg1].field_512 <= 0:
        revert with 0, 'Ask: This ask already done!'
    if sub_511ff563[arg1].field_768 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Offer: Only Asking Creator can modify the offer!'
    sub_511ff563[arg1].field_0 = uint8(bool(arg2))
    if arg2:
        sub_511ff563[arg1].field_1024 = arg3
    else:
        if sub_1f0c602d[stor5[arg1].field_0].field_512:
            require ext_code.size(sub_511ff563[arg1].field_8)
            call sub_511ff563[arg1].field_8.0xf242432a with:
                 gas gas_remaining wei
                args 0, 0, msg.sender, sub_511ff563[arg1].field_256, sub_511ff563[arg1].field_512, 160, 2, 0, 0
        else:
            if sub_511ff563[arg1].field_512 != 1:
                revert with 0, 'NFT: ERC721 should be unique!'
            require ext_code.size(sub_511ff563[arg1].field_8)
            call sub_511ff563[arg1].field_8.0xb88d4fde with:
                 gas gas_remaining wei
                args address(this.address), msg.sender, sub_511ff563[arg1].field_256, 128, 2, 0, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit 0x582f7ec8: bool(sub_511ff563[arg1].field_0), sub_511ff563[arg1].field_512, sub_511ff563[arg1].field_1024, arg1
    stor1 = 1
}

function onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg3.length) + 97 < 96 or ceil32(32 * arg3.length) + 97 > test266151307():
        revert with 0, 65
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = 128
    while idx < arg3.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg4.length) + 98 < 97 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 98 > test266151307():
        revert with 0, 65
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    idx = 0
    s = arg4 + 36
    t = ceil32(32 * arg3.length) + 129
    while idx < arg4.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg5.length)) + 99 < 98 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 > test266151307():
        revert with 0, 65
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xbc197c8100000000000000000000000000000000000000000000000000000000
}

function createOffer(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    mem[128] = sub_511ff563[arg1].field_8
    mem[160] = sub_511ff563[arg1].field_256
    mem[192] = sub_511ff563[arg1].field_512
    mem[224] = sub_511ff563[arg1].field_768
    mem[256] = sub_511ff563[arg1].field_1024
    mem[288] = sub_511ff563[arg1].field_1280
    if not sub_511ff563[arg1].field_0:
        revert with 0, 'Offer: This ask was NOT available!'
    if msg.sender == sub_511ff563[arg1].field_768:
        revert with 0, 'Ask: You should NOT offer from yourself!'
    if arg2 <= 0:
        revert with 0, 'Offer: Zero Quantity'
    if sub_511ff563[arg1].field_512 < arg2:
        revert with 0, 'Offer: insufficient quantity!'
    if arg3 and arg2 > -1 / arg3:
        revert with 0, 17
    if not sub_511ff563[arg1].field_1280:
        if arg3 * arg2 != msg.value:
            revert with 0, 'Offer: We only accept just enough amount!'
    else:
        mem[356] = msg.sender
        mem[388] = this.address
        mem[420] = arg3 * arg2
        mem[320] = 100
        mem[356 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[352 len 4] = unknown_0x23b872dd(?????)
        mem[452] = 32
        mem[484] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(sub_511ff563[arg1].field_1280):
            revert with 0, 'Address: call to non-contract'
        mem[516 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg3 * arg2, 0
        mem[616] = 0
        call sub_511ff563[arg1].field_1280 with:
           funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg3 * arg2, 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg3 * arg2, 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if sub_511ff563[arg1].field_0:
                    revert with memory
                      from 128
                       len bool(sub_511ff563[arg1].field_0)
                revert with 0, 'SafeERC20: low-level call failed'
            if sub_511ff563[arg1].field_0:
                require bool(sub_511ff563[arg1].field_0) >= 32
                require sub_511ff563[arg1].field_8 == bool(sub_511ff563[arg1].field_8)
                if not sub_511ff563[arg1].field_8:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[548] == bool(mem[548])
                if not mem[548]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    sub_35d2e1ed[stor3].field_0 = 1
    sub_35d2e1ed[stor3].field_256 = arg1
    sub_35d2e1ed[stor3].field_512 = msg.sender
    sub_35d2e1ed[stor3].field_768 = arg2
    sub_35d2e1ed[stor3].field_1024 = arg3
    stor3++
    emit 0xd75188eb: 1, arg2, arg3, stor3, msg.sender, arg1
    stor1 = 1
}

function sub_25d4fe1a(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    idx = 0
    while idx < ('cd', 4).length:
        if not sub_35d2e1ed[cd[((32 * idx) + cd[4] + 36)]].field_0:
            revert with 0, 'Offer: This offer was already canceled!'
        if sub_35d2e1ed[cd[((32 * idx) + cd[4] + 36)]].field_768 <= 0:
            revert with 0, 'Offer: This offer was already accepted!'
        if sub_35d2e1ed[cd[((32 * idx) + cd[4] + 36)]].field_512 != msg.sender:
            revert with 0, 'Offer: You are not the offer creator!'
        mem[0] = sub_35d2e1ed[cd[((32 * idx) + cd[4] + 36)]].field_256
        mem[32] = 5
        _99 = mem[64]
        mem[64] = mem[64] + 224
        mem[_99] = bool(sub_511ff563[stor6[cd[((32 * idx) + cd[4] + 36)]].field_256].field_0)
        mem[_99 + 32] = sub_511ff563[stor6[cd[((32 * idx) + cd[4] + 36)]].field_256].field_8
        mem[_99 + 64] = sub_511ff563[stor6[cd[((32 * idx) + cd[4] + 36)]].field_256].field_256
        mem[_99 + 96] = sub_511ff563[stor6[cd[((32 * idx) + cd[4] + 36)]].field_256].field_512
        mem[_99 + 128] = sub_511ff563[stor6[cd[((32 * idx) + cd[4] + 36)]].field_256].field_768
        mem[_99 + 160] = sub_511ff563[stor6[cd[((32 * idx) + cd[4] + 36)]].field_256].field_1024
        mem[_99 + 192] = sub_511ff563[stor6[cd[((32 * idx) + cd[4] + 36)]].field_256].field_1280
        if sub_35d2e1ed[cd[((32 * idx) + cd[4] + 36)]].field_768 and sub_35d2e1ed[cd[((32 * idx) + cd[4] + 36)]].field_1024 > -1 / sub_35d2e1ed[cd[((32 * idx) + cd[4] + 36)]].field_768:
            revert with 0, 17
        sub_35d2e1ed[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
        if not sub_511ff563[stor6[cd[((32 * idx) + cd[4] + 36)]].field_256].field_1280:
            call msg.sender with:
               value sub_35d2e1ed[cd[((32 * idx) + cd[4] + 36)]].field_768 * sub_35d2e1ed[cd[((32 * idx) + cd[4] + 36)]].field_1024 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx >= ('cd', 4).length:
                revert with 0, 50
            mem[mem[64]] = bool(sub_35d2e1ed[cd[((32 * idx) + cd[4] + 36)]].field_0)
            mem[mem[64] + 32] = sub_35d2e1ed[cd[((32 * idx) + cd[4] + 36)]].field_768
            mem[mem[64] + 64] = sub_35d2e1ed[cd[((32 * idx) + cd[4] + 36)]].field_1024
        else:
            _106 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = sub_35d2e1ed[cd[((32 * idx) + cd[4] + 36)]].field_768 * sub_35d2e1ed[cd[((32 * idx) + cd[4] + 36)]].field_1024
            _107 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_107 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_107 + 36 len 28]
            mem[64] = _106 + 164
            mem[_106 + 100] = 32
            mem[_106 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(sub_511ff563[stor6[cd[((32 * idx) + cd[4] + 36)]].field_256].field_1280):
                revert with 0, 'Address: call to non-contract'
            _116 = mem[_107]
            s = 0
            while s < _116:
                mem[s + _106 + 164] = mem[s + _107 + 32]
                s = s + 32
                continue 
            if ceil32(_116) > _116:
                mem[_116 + _106 + 164] = 0
            call sub_511ff563[stor6[cd[((32 * idx) + cd[4] + 36)]].field_256].field_1280.mem[_106 + 164 len 4] with:
                 gas gas_remaining wei
                args mem[_106 + 168 len _116 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_106 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_106 + 168] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _106 + 232] = mem[idx + _106 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_106 + 232]
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                mem[_106 + 164] = bool(sub_35d2e1ed[cd[((32 * idx) + cd[4] + 36)]].field_0)
                mem[_106 + 196] = sub_35d2e1ed[cd[((32 * idx) + cd[4] + 36)]].field_768
                mem[_106 + 228] = sub_35d2e1ed[cd[((32 * idx) + cd[4] + 36)]].field_1024
            else:
                mem[64] = _106 + ceil32(return_data.size) + 165
                mem[_106 + 164] = return_data.size
                mem[_106 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_106 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_106 + ceil32(return_data.size) + 169] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _106 + ceil32(return_data.size) + 233] = mem[idx + _106 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_106 + ceil32(return_data.size) + 233]
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_106 + 196] == bool(mem[_106 + 196])
                    if not mem[_106 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                mem[_106 + ceil32(return_data.size) + 165] = bool(sub_35d2e1ed[cd[((32 * idx) + cd[4] + 36)]].field_0)
                mem[_106 + ceil32(return_data.size) + 197] = sub_35d2e1ed[cd[((32 * idx) + cd[4] + 36)]].field_768
                mem[_106 + ceil32(return_data.size) + 229] = sub_35d2e1ed[cd[((32 * idx) + cd[4] + 36)]].field_1024
        emit 0xfdfe92ea: bool(sub_35d2e1ed[cd[((32 * idx) + cd[4] + 36)]].field_0), sub_35d2e1ed[cd[((32 * idx) + cd[4] + 36)]].field_768, sub_35d2e1ed[cd[((32 * idx) + cd[4] + 36)]].field_1024, cd[((32 * idx) + cd[4] + 36)]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    stor1 = 1
}

function sub_49c8a4ac(?) {
    require calldata.size - 4 >= 160
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = ceil32(32 * ('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 99 < 98 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 99 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130
    while idx < ('cd', 68).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 100).length) + 100 < 99 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 100 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 99] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 131
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 132).length) + 101 < 100 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 101 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 101
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 100] = ('cd', 132).length
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    idx = 0
    s = cd[132] + 36
    t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 132
    while idx < ('cd', 132).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'Ask: Parameter not matched!'
    if ('cd', 4).length != ('cd', 68).length:
        revert with 0, 'Ask: Parameter not matched!'
    if ('cd', 4).length != ('cd', 100).length:
        revert with 0, 'Ask: Parameter not matched!'
    if ('cd', 4).length != ('cd', 132).length:
        revert with 0, 'Ask: Parameter not matched!'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        if not sub_1f0c602d[mem[(32 * idx) + 140 len 20]].field_0:
            revert with 0, 'Collection: Not for listing!'
        if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 99]:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 143 len 20]
        mem[32] = 8
        if not stor8[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 143 len 20]]:
            revert with 0, 'Payment: Is not allow!'
        if idx >= mem[96]:
            revert with 0, 50
        _1065 = mem[(32 * idx) + 128]
        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
            revert with 0, 50
        _1068 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
        if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
            revert with 0, 50
        _1070 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
        _1071 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1071] = 2
        mem[_1071 + 32] = 0x3078000000000000000000000000000000000000000000000000000000000000
        mem[0] = address(_1065)
        mem[32] = 4
        if not sub_1f0c602d[address(_1065)].field_512:
            if _1070 != 1:
                revert with 0, 'NFT: ERC721 should be unique!'
            mem[mem[64]] = 0xb88d4fde00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = this.address
            mem[mem[64] + 68] = _1068
            mem[mem[64] + 100] = 128
            mem[mem[64] + 132] = 2
            s = 0
            while s < 2:
                mem[s + mem[64] + 164] = mem[s + _1071 + 32]
                s = s + 32
                continue 
            mem[mem[64] + 166] = 0
            require ext_code.size(address(_1065))
            call address(_1065).0xb88d4fde with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), _1068, 128, 2, mem[mem[64] + 164 len 2], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1217 = mem[64]
            mem[64] = mem[64] + 224
            mem[_1217] = 1
            if idx >= mem[96]:
                revert with 0, 50
            mem[_1217 + 32] = mem[(32 * idx) + 140 len 20]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[_1217 + 64] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                revert with 0, 50
            mem[_1217 + 96] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
            mem[_1217 + 128] = msg.sender
            if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 100]:
                revert with 0, 50
            mem[_1217 + 160] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 132]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 99]:
                revert with 0, 50
            mem[_1217 + 192] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 143 len 20]
            mem[0] = stor2
            mem[32] = 5
            sub_511ff563[stor2].field_0 = 1
            sub_511ff563[stor2].field_8 = mem[_1217 + 44 len 20]
            sub_511ff563[stor2].field_168 = 0
            sub_511ff563[stor2].field_256 = mem[_1217 + 64]
            sub_511ff563[stor2].field_512 = mem[_1217 + 96]
            sub_511ff563[stor2].field_768 = msg.sender
            sub_511ff563[stor2].field_1024 = mem[_1217 + 160]
            sub_511ff563[stor2].field_1280 = mem[_1217 + 204 len 20]
            stor2++
            if idx >= mem[96]:
                revert with 0, 50
            _1297 = mem[(32 * idx) + 128]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            _1305 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                revert with 0, 50
            _1313 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 99]:
                revert with 0, 50
            _1321 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 131]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 100]:
                revert with 0, 50
            _1330 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 132]
            mem[mem[64]] = 1
            mem[mem[64] + 32] = _1305
            mem[mem[64] + 64] = _1313
            mem[mem[64] + 96] = address(_1321)
            mem[mem[64] + 128] = _1330
            emit 0xe33cc731: 1, _1305, _1313, address(_1321), _1330, stor2, msg.sender, address(_1297)
        else:
            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = this.address
            mem[mem[64] + 68] = _1068
            mem[mem[64] + 100] = _1070
            mem[mem[64] + 132] = 160
            mem[mem[64] + 164] = 2
            s = 0
            while s < 2:
                mem[s + mem[64] + 196] = mem[s + _1071 + 32]
                s = s + 32
                continue 
            mem[mem[64] + 198] = 0
            require ext_code.size(address(_1065))
            call address(_1065).0xf242432a with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), _1068, _1070, 160, 2, mem[mem[64] + 196 len 2], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1221 = mem[64]
            mem[64] = mem[64] + 224
            mem[_1221] = 1
            if idx >= mem[96]:
                revert with 0, 50
            mem[_1221 + 32] = mem[(32 * idx) + 140 len 20]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[_1221 + 64] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                revert with 0, 50
            mem[_1221 + 96] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
            mem[_1221 + 128] = msg.sender
            if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 100]:
                revert with 0, 50
            mem[_1221 + 160] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 132]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 99]:
                revert with 0, 50
            mem[_1221 + 192] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 143 len 20]
            mem[0] = stor2
            mem[32] = 5
            sub_511ff563[stor2].field_0 = 1
            sub_511ff563[stor2].field_8 = mem[_1221 + 44 len 20]
            sub_511ff563[stor2].field_168 = 0
            sub_511ff563[stor2].field_256 = mem[_1221 + 64]
            sub_511ff563[stor2].field_512 = mem[_1221 + 96]
            sub_511ff563[stor2].field_768 = msg.sender
            sub_511ff563[stor2].field_1024 = mem[_1221 + 160]
            sub_511ff563[stor2].field_1280 = mem[_1221 + 204 len 20]
            stor2++
            if idx >= mem[96]:
                revert with 0, 50
            _1301 = mem[(32 * idx) + 128]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            _1309 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                revert with 0, 50
            _1317 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 99]:
                revert with 0, 50
            _1325 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 131]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 100]:
                revert with 0, 50
            _1336 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 132]
            mem[mem[64]] = 1
            mem[mem[64] + 32] = _1309
            mem[mem[64] + 64] = _1317
            mem[mem[64] + 96] = address(_1325)
            mem[mem[64] + 128] = _1336
            emit 0xe33cc731: 1, _1309, _1317, address(_1325), _1336, stor2, msg.sender, address(_1301)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    stor1 = 1
}



}
