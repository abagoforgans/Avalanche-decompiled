contract main {




// =====================  Runtime code  =====================


#
#  - initialize(uint256 arg1, uint256 arg2, address arg3)
#
array of struct stor101;
array of struct stor102;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor106;
address owner;
mapping of struct stor201;
mapping of uint256 sub_2b1331a8;
uint256 numMinted;
mapping of struct sub_be75288d;
uint256 presaleStartTime;
uint256 presaleEndTime;
uint8 transfersEnabled; offset 160
uint128 stor207; offset 160
address _signerAddress;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function presaleEndTime() {
    return presaleEndTime
}

function sub_2b1331a8(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_2b1331a8[arg1][arg2]
}

function sub_30ec18c2(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_2b1331a8[address(arg1)][arg2]
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function presaleStartTime() {
    return presaleStartTime
}

function sub_be75288d(?) {
    require calldata.size - 4 >= 32
    return sub_be75288d[arg1].field_256
}

function transfersEnabled() {
    return bool(transfersEnabled)
}

function _signerAddress() {
    return _signerAddress
}

function numMinted() {
    return numMinted
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor106[address(arg1)][address(arg2)])
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

function sub_ecdd42c2(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    presaleStartTime = arg1
}

function sub_1593d8a5(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_be75288d[arg1].field_256 = arg2
}

function sub_dcb2f4dc(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_be75288d[arg1].field_768 = arg2
}

function sub_e345c564(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_be75288d[arg1].field_512 = arg2
}

function sub_135ee927(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_be75288d[arg1].field_1536 = arg2
}

function sub_72c0ab83(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_be75288d[arg1].field_1024 = arg2
}

function sub_d010ad7f(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_be75288d[arg1].field_1280 = arg2
}

function updatePresaleEndTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    presaleEndTime = arg1
}

function updateSignerAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _signerAddress = arg1
}

function setTransfersEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor207 = Mask(96, 0, arg1)
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    return ''
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor106[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function Sweep(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call arg1 with:
       value eth.balance(arg1) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not stor106[stor103[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function sub_3598e8cf(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160] = '\x19Ethereum Signed Message:\n32'
    mem[ceil32(arg1.length) + 188] = msg.sender
    mem[ceil32(arg1.length) + 128] = 60
    if 65 == arg1.length:
        if mem[160] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
            revert with 0, 'ECDSA: invalid signature 's' value'
        revert with 0, 'ECDSA: invalid signature 'v' value'
    if arg1.length != 64:
        revert with 0, 'ECDSA: invalid signature length'
    if 27 > !(bool(mem[160]) >> 255):
        revert with 0, 17
    if uint255(mem[160]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECDSA: invalid signature 's' value'
    if uint8((bool(mem[160]) >> 255) + 27) != 27:
        if uint8((bool(mem[160]) >> 255) + 27) != 28:
            revert with 0, 'ECDSA: invalid signature 'v' value'
    signer = erecover(sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]), (bool(mem[160]) >> 255) + 27 << 248, mem[128], uint255(mem[160])) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'ECDSA: invalid signature'
    return (_signerAddress == address(signer))
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor106[stor103[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if arg1:
        if not transfersEnabled:
            revert with 0, 'Transfers not enabled yet'
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor106[stor103[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if arg1:
        if not transfersEnabled:
            revert with 0, 'Transfers not enabled yet'
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.0x150b7a02 with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
        if not ext_call.success:
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
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
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor106[stor103[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if arg1:
        if not transfersEnabled:
            revert with 0, 'Transfers not enabled yet'
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.0x150b7a02 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            if not return_data.size:
                if not arg4.length:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with arg4[all]
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function sub_cf37c49a(?) {
    require calldata.size - 4 >= 32
    if sub_be75288d[arg1].field_0:
        if sub_be75288d[arg1].field_0 == uint255(sub_be75288d[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if sub_be75288d[arg1].field_0:
            if sub_be75288d[arg1].field_0 == uint255(sub_be75288d[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, sub_be75288d[arg1].field_0):
                if 31 >= uint255(sub_be75288d[arg1].field_0) * 0.5:
                    mem[128] = 256 * sub_be75288d[arg1].field_8
                else:
                    mem[128] = sub_be75288d[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(sub_be75288d[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = sub_be75288d[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if sub_be75288d[arg1].field_0 == sub_be75288d[arg1].field_1 < 32:
                revert with 0, 34
            if sub_be75288d[arg1].field_1:
                if 31 >= sub_be75288d[arg1].field_1:
                    mem[128] = 256 * sub_be75288d[arg1].field_8
                else:
                    mem[128] = sub_be75288d[arg1].field_0
                    idx = 128
                    s = 0
                    while sub_be75288d[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = sub_be75288d[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return Array(len=2 * Mask(256, -1, sub_be75288d[arg1].field_0), data=mem[128 len ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)]), 
               sub_be75288d[arg1].field_256,
               sub_be75288d[arg1].field_512,
               sub_be75288d[arg1].field_768,
               sub_be75288d[arg1].field_1024,
               sub_be75288d[arg1].field_1280,
               sub_be75288d[arg1].field_1536
    if sub_be75288d[arg1].field_0 == sub_be75288d[arg1].field_1 < 32:
        revert with 0, 34
    if sub_be75288d[arg1].field_0:
        if sub_be75288d[arg1].field_0 == uint255(sub_be75288d[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, sub_be75288d[arg1].field_0):
            if 31 >= uint255(sub_be75288d[arg1].field_0) * 0.5:
                mem[128] = 256 * sub_be75288d[arg1].field_8
            else:
                mem[128] = sub_be75288d[arg1].field_0
                idx = 128
                s = 0
                while (uint255(sub_be75288d[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = sub_be75288d[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if sub_be75288d[arg1].field_0 == sub_be75288d[arg1].field_1 < 32:
            revert with 0, 34
        if sub_be75288d[arg1].field_1:
            if 31 >= sub_be75288d[arg1].field_1:
                mem[128] = 256 * sub_be75288d[arg1].field_8
            else:
                mem[128] = sub_be75288d[arg1].field_0
                idx = 128
                s = 0
                while sub_be75288d[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = sub_be75288d[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return Array(len=sub_be75288d[arg1].field_0, data=mem[128 len ceil32(sub_be75288d[arg1].field_1)]), 
           sub_be75288d[arg1].field_256,
           sub_be75288d[arg1].field_512,
           sub_be75288d[arg1].field_768,
           sub_be75288d[arg1].field_1024,
           sub_be75288d[arg1].field_1280,
           sub_be75288d[arg1].field_1536
}

function name() {
    if bool(stor101.length):
        if bool(stor101.length) == uint255(stor101.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor101.length):
            if bool(stor101.length) == uint255(stor101.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor101.length):
                if 31 < uint255(stor101.length) * 0.5:
                    mem[128] = uint256(stor101.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor101.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor101[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor101.length), data=mem[128 len ceil32(uint255(stor101.length) * 0.5)])
                mem[128] = 256 * stor101.length.field_8
        else:
            if bool(stor101.length) == stor101.length.field_1 < 32:
                revert with 0, 34
            if stor101.length.field_1:
                if 31 < stor101.length.field_1:
                    mem[128] = uint256(stor101.field_0)
                    idx = 128
                    s = 0
                    while stor101.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor101[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor101.length), data=mem[128 len ceil32(uint255(stor101.length) * 0.5)])
                mem[128] = 256 * stor101.length.field_8
        mem[ceil32(uint255(stor101.length) * 0.5) + 192 len ceil32(uint255(stor101.length) * 0.5)] = mem[128 len ceil32(uint255(stor101.length) * 0.5)]
        if ceil32(uint255(stor101.length) * 0.5) > uint255(stor101.length) * 0.5:
            mem[(uint255(stor101.length) * 0.5) + ceil32(uint255(stor101.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor101.length), data=mem[128 len ceil32(uint255(stor101.length) * 0.5)], mem[(2 * ceil32(uint255(stor101.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor101.length) * 0.5)]), 
    if bool(stor101.length) == stor101.length.field_1 < 32:
        revert with 0, 34
    if bool(stor101.length):
        if bool(stor101.length) == uint255(stor101.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor101.length):
            if 31 < uint255(stor101.length) * 0.5:
                mem[128] = uint256(stor101.field_0)
                idx = 128
                s = 0
                while (uint255(stor101.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor101[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor101.length % 128, data=mem[128 len ceil32(stor101.length.field_1)])
            mem[128] = 256 * stor101.length.field_8
    else:
        if bool(stor101.length) == stor101.length.field_1 < 32:
            revert with 0, 34
        if stor101.length.field_1:
            if 31 < stor101.length.field_1:
                mem[128] = uint256(stor101.field_0)
                idx = 128
                s = 0
                while stor101.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor101[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor101.length % 128, data=mem[128 len ceil32(stor101.length.field_1)])
            mem[128] = 256 * stor101.length.field_8
    mem[ceil32(stor101.length.field_1) + 192 len ceil32(stor101.length.field_1)] = mem[128 len ceil32(stor101.length.field_1)]
    if ceil32(stor101.length.field_1) > stor101.length.field_1:
        mem[stor101.length.field_1 + ceil32(stor101.length.field_1) + 192] = 0
    return Array(len=stor101.length % 128, data=mem[128 len ceil32(stor101.length.field_1)], mem[(2 * ceil32(stor101.length.field_1)) + 192 len 2 * ceil32(stor101.length.field_1)]), 
}

function symbol() {
    if bool(stor102.length):
        if bool(stor102.length) == uint255(stor102.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor102.length):
            if bool(stor102.length) == uint255(stor102.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor102.length):
                if 31 < uint255(stor102.length) * 0.5:
                    mem[128] = uint256(stor102.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor102.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor102[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor102.length), data=mem[128 len ceil32(uint255(stor102.length) * 0.5)])
                mem[128] = 256 * stor102.length.field_8
        else:
            if bool(stor102.length) == stor102.length.field_1 < 32:
                revert with 0, 34
            if stor102.length.field_1:
                if 31 < stor102.length.field_1:
                    mem[128] = uint256(stor102.field_0)
                    idx = 128
                    s = 0
                    while stor102.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor102[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor102.length), data=mem[128 len ceil32(uint255(stor102.length) * 0.5)])
                mem[128] = 256 * stor102.length.field_8
        mem[ceil32(uint255(stor102.length) * 0.5) + 192 len ceil32(uint255(stor102.length) * 0.5)] = mem[128 len ceil32(uint255(stor102.length) * 0.5)]
        if ceil32(uint255(stor102.length) * 0.5) > uint255(stor102.length) * 0.5:
            mem[(uint255(stor102.length) * 0.5) + ceil32(uint255(stor102.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor102.length), data=mem[128 len ceil32(uint255(stor102.length) * 0.5)], mem[(2 * ceil32(uint255(stor102.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor102.length) * 0.5)]), 
    if bool(stor102.length) == stor102.length.field_1 < 32:
        revert with 0, 34
    if bool(stor102.length):
        if bool(stor102.length) == uint255(stor102.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor102.length):
            if 31 < uint255(stor102.length) * 0.5:
                mem[128] = uint256(stor102.field_0)
                idx = 128
                s = 0
                while (uint255(stor102.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor102[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1)])
            mem[128] = 256 * stor102.length.field_8
    else:
        if bool(stor102.length) == stor102.length.field_1 < 32:
            revert with 0, 34
        if stor102.length.field_1:
            if 31 < stor102.length.field_1:
                mem[128] = uint256(stor102.field_0)
                idx = 128
                s = 0
                while stor102.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor102[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1)])
            mem[128] = 256 * stor102.length.field_8
    mem[ceil32(stor102.length.field_1) + 192 len ceil32(stor102.length.field_1)] = mem[128 len ceil32(stor102.length.field_1)]
    if ceil32(stor102.length.field_1) > stor102.length.field_1:
        mem[stor102.length.field_1 + ceil32(stor102.length.field_1) + 192] = 0
    return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1)], mem[(2 * ceil32(stor102.length.field_1)) + 192 len 2 * ceil32(stor102.length.field_1)]), 
}

function sub_8eaf435b(?) payable {
    require calldata.size - 4 >= 96
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    if sub_be75288d[arg1].field_0:
        if sub_be75288d[arg1].field_0 == uint255(sub_be75288d[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        mem[320] = uint255(sub_be75288d[arg1].field_0) * 0.5
        if sub_be75288d[arg1].field_0:
            if sub_be75288d[arg1].field_0 == uint255(sub_be75288d[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, sub_be75288d[arg1].field_0):
                mem[96] = 320
                mem[128] = sub_be75288d[arg1].field_256
                mem[160] = sub_be75288d[arg1].field_512
                mem[192] = sub_be75288d[arg1].field_768
                mem[224] = sub_be75288d[arg1].field_1024
                mem[256] = sub_be75288d[arg1].field_1280
                mem[288] = sub_be75288d[arg1].field_1536
                if arg1 <= 0:
                    revert with 0, 'Invalid tier'
                if arg1 >= 4:
                    revert with 0, 'Invalid tier'
                if sub_2b1331a8[msg.sender][arg1] > !arg2:
                    revert with 0, 17
                if sub_2b1331a8[msg.sender][arg1] + arg2 > sub_be75288d[arg1].field_256:
                    revert with 0, 'Too many nodes of this tier'
                if sub_be75288d[arg1].field_768 and arg2 > -1 / sub_be75288d[arg1].field_768:
                    revert with 0, 17
                if sub_be75288d[arg1].field_768 * arg2 != msg.value:
                    revert with 0, 'Incorrect amount of AVAX'
                if arg2 <= 0:
                    revert with 0, 'Must create at least one'
                if presaleStartTime > block.timestamp:
                    revert with 0, 'Not within presale time window'
                if block.timestamp > presaleEndTime:
                    revert with 0, 'Not within presale time window'
                mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 352] = arg3.length
                mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 384 len arg3.length] = arg3[all]
                mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + arg3.length + 384] = 0
                mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 416] = '\x19Ethereum Signed Message:\n32'
                mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 444] = msg.sender
                mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 384] = 60
                _166 = sha3(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 416 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + arg3.length + 416 len -arg3.length + ceil32(arg3.length)]])
                if 65 == arg3.length:
                    if mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                        revert with 0, 'ECDSA: invalid signature 's' value'
                    revert with 0, 'ECDSA: invalid signature 'v' value'
                if arg3.length != 64:
                    revert with 0, 'ECDSA: invalid signature length'
                if 27 > !(bool(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416]) >> 255):
                    revert with 0, 17
                if uint255(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                    revert with 0, 'ECDSA: invalid signature 's' value'
                if 27 == uint8((bool(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416]) >> 255) + 27):
                    mem[64] = ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 508
                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 508] = sha3(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 416 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + arg3.length + 416 len -arg3.length + ceil32(arg3.length)]])
                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 540] = uint8((bool(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416]) >> 255) + 27)
                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 572] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 384]
                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 604] = uint255(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416])
                    signer = erecover(_166, (bool(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416]) >> 255) + 27 << 248, mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 384], uint255(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416])) 
                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 476] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not address(signer):
                        revert with 0, 'ECDSA: invalid signature'
                    if address(signer) != _signerAddress:
                        revert with 0, 'Whitelist signature incorrect.'
                    mem[0] = arg1
                    mem[32] = sha3(msg.sender, 202)
                    if sub_2b1331a8[msg.sender][arg1] > !arg2:
                        revert with 0, 17
                    sub_2b1331a8[msg.sender][arg1] += arg2
                    idx = 0
                    while idx <= arg2:
                        if numMinted > -2:
                            revert with 0, 17
                        numMinted++
                        _2053 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2053] = 0
                        if not msg.sender:
                            revert with 0, 'ERC721: mint to the zero address'
                        if ownerOf[stor203]:
                            revert with 0, 'ERC721: token already minted'
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)]++
                        mem[0] = numMinted
                        mem[32] = 103
                        ownerOf[stor203] = msg.sender
                        emit Transfer(0, msg.sender, numMinted);
                        if not ext_code.size(msg.sender):
                            _2345 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_2345] = arg1
                            mem[_2345 + 32] = 500
                            mem[_2345 + 64] = block.timestamp
                        else:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = numMinted
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _2053 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(msg.sender)
                            call msg.sender.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, 0, numMinted, 128, 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if not return_data.size:
                                    if not mem[96]:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    revert with memory
                                      from 128
                                       len mem[96]
                                if not return_data.size:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                revert with ext_call.return_data[0 len return_data.size]
                            _3665 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3665] == Mask(32, 224, mem[_3665])
                            if Mask(32, 224, mem[_3665]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            _4121 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_4121] = arg1
                            mem[_4121 + 32] = 500
                            mem[_4121 + 64] = block.timestamp
                        mem[0] = numMinted
                        mem[32] = 201
                        stor201[stor203].field_0 = arg1
                        stor201[stor203].field_256 = 500
                        stor201[stor203].field_512 = block.timestamp
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    if uint8((bool(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416]) >> 255) + 27) != 28:
                        revert with 0, 'ECDSA: invalid signature 'v' value'
                    mem[64] = ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 508
                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 508] = sha3(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 416 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + arg3.length + 416 len -arg3.length + ceil32(arg3.length)]])
                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 540] = uint8((bool(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416]) >> 255) + 27)
                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 572] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 384]
                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 604] = uint255(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416])
                    signer = erecover(_166, (bool(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416]) >> 255) + 27 << 248, mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 384], uint255(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416])) 
                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 476] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not address(signer):
                        revert with 0, 'ECDSA: invalid signature'
                    if address(signer) != _signerAddress:
                        revert with 0, 'Whitelist signature incorrect.'
                    mem[0] = arg1
                    mem[32] = sha3(msg.sender, 202)
                    if sub_2b1331a8[msg.sender][arg1] > !arg2:
                        revert with 0, 17
                    sub_2b1331a8[msg.sender][arg1] += arg2
                    idx = 0
                    while idx <= arg2:
                        if numMinted > -2:
                            revert with 0, 17
                        numMinted++
                        _2054 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2054] = 0
                        if not msg.sender:
                            revert with 0, 'ERC721: mint to the zero address'
                        if ownerOf[stor203]:
                            revert with 0, 'ERC721: token already minted'
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)]++
                        mem[0] = numMinted
                        mem[32] = 103
                        ownerOf[stor203] = msg.sender
                        emit Transfer(0, msg.sender, numMinted);
                        if not ext_code.size(msg.sender):
                            _2350 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_2350] = arg1
                            mem[_2350 + 32] = 500
                            mem[_2350 + 64] = block.timestamp
                        else:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = numMinted
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _2054 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(msg.sender)
                            call msg.sender.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, 0, numMinted, 128, 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if not return_data.size:
                                    if not mem[96]:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    revert with memory
                                      from 128
                                       len mem[96]
                                if not return_data.size:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                revert with ext_call.return_data[0 len return_data.size]
                            _3667 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3667] == Mask(32, 224, mem[_3667])
                            if Mask(32, 224, mem[_3667]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            _4133 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_4133] = arg1
                            mem[_4133 + 32] = 500
                            mem[_4133 + 64] = block.timestamp
                        mem[0] = numMinted
                        mem[32] = 201
                        stor201[stor203].field_0 = arg1
                        stor201[stor203].field_256 = 500
                        stor201[stor203].field_512 = block.timestamp
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
            else:
                if 31 >= uint255(sub_be75288d[arg1].field_0) * 0.5:
                    mem[352] = 256 * sub_be75288d[arg1].field_8
                    mem[96] = 320
                    mem[128] = sub_be75288d[arg1].field_256
                    mem[160] = sub_be75288d[arg1].field_512
                    mem[192] = sub_be75288d[arg1].field_768
                    mem[224] = sub_be75288d[arg1].field_1024
                    mem[256] = sub_be75288d[arg1].field_1280
                    mem[288] = sub_be75288d[arg1].field_1536
                    if arg1 <= 0:
                        revert with 0, 'Invalid tier'
                    if arg1 >= 4:
                        revert with 0, 'Invalid tier'
                    if sub_2b1331a8[msg.sender][arg1] > !arg2:
                        revert with 0, 17
                    if sub_2b1331a8[msg.sender][arg1] + arg2 > sub_be75288d[arg1].field_256:
                        revert with 0, 'Too many nodes of this tier'
                    if sub_be75288d[arg1].field_768 and arg2 > -1 / sub_be75288d[arg1].field_768:
                        revert with 0, 17
                    if sub_be75288d[arg1].field_768 * arg2 != msg.value:
                        revert with 0, 'Incorrect amount of AVAX'
                    if arg2 <= 0:
                        revert with 0, 'Must create at least one'
                    if presaleStartTime > block.timestamp:
                        revert with 0, 'Not within presale time window'
                    if block.timestamp > presaleEndTime:
                        revert with 0, 'Not within presale time window'
                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 352] = arg3.length
                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 384 len arg3.length] = arg3[all]
                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + arg3.length + 384] = 0
                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 416] = '\x19Ethereum Signed Message:\n32'
                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 444] = msg.sender
                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 384] = 60
                    _215 = sha3(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 416 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + arg3.length + 416 len -arg3.length + ceil32(arg3.length)]])
                    if 65 == arg3.length:
                        if mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                            revert with 0, 'ECDSA: invalid signature 's' value'
                        revert with 0, 'ECDSA: invalid signature 'v' value'
                    if arg3.length != 64:
                        revert with 0, 'ECDSA: invalid signature length'
                    if 27 > !(bool(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416]) >> 255):
                        revert with 0, 17
                    if uint255(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                        revert with 0, 'ECDSA: invalid signature 's' value'
                    if 27 == uint8((bool(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416]) >> 255) + 27):
                        mem[64] = ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 508
                        mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 508] = sha3(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 416 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + arg3.length + 416 len -arg3.length + ceil32(arg3.length)]])
                        mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 540] = uint8((bool(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416]) >> 255) + 27)
                        mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 572] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 384]
                        mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 604] = uint255(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416])
                        signer = erecover(_215, (bool(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416]) >> 255) + 27 << 248, mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 384], uint255(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416])) 
                        mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 476] = signer
                        if not erecover.result:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not address(signer):
                            revert with 0, 'ECDSA: invalid signature'
                        if address(signer) != _signerAddress:
                            revert with 0, 'Whitelist signature incorrect.'
                        mem[0] = arg1
                        mem[32] = sha3(msg.sender, 202)
                        if sub_2b1331a8[msg.sender][arg1] > !arg2:
                            revert with 0, 17
                        sub_2b1331a8[msg.sender][arg1] += arg2
                        idx = 0
                        while idx <= arg2:
                            if numMinted > -2:
                                revert with 0, 17
                            numMinted++
                            _2060 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2060] = 0
                            if not msg.sender:
                                revert with 0, 'ERC721: mint to the zero address'
                            if ownerOf[stor203]:
                                revert with 0, 'ERC721: token already minted'
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)]++
                            mem[0] = numMinted
                            mem[32] = 103
                            ownerOf[stor203] = msg.sender
                            emit Transfer(0, msg.sender, numMinted);
                            if not ext_code.size(msg.sender):
                                _2355 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_2355] = arg1
                                mem[_2355 + 32] = 500
                                mem[_2355 + 64] = block.timestamp
                            else:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = numMinted
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[s + mem[64] + 164] = mem[s + _2060 + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, numMinted, 128, 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if not return_data.size:
                                        if not mem[96]:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    if not return_data.size:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3669 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3669] == Mask(32, 224, mem[_3669])
                                if Mask(32, 224, mem[_3669]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                _4145 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_4145] = arg1
                                mem[_4145 + 32] = 500
                                mem[_4145 + 64] = block.timestamp
                            mem[0] = numMinted
                            mem[32] = 201
                            stor201[stor203].field_0 = arg1
                            stor201[stor203].field_256 = 500
                            stor201[stor203].field_512 = block.timestamp
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        if uint8((bool(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416]) >> 255) + 27) != 28:
                            revert with 0, 'ECDSA: invalid signature 'v' value'
                        mem[64] = ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 508
                        mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 508] = sha3(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 416 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + arg3.length + 416 len -arg3.length + ceil32(arg3.length)]])
                        mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 540] = uint8((bool(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416]) >> 255) + 27)
                        mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 572] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 384]
                        mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 604] = uint255(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416])
                        signer = erecover(_215, (bool(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416]) >> 255) + 27 << 248, mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 384], uint255(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416])) 
                        mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 476] = signer
                        if not erecover.result:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not address(signer):
                            revert with 0, 'ECDSA: invalid signature'
                        if address(signer) != _signerAddress:
                            revert with 0, 'Whitelist signature incorrect.'
                        mem[0] = arg1
                        mem[32] = sha3(msg.sender, 202)
                        if sub_2b1331a8[msg.sender][arg1] > !arg2:
                            revert with 0, 17
                        sub_2b1331a8[msg.sender][arg1] += arg2
                        idx = 0
                        while idx <= arg2:
                            if numMinted > -2:
                                revert with 0, 17
                            numMinted++
                            _2061 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2061] = 0
                            if not msg.sender:
                                revert with 0, 'ERC721: mint to the zero address'
                            if ownerOf[stor203]:
                                revert with 0, 'ERC721: token already minted'
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)]++
                            mem[0] = numMinted
                            mem[32] = 103
                            ownerOf[stor203] = msg.sender
                            emit Transfer(0, msg.sender, numMinted);
                            if not ext_code.size(msg.sender):
                                _2360 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_2360] = arg1
                                mem[_2360 + 32] = 500
                                mem[_2360 + 64] = block.timestamp
                            else:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = numMinted
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[s + mem[64] + 164] = mem[s + _2061 + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, numMinted, 128, 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if not return_data.size:
                                        if not mem[96]:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    if not return_data.size:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3671 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3671] == Mask(32, 224, mem[_3671])
                                if Mask(32, 224, mem[_3671]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                _4157 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_4157] = arg1
                                mem[_4157 + 32] = 500
                                mem[_4157 + 64] = block.timestamp
                            mem[0] = numMinted
                            mem[32] = 201
                            stor201[stor203].field_0 = arg1
                            stor201[stor203].field_256 = 500
                            stor201[stor203].field_512 = block.timestamp
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                else:
                    mem[352] = sub_be75288d[arg1].field_0
                    idx = 352
                    s = 0
                    while (uint255(sub_be75288d[arg1].field_0) * 0.5) + 320 > idx:
                        mem[idx + 32] = sub_be75288d[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[96] = 320
                    mem[128] = sub_be75288d[arg1].field_256
                    mem[160] = sub_be75288d[arg1].field_512
                    mem[192] = sub_be75288d[arg1].field_768
                    mem[224] = sub_be75288d[arg1].field_1024
                    mem[256] = sub_be75288d[arg1].field_1280
                    mem[288] = sub_be75288d[arg1].field_1536
                    if arg1 <= 0:
                        revert with 0, 'Invalid tier'
                    if arg1 >= 4:
                        revert with 0, 'Invalid tier'
                    if sub_2b1331a8[msg.sender][arg1] > !arg2:
                        revert with 0, 17
                    if sub_2b1331a8[msg.sender][arg1] + arg2 > sub_be75288d[arg1].field_256:
                        revert with 0, 'Too many nodes of this tier'
                    if sub_be75288d[arg1].field_768 and arg2 > -1 / sub_be75288d[arg1].field_768:
                        revert with 0, 17
                    if sub_be75288d[arg1].field_768 * arg2 != msg.value:
                        revert with 0, 'Incorrect amount of AVAX'
                    if arg2 <= 0:
                        revert with 0, 'Must create at least one'
                    if presaleStartTime > block.timestamp:
                        revert with 0, 'Not within presale time window'
                    if block.timestamp > presaleEndTime:
                        revert with 0, 'Not within presale time window'
                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 352] = arg3.length
                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 384 len arg3.length] = arg3[all]
                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + arg3.length + 384] = 0
                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 416] = '\x19Ethereum Signed Message:\n32'
                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 444] = msg.sender
                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 384] = 60
                    _2271 = sha3(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 416 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + arg3.length + 416 len -arg3.length + ceil32(arg3.length)]])
                    if 65 == arg3.length:
                        if mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                            revert with 0, 'ECDSA: invalid signature 's' value'
                        revert with 0, 'ECDSA: invalid signature 'v' value'
                    if arg3.length != 64:
                        revert with 0, 'ECDSA: invalid signature length'
                    if 27 > !(bool(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416]) >> 255):
                        revert with 0, 17
                    if uint255(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                        revert with 0, 'ECDSA: invalid signature 's' value'
                    if 27 == uint8((bool(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416]) >> 255) + 27):
                        mem[64] = ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 508
                        mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 508] = sha3(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 416 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + arg3.length + 416 len -arg3.length + ceil32(arg3.length)]])
                        mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 540] = uint8((bool(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416]) >> 255) + 27)
                        mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 572] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 384]
                        mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 604] = uint255(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416])
                        signer = erecover(_2271, (bool(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416]) >> 255) + 27 << 248, mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 384], uint255(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416])) 
                        mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 476] = signer
                        if not erecover.result:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not address(signer):
                            revert with 0, 'ECDSA: invalid signature'
                        if address(signer) != _signerAddress:
                            revert with 0, 'Whitelist signature incorrect.'
                        mem[0] = arg1
                        mem[32] = sha3(msg.sender, 202)
                        if sub_2b1331a8[msg.sender][arg1] > !arg2:
                            revert with 0, 17
                        sub_2b1331a8[msg.sender][arg1] += arg2
                        idx = 0
                        while idx <= arg2:
                            if numMinted > -2:
                                revert with 0, 17
                            numMinted++
                            _3629 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3629] = 0
                            if not msg.sender:
                                revert with 0, 'ERC721: mint to the zero address'
                            if ownerOf[stor203]:
                                revert with 0, 'ERC721: token already minted'
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)]++
                            mem[0] = numMinted
                            mem[32] = 103
                            ownerOf[stor203] = msg.sender
                            emit Transfer(0, msg.sender, numMinted);
                            if not ext_code.size(msg.sender):
                                _4321 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_4321] = arg1
                                mem[_4321 + 32] = 500
                                mem[_4321 + 64] = block.timestamp
                            else:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = numMinted
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[s + mem[64] + 164] = mem[s + _3629 + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, numMinted, 128, 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if not return_data.size:
                                        if not mem[96]:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    if not return_data.size:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4697 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4697] == Mask(32, 224, mem[_4697])
                                if Mask(32, 224, mem[_4697]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                _4889 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_4889] = arg1
                                mem[_4889 + 32] = 500
                                mem[_4889 + 64] = block.timestamp
                            mem[0] = numMinted
                            mem[32] = 201
                            stor201[stor203].field_0 = arg1
                            stor201[stor203].field_256 = 500
                            stor201[stor203].field_512 = block.timestamp
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        if uint8((bool(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416]) >> 255) + 27) != 28:
                            revert with 0, 'ECDSA: invalid signature 'v' value'
                        mem[64] = ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 508
                        mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 508] = sha3(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 416 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + arg3.length + 416 len -arg3.length + ceil32(arg3.length)]])
                        mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 540] = uint8((bool(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416]) >> 255) + 27)
                        mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 572] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 384]
                        mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 604] = uint255(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416])
                        signer = erecover(_2271, (bool(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416]) >> 255) + 27 << 248, mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 384], uint255(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416])) 
                        mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 476] = signer
                        if not erecover.result:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not address(signer):
                            revert with 0, 'ECDSA: invalid signature'
                        if address(signer) != _signerAddress:
                            revert with 0, 'Whitelist signature incorrect.'
                        mem[0] = arg1
                        mem[32] = sha3(msg.sender, 202)
                        if sub_2b1331a8[msg.sender][arg1] > !arg2:
                            revert with 0, 17
                        sub_2b1331a8[msg.sender][arg1] += arg2
                        idx = 0
                        while idx <= arg2:
                            if numMinted > -2:
                                revert with 0, 17
                            numMinted++
                            _3630 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3630] = 0
                            if not msg.sender:
                                revert with 0, 'ERC721: mint to the zero address'
                            if ownerOf[stor203]:
                                revert with 0, 'ERC721: token already minted'
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)]++
                            mem[0] = numMinted
                            mem[32] = 103
                            ownerOf[stor203] = msg.sender
                            emit Transfer(0, msg.sender, numMinted);
                            if not ext_code.size(msg.sender):
                                _4326 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_4326] = arg1
                                mem[_4326 + 32] = 500
                                mem[_4326 + 64] = block.timestamp
                            else:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = numMinted
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[s + mem[64] + 164] = mem[s + _3630 + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, numMinted, 128, 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if not return_data.size:
                                        if not mem[96]:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    if not return_data.size:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4699 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4699] == Mask(32, 224, mem[_4699])
                                if Mask(32, 224, mem[_4699]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                _4901 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_4901] = arg1
                                mem[_4901 + 32] = 500
                                mem[_4901 + 64] = block.timestamp
                            mem[0] = numMinted
                            mem[32] = 201
                            stor201[stor203].field_0 = arg1
                            stor201[stor203].field_256 = 500
                            stor201[stor203].field_512 = block.timestamp
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
        else:
            if sub_be75288d[arg1].field_0 == sub_be75288d[arg1].field_1 < 32:
                revert with 0, 34
            if not sub_be75288d[arg1].field_1:
                mem[96] = 320
                mem[128] = sub_be75288d[arg1].field_256
                mem[160] = sub_be75288d[arg1].field_512
                mem[192] = sub_be75288d[arg1].field_768
                mem[224] = sub_be75288d[arg1].field_1024
                mem[256] = sub_be75288d[arg1].field_1280
                mem[288] = sub_be75288d[arg1].field_1536
                if arg1 <= 0:
                    revert with 0, 'Invalid tier'
                if arg1 >= 4:
                    revert with 0, 'Invalid tier'
                if sub_2b1331a8[msg.sender][arg1] > !arg2:
                    revert with 0, 17
                if sub_2b1331a8[msg.sender][arg1] + arg2 > sub_be75288d[arg1].field_256:
                    revert with 0, 'Too many nodes of this tier'
                if sub_be75288d[arg1].field_768 and arg2 > -1 / sub_be75288d[arg1].field_768:
                    revert with 0, 17
                if sub_be75288d[arg1].field_768 * arg2 != msg.value:
                    revert with 0, 'Incorrect amount of AVAX'
                if arg2 <= 0:
                    revert with 0, 'Must create at least one'
                if presaleStartTime > block.timestamp:
                    revert with 0, 'Not within presale time window'
                if block.timestamp > presaleEndTime:
                    revert with 0, 'Not within presale time window'
                mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 352] = arg3.length
                mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 384 len arg3.length] = arg3[all]
                mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + arg3.length + 384] = 0
                mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 416] = '\x19Ethereum Signed Message:\n32'
                mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 444] = msg.sender
                mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 384] = 60
                _193 = sha3(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 416 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + arg3.length + 416 len -arg3.length + ceil32(arg3.length)]])
                if 65 == arg3.length:
                    if mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                        revert with 0, 'ECDSA: invalid signature 's' value'
                    revert with 0, 'ECDSA: invalid signature 'v' value'
                if arg3.length != 64:
                    revert with 0, 'ECDSA: invalid signature length'
                if 27 > !(bool(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416]) >> 255):
                    revert with 0, 17
                if uint255(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                    revert with 0, 'ECDSA: invalid signature 's' value'
                if 27 == uint8((bool(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416]) >> 255) + 27):
                    mem[64] = ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 508
                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 508] = sha3(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 416 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + arg3.length + 416 len -arg3.length + ceil32(arg3.length)]])
                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 540] = uint8((bool(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416]) >> 255) + 27)
                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 572] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 384]
                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 604] = uint255(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416])
                    signer = erecover(_193, (bool(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416]) >> 255) + 27 << 248, mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 384], uint255(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416])) 
                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 476] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not address(signer):
                        revert with 0, 'ECDSA: invalid signature'
                    if address(signer) != _signerAddress:
                        revert with 0, 'Whitelist signature incorrect.'
                    mem[0] = arg1
                    mem[32] = sha3(msg.sender, 202)
                    if sub_2b1331a8[msg.sender][arg1] > !arg2:
                        revert with 0, 17
                    sub_2b1331a8[msg.sender][arg1] += arg2
                    idx = 0
                    while idx <= arg2:
                        if numMinted > -2:
                            revert with 0, 17
                        numMinted++
                        _2062 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2062] = 0
                        if not msg.sender:
                            revert with 0, 'ERC721: mint to the zero address'
                        if ownerOf[stor203]:
                            revert with 0, 'ERC721: token already minted'
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)]++
                        mem[0] = numMinted
                        mem[32] = 103
                        ownerOf[stor203] = msg.sender
                        emit Transfer(0, msg.sender, numMinted);
                        if not ext_code.size(msg.sender):
                            _2365 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_2365] = arg1
                            mem[_2365 + 32] = 500
                            mem[_2365 + 64] = block.timestamp
                        else:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = numMinted
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _2062 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(msg.sender)
                            call msg.sender.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, 0, numMinted, 128, 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if not return_data.size:
                                    if not mem[96]:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    revert with memory
                                      from 128
                                       len mem[96]
                                if not return_data.size:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                revert with ext_call.return_data[0 len return_data.size]
                            _3673 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3673] == Mask(32, 224, mem[_3673])
                            if Mask(32, 224, mem[_3673]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            _4169 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_4169] = arg1
                            mem[_4169 + 32] = 500
                            mem[_4169 + 64] = block.timestamp
                        mem[0] = numMinted
                        mem[32] = 201
                        stor201[stor203].field_0 = arg1
                        stor201[stor203].field_256 = 500
                        stor201[stor203].field_512 = block.timestamp
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    if uint8((bool(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416]) >> 255) + 27) != 28:
                        revert with 0, 'ECDSA: invalid signature 'v' value'
                    mem[64] = ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 508
                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 508] = sha3(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 416 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + arg3.length + 416 len -arg3.length + ceil32(arg3.length)]])
                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 540] = uint8((bool(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416]) >> 255) + 27)
                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 572] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 384]
                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 604] = uint255(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416])
                    signer = erecover(_193, (bool(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416]) >> 255) + 27 << 248, mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 384], uint255(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416])) 
                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 476] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not address(signer):
                        revert with 0, 'ECDSA: invalid signature'
                    if address(signer) != _signerAddress:
                        revert with 0, 'Whitelist signature incorrect.'
                    mem[0] = arg1
                    mem[32] = sha3(msg.sender, 202)
                    if sub_2b1331a8[msg.sender][arg1] > !arg2:
                        revert with 0, 17
                    sub_2b1331a8[msg.sender][arg1] += arg2
                    idx = 0
                    while idx <= arg2:
                        if numMinted > -2:
                            revert with 0, 17
                        numMinted++
                        _2063 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2063] = 0
                        if not msg.sender:
                            revert with 0, 'ERC721: mint to the zero address'
                        if ownerOf[stor203]:
                            revert with 0, 'ERC721: token already minted'
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)]++
                        mem[0] = numMinted
                        mem[32] = 103
                        ownerOf[stor203] = msg.sender
                        emit Transfer(0, msg.sender, numMinted);
                        if not ext_code.size(msg.sender):
                            _2370 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_2370] = arg1
                            mem[_2370 + 32] = 500
                            mem[_2370 + 64] = block.timestamp
                        else:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = numMinted
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _2063 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(msg.sender)
                            call msg.sender.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, 0, numMinted, 128, 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if not return_data.size:
                                    if not mem[96]:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    revert with memory
                                      from 128
                                       len mem[96]
                                if not return_data.size:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                revert with ext_call.return_data[0 len return_data.size]
                            _3675 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3675] == Mask(32, 224, mem[_3675])
                            if Mask(32, 224, mem[_3675]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            _4181 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_4181] = arg1
                            mem[_4181 + 32] = 500
                            mem[_4181 + 64] = block.timestamp
                        mem[0] = numMinted
                        mem[32] = 201
                        stor201[stor203].field_0 = arg1
                        stor201[stor203].field_256 = 500
                        stor201[stor203].field_512 = block.timestamp
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
            else:
                if 31 >= sub_be75288d[arg1].field_1:
                    mem[352] = 256 * sub_be75288d[arg1].field_8
                    mem[96] = 320
                    mem[128] = sub_be75288d[arg1].field_256
                    mem[160] = sub_be75288d[arg1].field_512
                    mem[192] = sub_be75288d[arg1].field_768
                    mem[224] = sub_be75288d[arg1].field_1024
                    mem[256] = sub_be75288d[arg1].field_1280
                    mem[288] = sub_be75288d[arg1].field_1536
                    if arg1 <= 0:
                        revert with 0, 'Invalid tier'
                    if arg1 >= 4:
                        revert with 0, 'Invalid tier'
                    if sub_2b1331a8[msg.sender][arg1] > !arg2:
                        revert with 0, 17
                    if sub_2b1331a8[msg.sender][arg1] + arg2 > sub_be75288d[arg1].field_256:
                        revert with 0, 'Too many nodes of this tier'
                    if sub_be75288d[arg1].field_768 and arg2 > -1 / sub_be75288d[arg1].field_768:
                        revert with 0, 17
                    if sub_be75288d[arg1].field_768 * arg2 != msg.value:
                        revert with 0, 'Incorrect amount of AVAX'
                    if arg2 <= 0:
                        revert with 0, 'Must create at least one'
                    if presaleStartTime > block.timestamp:
                        revert with 0, 'Not within presale time window'
                    if block.timestamp > presaleEndTime:
                        revert with 0, 'Not within presale time window'
                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 352] = arg3.length
                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 384 len arg3.length] = arg3[all]
                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + arg3.length + 384] = 0
                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 416] = '\x19Ethereum Signed Message:\n32'
                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 444] = msg.sender
                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 384] = 60
                    _246 = sha3(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 416 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + arg3.length + 416 len -arg3.length + ceil32(arg3.length)]])
                    if 65 == arg3.length:
                        if mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                            revert with 0, 'ECDSA: invalid signature 's' value'
                        revert with 0, 'ECDSA: invalid signature 'v' value'
                    if arg3.length != 64:
                        revert with 0, 'ECDSA: invalid signature length'
                    if 27 > !(bool(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416]) >> 255):
                        revert with 0, 17
                    if uint255(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                        revert with 0, 'ECDSA: invalid signature 's' value'
                    if 27 == uint8((bool(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416]) >> 255) + 27):
                        mem[64] = ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 508
                        mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 508] = sha3(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 416 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + arg3.length + 416 len -arg3.length + ceil32(arg3.length)]])
                        mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 540] = uint8((bool(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416]) >> 255) + 27)
                        mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 572] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 384]
                        mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 604] = uint255(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416])
                        signer = erecover(_246, (bool(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416]) >> 255) + 27 << 248, mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 384], uint255(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416])) 
                        mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 476] = signer
                        if not erecover.result:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not address(signer):
                            revert with 0, 'ECDSA: invalid signature'
                        if address(signer) != _signerAddress:
                            revert with 0, 'Whitelist signature incorrect.'
                        mem[0] = arg1
                        mem[32] = sha3(msg.sender, 202)
                        if sub_2b1331a8[msg.sender][arg1] > !arg2:
                            revert with 0, 17
                        sub_2b1331a8[msg.sender][arg1] += arg2
                        idx = 0
                        while idx <= arg2:
                            if numMinted > -2:
                                revert with 0, 17
                            numMinted++
                            _2069 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2069] = 0
                            if not msg.sender:
                                revert with 0, 'ERC721: mint to the zero address'
                            if ownerOf[stor203]:
                                revert with 0, 'ERC721: token already minted'
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)]++
                            mem[0] = numMinted
                            mem[32] = 103
                            ownerOf[stor203] = msg.sender
                            emit Transfer(0, msg.sender, numMinted);
                            if not ext_code.size(msg.sender):
                                _2375 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_2375] = arg1
                                mem[_2375 + 32] = 500
                                mem[_2375 + 64] = block.timestamp
                            else:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = numMinted
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[s + mem[64] + 164] = mem[s + _2069 + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, numMinted, 128, 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if not return_data.size:
                                        if not mem[96]:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    if not return_data.size:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3677 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3677] == Mask(32, 224, mem[_3677])
                                if Mask(32, 224, mem[_3677]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                _4193 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_4193] = arg1
                                mem[_4193 + 32] = 500
                                mem[_4193 + 64] = block.timestamp
                            mem[0] = numMinted
                            mem[32] = 201
                            stor201[stor203].field_0 = arg1
                            stor201[stor203].field_256 = 500
                            stor201[stor203].field_512 = block.timestamp
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        if uint8((bool(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416]) >> 255) + 27) != 28:
                            revert with 0, 'ECDSA: invalid signature 'v' value'
                        mem[64] = ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 508
                        mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 508] = sha3(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 416 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + arg3.length + 416 len -arg3.length + ceil32(arg3.length)]])
                        mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 540] = uint8((bool(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416]) >> 255) + 27)
                        mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 572] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 384]
                        mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 604] = uint255(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416])
                        signer = erecover(_246, (bool(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416]) >> 255) + 27 << 248, mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 384], uint255(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416])) 
                        mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 476] = signer
                        if not erecover.result:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not address(signer):
                            revert with 0, 'ECDSA: invalid signature'
                        if address(signer) != _signerAddress:
                            revert with 0, 'Whitelist signature incorrect.'
                        mem[0] = arg1
                        mem[32] = sha3(msg.sender, 202)
                        if sub_2b1331a8[msg.sender][arg1] > !arg2:
                            revert with 0, 17
                        sub_2b1331a8[msg.sender][arg1] += arg2
                        idx = 0
                        while idx <= arg2:
                            if numMinted > -2:
                                revert with 0, 17
                            numMinted++
                            _2070 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2070] = 0
                            if not msg.sender:
                                revert with 0, 'ERC721: mint to the zero address'
                            if ownerOf[stor203]:
                                revert with 0, 'ERC721: token already minted'
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)]++
                            mem[0] = numMinted
                            mem[32] = 103
                            ownerOf[stor203] = msg.sender
                            emit Transfer(0, msg.sender, numMinted);
                            if not ext_code.size(msg.sender):
                                _2380 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_2380] = arg1
                                mem[_2380 + 32] = 500
                                mem[_2380 + 64] = block.timestamp
                            else:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = numMinted
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[s + mem[64] + 164] = mem[s + _2070 + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, numMinted, 128, 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if not return_data.size:
                                        if not mem[96]:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    if not return_data.size:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3679 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3679] == Mask(32, 224, mem[_3679])
                                if Mask(32, 224, mem[_3679]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                _4205 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_4205] = arg1
                                mem[_4205 + 32] = 500
                                mem[_4205 + 64] = block.timestamp
                            mem[0] = numMinted
                            mem[32] = 201
                            stor201[stor203].field_0 = arg1
                            stor201[stor203].field_256 = 500
                            stor201[stor203].field_512 = block.timestamp
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                else:
                    mem[352] = sub_be75288d[arg1].field_0
                    idx = 352
                    s = 0
                    while sub_be75288d[arg1].field_1 + 320 > idx:
                        mem[idx + 32] = sub_be75288d[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[96] = 320
                    mem[128] = sub_be75288d[arg1].field_256
                    mem[160] = sub_be75288d[arg1].field_512
                    mem[192] = sub_be75288d[arg1].field_768
                    mem[224] = sub_be75288d[arg1].field_1024
                    mem[256] = sub_be75288d[arg1].field_1280
                    mem[288] = sub_be75288d[arg1].field_1536
                    if arg1 <= 0:
                        revert with 0, 'Invalid tier'
                    if arg1 >= 4:
                        revert with 0, 'Invalid tier'
                    if sub_2b1331a8[msg.sender][arg1] > !arg2:
                        revert with 0, 17
                    if sub_2b1331a8[msg.sender][arg1] + arg2 > sub_be75288d[arg1].field_256:
                        revert with 0, 'Too many nodes of this tier'
                    if sub_be75288d[arg1].field_768 and arg2 > -1 / sub_be75288d[arg1].field_768:
                        revert with 0, 17
                    if sub_be75288d[arg1].field_768 * arg2 != msg.value:
                        revert with 0, 'Incorrect amount of AVAX'
                    if arg2 <= 0:
                        revert with 0, 'Must create at least one'
                    if presaleStartTime > block.timestamp:
                        revert with 0, 'Not within presale time window'
                    if block.timestamp > presaleEndTime:
                        revert with 0, 'Not within presale time window'
                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 352] = arg3.length
                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 384 len arg3.length] = arg3[all]
                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + arg3.length + 384] = 0
                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 416] = '\x19Ethereum Signed Message:\n32'
                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 444] = msg.sender
                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 384] = 60
                    _2275 = sha3(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 416 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + arg3.length + 416 len -arg3.length + ceil32(arg3.length)]])
                    if 65 == arg3.length:
                        if mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                            revert with 0, 'ECDSA: invalid signature 's' value'
                        revert with 0, 'ECDSA: invalid signature 'v' value'
                    if arg3.length != 64:
                        revert with 0, 'ECDSA: invalid signature length'
                    if 27 > !(bool(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416]) >> 255):
                        revert with 0, 17
                    if uint255(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                        revert with 0, 'ECDSA: invalid signature 's' value'
                    if 27 == uint8((bool(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416]) >> 255) + 27):
                        mem[64] = ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 508
                        mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 508] = sha3(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 416 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + arg3.length + 416 len -arg3.length + ceil32(arg3.length)]])
                        mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 540] = uint8((bool(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416]) >> 255) + 27)
                        mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 572] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 384]
                        mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 604] = uint255(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416])
                        signer = erecover(_2275, (bool(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416]) >> 255) + 27 << 248, mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 384], uint255(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416])) 
                        mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 476] = signer
                        if not erecover.result:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not address(signer):
                            revert with 0, 'ECDSA: invalid signature'
                        if address(signer) != _signerAddress:
                            revert with 0, 'Whitelist signature incorrect.'
                        mem[0] = arg1
                        mem[32] = sha3(msg.sender, 202)
                        if sub_2b1331a8[msg.sender][arg1] > !arg2:
                            revert with 0, 17
                        sub_2b1331a8[msg.sender][arg1] += arg2
                        idx = 0
                        while idx <= arg2:
                            if numMinted > -2:
                                revert with 0, 17
                            numMinted++
                            _3639 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3639] = 0
                            if not msg.sender:
                                revert with 0, 'ERC721: mint to the zero address'
                            if ownerOf[stor203]:
                                revert with 0, 'ERC721: token already minted'
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)]++
                            mem[0] = numMinted
                            mem[32] = 103
                            ownerOf[stor203] = msg.sender
                            emit Transfer(0, msg.sender, numMinted);
                            if not ext_code.size(msg.sender):
                                _4331 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_4331] = arg1
                                mem[_4331 + 32] = 500
                                mem[_4331 + 64] = block.timestamp
                            else:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = numMinted
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[s + mem[64] + 164] = mem[s + _3639 + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, numMinted, 128, 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if not return_data.size:
                                        if not mem[96]:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    if not return_data.size:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4701 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4701] == Mask(32, 224, mem[_4701])
                                if Mask(32, 224, mem[_4701]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                _4913 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_4913] = arg1
                                mem[_4913 + 32] = 500
                                mem[_4913 + 64] = block.timestamp
                            mem[0] = numMinted
                            mem[32] = 201
                            stor201[stor203].field_0 = arg1
                            stor201[stor203].field_256 = 500
                            stor201[stor203].field_512 = block.timestamp
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        if uint8((bool(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416]) >> 255) + 27) != 28:
                            revert with 0, 'ECDSA: invalid signature 'v' value'
                        mem[64] = ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 508
                        mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 508] = sha3(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 416 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + arg3.length + 416 len -arg3.length + ceil32(arg3.length)]])
                        mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 540] = uint8((bool(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416]) >> 255) + 27)
                        mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 572] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 384]
                        mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 604] = uint255(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416])
                        signer = erecover(_2275, (bool(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416]) >> 255) + 27 << 248, mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 384], uint255(mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 416])) 
                        mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(arg3.length) + 476] = signer
                        if not erecover.result:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not address(signer):
                            revert with 0, 'ECDSA: invalid signature'
                        if address(signer) != _signerAddress:
                            revert with 0, 'Whitelist signature incorrect.'
                        mem[0] = arg1
                        mem[32] = sha3(msg.sender, 202)
                        if sub_2b1331a8[msg.sender][arg1] > !arg2:
                            revert with 0, 17
                        sub_2b1331a8[msg.sender][arg1] += arg2
                        idx = 0
                        while idx <= arg2:
                            if numMinted > -2:
                                revert with 0, 17
                            numMinted++
                            _3640 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3640] = 0
                            if not msg.sender:
                                revert with 0, 'ERC721: mint to the zero address'
                            if ownerOf[stor203]:
                                revert with 0, 'ERC721: token already minted'
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)]++
                            mem[0] = numMinted
                            mem[32] = 103
                            ownerOf[stor203] = msg.sender
                            emit Transfer(0, msg.sender, numMinted);
                            if not ext_code.size(msg.sender):
                                _4336 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_4336] = arg1
                                mem[_4336 + 32] = 500
                                mem[_4336 + 64] = block.timestamp
                            else:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = numMinted
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[s + mem[64] + 164] = mem[s + _3640 + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, numMinted, 128, 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if not return_data.size:
                                        if not mem[96]:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    if not return_data.size:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4703 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4703] == Mask(32, 224, mem[_4703])
                                if Mask(32, 224, mem[_4703]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                _4925 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_4925] = arg1
                                mem[_4925 + 32] = 500
                                mem[_4925 + 64] = block.timestamp
                            mem[0] = numMinted
                            mem[32] = 201
                            stor201[stor203].field_0 = arg1
                            stor201[stor203].field_256 = 500
                            stor201[stor203].field_512 = block.timestamp
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
    else:
        if sub_be75288d[arg1].field_0 == sub_be75288d[arg1].field_1 < 32:
            revert with 0, 34
        mem[320] = sub_be75288d[arg1].field_1
        if sub_be75288d[arg1].field_0:
            if sub_be75288d[arg1].field_0 == uint255(sub_be75288d[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, sub_be75288d[arg1].field_0):
                mem[96] = 320
                mem[128] = sub_be75288d[arg1].field_256
                mem[160] = sub_be75288d[arg1].field_512
                mem[192] = sub_be75288d[arg1].field_768
                mem[224] = sub_be75288d[arg1].field_1024
                mem[256] = sub_be75288d[arg1].field_1280
                mem[288] = sub_be75288d[arg1].field_1536
                if arg1 <= 0:
                    revert with 0, 'Invalid tier'
                if arg1 >= 4:
                    revert with 0, 'Invalid tier'
                if sub_2b1331a8[msg.sender][arg1] > !arg2:
                    revert with 0, 17
                if sub_2b1331a8[msg.sender][arg1] + arg2 > sub_be75288d[arg1].field_256:
                    revert with 0, 'Too many nodes of this tier'
                if sub_be75288d[arg1].field_768 and arg2 > -1 / sub_be75288d[arg1].field_768:
                    revert with 0, 17
                if sub_be75288d[arg1].field_768 * arg2 != msg.value:
                    revert with 0, 'Incorrect amount of AVAX'
                if arg2 <= 0:
                    revert with 0, 'Must create at least one'
                if presaleStartTime > block.timestamp:
                    revert with 0, 'Not within presale time window'
                if block.timestamp > presaleEndTime:
                    revert with 0, 'Not within presale time window'
                mem[ceil32(sub_be75288d[arg1].field_1) + 352] = arg3.length
                mem[ceil32(sub_be75288d[arg1].field_1) + 384 len arg3.length] = arg3[all]
                mem[ceil32(sub_be75288d[arg1].field_1) + arg3.length + 384] = 0
                mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 416] = '\x19Ethereum Signed Message:\n32'
                mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 444] = msg.sender
                mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 384] = 60
                _200 = sha3(mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 416 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(sub_be75288d[arg1].field_1) + arg3.length + 416 len -arg3.length + ceil32(arg3.length)]])
                if 65 == arg3.length:
                    if mem[ceil32(sub_be75288d[arg1].field_1) + 416] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                        revert with 0, 'ECDSA: invalid signature 's' value'
                    revert with 0, 'ECDSA: invalid signature 'v' value'
                if arg3.length != 64:
                    revert with 0, 'ECDSA: invalid signature length'
                if 27 > !(bool(mem[ceil32(sub_be75288d[arg1].field_1) + 416]) >> 255):
                    revert with 0, 17
                if uint255(mem[ceil32(sub_be75288d[arg1].field_1) + 416]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                    revert with 0, 'ECDSA: invalid signature 's' value'
                if 27 == uint8((bool(mem[ceil32(sub_be75288d[arg1].field_1) + 416]) >> 255) + 27):
                    mem[64] = ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 508
                    mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 508] = sha3(mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 416 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(sub_be75288d[arg1].field_1) + arg3.length + 416 len -arg3.length + ceil32(arg3.length)]])
                    mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 540] = uint8((bool(mem[ceil32(sub_be75288d[arg1].field_1) + 416]) >> 255) + 27)
                    mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 572] = mem[ceil32(sub_be75288d[arg1].field_1) + 384]
                    mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 604] = uint255(mem[ceil32(sub_be75288d[arg1].field_1) + 416])
                    signer = erecover(_200, (bool(mem[ceil32(sub_be75288d[arg1].field_1) + 416]) >> 255) + 27 << 248, mem[ceil32(sub_be75288d[arg1].field_1) + 384], uint255(mem[ceil32(sub_be75288d[arg1].field_1) + 416])) 
                    mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 476] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not address(signer):
                        revert with 0, 'ECDSA: invalid signature'
                    if address(signer) != _signerAddress:
                        revert with 0, 'Whitelist signature incorrect.'
                    mem[0] = arg1
                    mem[32] = sha3(msg.sender, 202)
                    if sub_2b1331a8[msg.sender][arg1] > !arg2:
                        revert with 0, 17
                    sub_2b1331a8[msg.sender][arg1] += arg2
                    idx = 0
                    while idx <= arg2:
                        if numMinted > -2:
                            revert with 0, 17
                        numMinted++
                        _2071 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2071] = 0
                        if not msg.sender:
                            revert with 0, 'ERC721: mint to the zero address'
                        if ownerOf[stor203]:
                            revert with 0, 'ERC721: token already minted'
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)]++
                        mem[0] = numMinted
                        mem[32] = 103
                        ownerOf[stor203] = msg.sender
                        emit Transfer(0, msg.sender, numMinted);
                        if not ext_code.size(msg.sender):
                            _2385 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_2385] = arg1
                            mem[_2385 + 32] = 500
                            mem[_2385 + 64] = block.timestamp
                        else:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = numMinted
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _2071 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(msg.sender)
                            call msg.sender.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, 0, numMinted, 128, 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if not return_data.size:
                                    if not mem[96]:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    revert with memory
                                      from 128
                                       len mem[96]
                                if not return_data.size:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                revert with ext_call.return_data[0 len return_data.size]
                            _3681 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3681] == Mask(32, 224, mem[_3681])
                            if Mask(32, 224, mem[_3681]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            _4217 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_4217] = arg1
                            mem[_4217 + 32] = 500
                            mem[_4217 + 64] = block.timestamp
                        mem[0] = numMinted
                        mem[32] = 201
                        stor201[stor203].field_0 = arg1
                        stor201[stor203].field_256 = 500
                        stor201[stor203].field_512 = block.timestamp
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    if uint8((bool(mem[ceil32(sub_be75288d[arg1].field_1) + 416]) >> 255) + 27) != 28:
                        revert with 0, 'ECDSA: invalid signature 'v' value'
                    mem[64] = ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 508
                    mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 508] = sha3(mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 416 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(sub_be75288d[arg1].field_1) + arg3.length + 416 len -arg3.length + ceil32(arg3.length)]])
                    mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 540] = uint8((bool(mem[ceil32(sub_be75288d[arg1].field_1) + 416]) >> 255) + 27)
                    mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 572] = mem[ceil32(sub_be75288d[arg1].field_1) + 384]
                    mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 604] = uint255(mem[ceil32(sub_be75288d[arg1].field_1) + 416])
                    signer = erecover(_200, (bool(mem[ceil32(sub_be75288d[arg1].field_1) + 416]) >> 255) + 27 << 248, mem[ceil32(sub_be75288d[arg1].field_1) + 384], uint255(mem[ceil32(sub_be75288d[arg1].field_1) + 416])) 
                    mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 476] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not address(signer):
                        revert with 0, 'ECDSA: invalid signature'
                    if address(signer) != _signerAddress:
                        revert with 0, 'Whitelist signature incorrect.'
                    mem[0] = arg1
                    mem[32] = sha3(msg.sender, 202)
                    if sub_2b1331a8[msg.sender][arg1] > !arg2:
                        revert with 0, 17
                    sub_2b1331a8[msg.sender][arg1] += arg2
                    idx = 0
                    while idx <= arg2:
                        if numMinted > -2:
                            revert with 0, 17
                        numMinted++
                        _2072 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2072] = 0
                        if not msg.sender:
                            revert with 0, 'ERC721: mint to the zero address'
                        if ownerOf[stor203]:
                            revert with 0, 'ERC721: token already minted'
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)]++
                        mem[0] = numMinted
                        mem[32] = 103
                        ownerOf[stor203] = msg.sender
                        emit Transfer(0, msg.sender, numMinted);
                        if not ext_code.size(msg.sender):
                            _2390 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_2390] = arg1
                            mem[_2390 + 32] = 500
                            mem[_2390 + 64] = block.timestamp
                        else:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = numMinted
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _2072 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(msg.sender)
                            call msg.sender.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, 0, numMinted, 128, 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if not return_data.size:
                                    if not mem[96]:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    revert with memory
                                      from 128
                                       len mem[96]
                                if not return_data.size:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                revert with ext_call.return_data[0 len return_data.size]
                            _3683 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3683] == Mask(32, 224, mem[_3683])
                            if Mask(32, 224, mem[_3683]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            _4229 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_4229] = arg1
                            mem[_4229 + 32] = 500
                            mem[_4229 + 64] = block.timestamp
                        mem[0] = numMinted
                        mem[32] = 201
                        stor201[stor203].field_0 = arg1
                        stor201[stor203].field_256 = 500
                        stor201[stor203].field_512 = block.timestamp
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
            else:
                if 31 >= uint255(sub_be75288d[arg1].field_0) * 0.5:
                    mem[352] = 256 * sub_be75288d[arg1].field_8
                    mem[96] = 320
                    mem[128] = sub_be75288d[arg1].field_256
                    mem[160] = sub_be75288d[arg1].field_512
                    mem[192] = sub_be75288d[arg1].field_768
                    mem[224] = sub_be75288d[arg1].field_1024
                    mem[256] = sub_be75288d[arg1].field_1280
                    mem[288] = sub_be75288d[arg1].field_1536
                    if arg1 <= 0:
                        revert with 0, 'Invalid tier'
                    if arg1 >= 4:
                        revert with 0, 'Invalid tier'
                    if sub_2b1331a8[msg.sender][arg1] > !arg2:
                        revert with 0, 17
                    if sub_2b1331a8[msg.sender][arg1] + arg2 > sub_be75288d[arg1].field_256:
                        revert with 0, 'Too many nodes of this tier'
                    if sub_be75288d[arg1].field_768 and arg2 > -1 / sub_be75288d[arg1].field_768:
                        revert with 0, 17
                    if sub_be75288d[arg1].field_768 * arg2 != msg.value:
                        revert with 0, 'Incorrect amount of AVAX'
                    if arg2 <= 0:
                        revert with 0, 'Must create at least one'
                    if presaleStartTime > block.timestamp:
                        revert with 0, 'Not within presale time window'
                    if block.timestamp > presaleEndTime:
                        revert with 0, 'Not within presale time window'
                    mem[ceil32(sub_be75288d[arg1].field_1) + 352] = arg3.length
                    mem[ceil32(sub_be75288d[arg1].field_1) + 384 len arg3.length] = arg3[all]
                    mem[ceil32(sub_be75288d[arg1].field_1) + arg3.length + 384] = 0
                    mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 416] = '\x19Ethereum Signed Message:\n32'
                    mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 444] = msg.sender
                    mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 384] = 60
                    _252 = sha3(mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 416 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(sub_be75288d[arg1].field_1) + arg3.length + 416 len -arg3.length + ceil32(arg3.length)]])
                    if 65 == arg3.length:
                        if mem[ceil32(sub_be75288d[arg1].field_1) + 416] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                            revert with 0, 'ECDSA: invalid signature 's' value'
                        revert with 0, 'ECDSA: invalid signature 'v' value'
                    if arg3.length != 64:
                        revert with 0, 'ECDSA: invalid signature length'
                    if 27 > !(bool(mem[ceil32(sub_be75288d[arg1].field_1) + 416]) >> 255):
                        revert with 0, 17
                    if uint255(mem[ceil32(sub_be75288d[arg1].field_1) + 416]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                        revert with 0, 'ECDSA: invalid signature 's' value'
                    if 27 == uint8((bool(mem[ceil32(sub_be75288d[arg1].field_1) + 416]) >> 255) + 27):
                        mem[64] = ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 508
                        mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 508] = sha3(mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 416 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(sub_be75288d[arg1].field_1) + arg3.length + 416 len -arg3.length + ceil32(arg3.length)]])
                        mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 540] = uint8((bool(mem[ceil32(sub_be75288d[arg1].field_1) + 416]) >> 255) + 27)
                        mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 572] = mem[ceil32(sub_be75288d[arg1].field_1) + 384]
                        mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 604] = uint255(mem[ceil32(sub_be75288d[arg1].field_1) + 416])
                        signer = erecover(_252, (bool(mem[ceil32(sub_be75288d[arg1].field_1) + 416]) >> 255) + 27 << 248, mem[ceil32(sub_be75288d[arg1].field_1) + 384], uint255(mem[ceil32(sub_be75288d[arg1].field_1) + 416])) 
                        mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 476] = signer
                        if not erecover.result:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not address(signer):
                            revert with 0, 'ECDSA: invalid signature'
                        if address(signer) != _signerAddress:
                            revert with 0, 'Whitelist signature incorrect.'
                        mem[0] = arg1
                        mem[32] = sha3(msg.sender, 202)
                        if sub_2b1331a8[msg.sender][arg1] > !arg2:
                            revert with 0, 17
                        sub_2b1331a8[msg.sender][arg1] += arg2
                        idx = 0
                        while idx <= arg2:
                            if numMinted > -2:
                                revert with 0, 17
                            numMinted++
                            _2078 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2078] = 0
                            if not msg.sender:
                                revert with 0, 'ERC721: mint to the zero address'
                            if ownerOf[stor203]:
                                revert with 0, 'ERC721: token already minted'
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)]++
                            mem[0] = numMinted
                            mem[32] = 103
                            ownerOf[stor203] = msg.sender
                            emit Transfer(0, msg.sender, numMinted);
                            if not ext_code.size(msg.sender):
                                _2395 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_2395] = arg1
                                mem[_2395 + 32] = 500
                                mem[_2395 + 64] = block.timestamp
                            else:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = numMinted
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[s + mem[64] + 164] = mem[s + _2078 + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, numMinted, 128, 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if not return_data.size:
                                        if not mem[96]:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    if not return_data.size:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3685 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3685] == Mask(32, 224, mem[_3685])
                                if Mask(32, 224, mem[_3685]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                _4241 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_4241] = arg1
                                mem[_4241 + 32] = 500
                                mem[_4241 + 64] = block.timestamp
                            mem[0] = numMinted
                            mem[32] = 201
                            stor201[stor203].field_0 = arg1
                            stor201[stor203].field_256 = 500
                            stor201[stor203].field_512 = block.timestamp
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        if uint8((bool(mem[ceil32(sub_be75288d[arg1].field_1) + 416]) >> 255) + 27) != 28:
                            revert with 0, 'ECDSA: invalid signature 'v' value'
                        mem[64] = ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 508
                        mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 508] = sha3(mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 416 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(sub_be75288d[arg1].field_1) + arg3.length + 416 len -arg3.length + ceil32(arg3.length)]])
                        mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 540] = uint8((bool(mem[ceil32(sub_be75288d[arg1].field_1) + 416]) >> 255) + 27)
                        mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 572] = mem[ceil32(sub_be75288d[arg1].field_1) + 384]
                        mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 604] = uint255(mem[ceil32(sub_be75288d[arg1].field_1) + 416])
                        signer = erecover(_252, (bool(mem[ceil32(sub_be75288d[arg1].field_1) + 416]) >> 255) + 27 << 248, mem[ceil32(sub_be75288d[arg1].field_1) + 384], uint255(mem[ceil32(sub_be75288d[arg1].field_1) + 416])) 
                        mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 476] = signer
                        if not erecover.result:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not address(signer):
                            revert with 0, 'ECDSA: invalid signature'
                        if address(signer) != _signerAddress:
                            revert with 0, 'Whitelist signature incorrect.'
                        mem[0] = arg1
                        mem[32] = sha3(msg.sender, 202)
                        if sub_2b1331a8[msg.sender][arg1] > !arg2:
                            revert with 0, 17
                        sub_2b1331a8[msg.sender][arg1] += arg2
                        idx = 0
                        while idx <= arg2:
                            if numMinted > -2:
                                revert with 0, 17
                            numMinted++
                            _2079 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2079] = 0
                            if not msg.sender:
                                revert with 0, 'ERC721: mint to the zero address'
                            if ownerOf[stor203]:
                                revert with 0, 'ERC721: token already minted'
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)]++
                            mem[0] = numMinted
                            mem[32] = 103
                            ownerOf[stor203] = msg.sender
                            emit Transfer(0, msg.sender, numMinted);
                            if not ext_code.size(msg.sender):
                                _2400 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_2400] = arg1
                                mem[_2400 + 32] = 500
                                mem[_2400 + 64] = block.timestamp
                            else:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = numMinted
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[s + mem[64] + 164] = mem[s + _2079 + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, numMinted, 128, 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if not return_data.size:
                                        if not mem[96]:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    if not return_data.size:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3687 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3687] == Mask(32, 224, mem[_3687])
                                if Mask(32, 224, mem[_3687]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                _4253 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_4253] = arg1
                                mem[_4253 + 32] = 500
                                mem[_4253 + 64] = block.timestamp
                            mem[0] = numMinted
                            mem[32] = 201
                            stor201[stor203].field_0 = arg1
                            stor201[stor203].field_256 = 500
                            stor201[stor203].field_512 = block.timestamp
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                else:
                    mem[352] = sub_be75288d[arg1].field_0
                    idx = 352
                    s = 0
                    while (uint255(sub_be75288d[arg1].field_0) * 0.5) + 320 > idx:
                        mem[idx + 32] = sub_be75288d[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[96] = 320
                    mem[128] = sub_be75288d[arg1].field_256
                    mem[160] = sub_be75288d[arg1].field_512
                    mem[192] = sub_be75288d[arg1].field_768
                    mem[224] = sub_be75288d[arg1].field_1024
                    mem[256] = sub_be75288d[arg1].field_1280
                    mem[288] = sub_be75288d[arg1].field_1536
                    if arg1 <= 0:
                        revert with 0, 'Invalid tier'
                    if arg1 >= 4:
                        revert with 0, 'Invalid tier'
                    if sub_2b1331a8[msg.sender][arg1] > !arg2:
                        revert with 0, 17
                    if sub_2b1331a8[msg.sender][arg1] + arg2 > sub_be75288d[arg1].field_256:
                        revert with 0, 'Too many nodes of this tier'
                    if sub_be75288d[arg1].field_768 and arg2 > -1 / sub_be75288d[arg1].field_768:
                        revert with 0, 17
                    if sub_be75288d[arg1].field_768 * arg2 != msg.value:
                        revert with 0, 'Incorrect amount of AVAX'
                    if arg2 <= 0:
                        revert with 0, 'Must create at least one'
                    if presaleStartTime > block.timestamp:
                        revert with 0, 'Not within presale time window'
                    if block.timestamp > presaleEndTime:
                        revert with 0, 'Not within presale time window'
                    mem[ceil32(sub_be75288d[arg1].field_1) + 352] = arg3.length
                    mem[ceil32(sub_be75288d[arg1].field_1) + 384 len arg3.length] = arg3[all]
                    mem[ceil32(sub_be75288d[arg1].field_1) + arg3.length + 384] = 0
                    mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 416] = '\x19Ethereum Signed Message:\n32'
                    mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 444] = msg.sender
                    mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 384] = 60
                    _2279 = sha3(mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 416 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(sub_be75288d[arg1].field_1) + arg3.length + 416 len -arg3.length + ceil32(arg3.length)]])
                    if 65 == arg3.length:
                        if mem[ceil32(sub_be75288d[arg1].field_1) + 416] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                            revert with 0, 'ECDSA: invalid signature 's' value'
                        revert with 0, 'ECDSA: invalid signature 'v' value'
                    if arg3.length != 64:
                        revert with 0, 'ECDSA: invalid signature length'
                    if 27 > !(bool(mem[ceil32(sub_be75288d[arg1].field_1) + 416]) >> 255):
                        revert with 0, 17
                    if uint255(mem[ceil32(sub_be75288d[arg1].field_1) + 416]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                        revert with 0, 'ECDSA: invalid signature 's' value'
                    if 27 == uint8((bool(mem[ceil32(sub_be75288d[arg1].field_1) + 416]) >> 255) + 27):
                        mem[64] = ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 508
                        mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 508] = sha3(mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 416 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(sub_be75288d[arg1].field_1) + arg3.length + 416 len -arg3.length + ceil32(arg3.length)]])
                        mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 540] = uint8((bool(mem[ceil32(sub_be75288d[arg1].field_1) + 416]) >> 255) + 27)
                        mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 572] = mem[ceil32(sub_be75288d[arg1].field_1) + 384]
                        mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 604] = uint255(mem[ceil32(sub_be75288d[arg1].field_1) + 416])
                        signer = erecover(_2279, (bool(mem[ceil32(sub_be75288d[arg1].field_1) + 416]) >> 255) + 27 << 248, mem[ceil32(sub_be75288d[arg1].field_1) + 384], uint255(mem[ceil32(sub_be75288d[arg1].field_1) + 416])) 
                        mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 476] = signer
                        if not erecover.result:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not address(signer):
                            revert with 0, 'ECDSA: invalid signature'
                        if address(signer) != _signerAddress:
                            revert with 0, 'Whitelist signature incorrect.'
                        mem[0] = arg1
                        mem[32] = sha3(msg.sender, 202)
                        if sub_2b1331a8[msg.sender][arg1] > !arg2:
                            revert with 0, 17
                        sub_2b1331a8[msg.sender][arg1] += arg2
                        idx = 0
                        while idx <= arg2:
                            if numMinted > -2:
                                revert with 0, 17
                            numMinted++
                            _3649 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3649] = 0
                            if not msg.sender:
                                revert with 0, 'ERC721: mint to the zero address'
                            if ownerOf[stor203]:
                                revert with 0, 'ERC721: token already minted'
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)]++
                            mem[0] = numMinted
                            mem[32] = 103
                            ownerOf[stor203] = msg.sender
                            emit Transfer(0, msg.sender, numMinted);
                            if not ext_code.size(msg.sender):
                                _4341 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_4341] = arg1
                                mem[_4341 + 32] = 500
                                mem[_4341 + 64] = block.timestamp
                            else:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = numMinted
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[s + mem[64] + 164] = mem[s + _3649 + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, numMinted, 128, 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if not return_data.size:
                                        if not mem[96]:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    if not return_data.size:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4705 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4705] == Mask(32, 224, mem[_4705])
                                if Mask(32, 224, mem[_4705]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                _4937 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_4937] = arg1
                                mem[_4937 + 32] = 500
                                mem[_4937 + 64] = block.timestamp
                            mem[0] = numMinted
                            mem[32] = 201
                            stor201[stor203].field_0 = arg1
                            stor201[stor203].field_256 = 500
                            stor201[stor203].field_512 = block.timestamp
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        if uint8((bool(mem[ceil32(sub_be75288d[arg1].field_1) + 416]) >> 255) + 27) != 28:
                            revert with 0, 'ECDSA: invalid signature 'v' value'
                        mem[64] = ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 508
                        mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 508] = sha3(mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 416 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(sub_be75288d[arg1].field_1) + arg3.length + 416 len -arg3.length + ceil32(arg3.length)]])
                        mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 540] = uint8((bool(mem[ceil32(sub_be75288d[arg1].field_1) + 416]) >> 255) + 27)
                        mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 572] = mem[ceil32(sub_be75288d[arg1].field_1) + 384]
                        mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 604] = uint255(mem[ceil32(sub_be75288d[arg1].field_1) + 416])
                        signer = erecover(_2279, (bool(mem[ceil32(sub_be75288d[arg1].field_1) + 416]) >> 255) + 27 << 248, mem[ceil32(sub_be75288d[arg1].field_1) + 384], uint255(mem[ceil32(sub_be75288d[arg1].field_1) + 416])) 
                        mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 476] = signer
                        if not erecover.result:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not address(signer):
                            revert with 0, 'ECDSA: invalid signature'
                        if address(signer) != _signerAddress:
                            revert with 0, 'Whitelist signature incorrect.'
                        mem[0] = arg1
                        mem[32] = sha3(msg.sender, 202)
                        if sub_2b1331a8[msg.sender][arg1] > !arg2:
                            revert with 0, 17
                        sub_2b1331a8[msg.sender][arg1] += arg2
                        idx = 0
                        while idx <= arg2:
                            if numMinted > -2:
                                revert with 0, 17
                            numMinted++
                            _3650 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3650] = 0
                            if not msg.sender:
                                revert with 0, 'ERC721: mint to the zero address'
                            if ownerOf[stor203]:
                                revert with 0, 'ERC721: token already minted'
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)]++
                            mem[0] = numMinted
                            mem[32] = 103
                            ownerOf[stor203] = msg.sender
                            emit Transfer(0, msg.sender, numMinted);
                            if not ext_code.size(msg.sender):
                                _4346 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_4346] = arg1
                                mem[_4346 + 32] = 500
                                mem[_4346 + 64] = block.timestamp
                            else:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = numMinted
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[s + mem[64] + 164] = mem[s + _3650 + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, numMinted, 128, 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if not return_data.size:
                                        if not mem[96]:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    if not return_data.size:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4707 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4707] == Mask(32, 224, mem[_4707])
                                if Mask(32, 224, mem[_4707]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                _4949 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_4949] = arg1
                                mem[_4949 + 32] = 500
                                mem[_4949 + 64] = block.timestamp
                            mem[0] = numMinted
                            mem[32] = 201
                            stor201[stor203].field_0 = arg1
                            stor201[stor203].field_256 = 500
                            stor201[stor203].field_512 = block.timestamp
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
        else:
            if sub_be75288d[arg1].field_0 == sub_be75288d[arg1].field_1 < 32:
                revert with 0, 34
            if not sub_be75288d[arg1].field_1:
                mem[96] = 320
                mem[128] = sub_be75288d[arg1].field_256
                mem[160] = sub_be75288d[arg1].field_512
                mem[192] = sub_be75288d[arg1].field_768
                mem[224] = sub_be75288d[arg1].field_1024
                mem[256] = sub_be75288d[arg1].field_1280
                mem[288] = sub_be75288d[arg1].field_1536
                if arg1 <= 0:
                    revert with 0, 'Invalid tier'
                if arg1 >= 4:
                    revert with 0, 'Invalid tier'
                if sub_2b1331a8[msg.sender][arg1] > !arg2:
                    revert with 0, 17
                if sub_2b1331a8[msg.sender][arg1] + arg2 > sub_be75288d[arg1].field_256:
                    revert with 0, 'Too many nodes of this tier'
                if sub_be75288d[arg1].field_768 and arg2 > -1 / sub_be75288d[arg1].field_768:
                    revert with 0, 17
                if sub_be75288d[arg1].field_768 * arg2 != msg.value:
                    revert with 0, 'Incorrect amount of AVAX'
                if arg2 <= 0:
                    revert with 0, 'Must create at least one'
                if presaleStartTime > block.timestamp:
                    revert with 0, 'Not within presale time window'
                if block.timestamp > presaleEndTime:
                    revert with 0, 'Not within presale time window'
                mem[ceil32(sub_be75288d[arg1].field_1) + 352] = arg3.length
                mem[ceil32(sub_be75288d[arg1].field_1) + 384 len arg3.length] = arg3[all]
                mem[ceil32(sub_be75288d[arg1].field_1) + arg3.length + 384] = 0
                mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 416] = '\x19Ethereum Signed Message:\n32'
                mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 444] = msg.sender
                mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 384] = 60
                _229 = sha3(mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 416 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(sub_be75288d[arg1].field_1) + arg3.length + 416 len -arg3.length + ceil32(arg3.length)]])
                if 65 == arg3.length:
                    if mem[ceil32(sub_be75288d[arg1].field_1) + 416] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                        revert with 0, 'ECDSA: invalid signature 's' value'
                    revert with 0, 'ECDSA: invalid signature 'v' value'
                if arg3.length != 64:
                    revert with 0, 'ECDSA: invalid signature length'
                if 27 > !(bool(mem[ceil32(sub_be75288d[arg1].field_1) + 416]) >> 255):
                    revert with 0, 17
                if uint255(mem[ceil32(sub_be75288d[arg1].field_1) + 416]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                    revert with 0, 'ECDSA: invalid signature 's' value'
                if 27 == uint8((bool(mem[ceil32(sub_be75288d[arg1].field_1) + 416]) >> 255) + 27):
                    mem[64] = ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 508
                    mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 508] = sha3(mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 416 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(sub_be75288d[arg1].field_1) + arg3.length + 416 len -arg3.length + ceil32(arg3.length)]])
                    mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 540] = uint8((bool(mem[ceil32(sub_be75288d[arg1].field_1) + 416]) >> 255) + 27)
                    mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 572] = mem[ceil32(sub_be75288d[arg1].field_1) + 384]
                    mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 604] = uint255(mem[ceil32(sub_be75288d[arg1].field_1) + 416])
                    signer = erecover(_229, (bool(mem[ceil32(sub_be75288d[arg1].field_1) + 416]) >> 255) + 27 << 248, mem[ceil32(sub_be75288d[arg1].field_1) + 384], uint255(mem[ceil32(sub_be75288d[arg1].field_1) + 416])) 
                    mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 476] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not address(signer):
                        revert with 0, 'ECDSA: invalid signature'
                    if address(signer) != _signerAddress:
                        revert with 0, 'Whitelist signature incorrect.'
                    mem[0] = arg1
                    mem[32] = sha3(msg.sender, 202)
                    if sub_2b1331a8[msg.sender][arg1] > !arg2:
                        revert with 0, 17
                    sub_2b1331a8[msg.sender][arg1] += arg2
                    idx = 0
                    while idx <= arg2:
                        if numMinted > -2:
                            revert with 0, 17
                        numMinted++
                        _2080 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2080] = 0
                        if not msg.sender:
                            revert with 0, 'ERC721: mint to the zero address'
                        if ownerOf[stor203]:
                            revert with 0, 'ERC721: token already minted'
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)]++
                        mem[0] = numMinted
                        mem[32] = 103
                        ownerOf[stor203] = msg.sender
                        emit Transfer(0, msg.sender, numMinted);
                        if not ext_code.size(msg.sender):
                            _2405 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_2405] = arg1
                            mem[_2405 + 32] = 500
                            mem[_2405 + 64] = block.timestamp
                        else:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = numMinted
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _2080 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(msg.sender)
                            call msg.sender.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, 0, numMinted, 128, 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if not return_data.size:
                                    if not mem[96]:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    revert with memory
                                      from 128
                                       len mem[96]
                                if not return_data.size:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                revert with ext_call.return_data[0 len return_data.size]
                            _3689 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3689] == Mask(32, 224, mem[_3689])
                            if Mask(32, 224, mem[_3689]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            _4265 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_4265] = arg1
                            mem[_4265 + 32] = 500
                            mem[_4265 + 64] = block.timestamp
                        mem[0] = numMinted
                        mem[32] = 201
                        stor201[stor203].field_0 = arg1
                        stor201[stor203].field_256 = 500
                        stor201[stor203].field_512 = block.timestamp
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    if uint8((bool(mem[ceil32(sub_be75288d[arg1].field_1) + 416]) >> 255) + 27) != 28:
                        revert with 0, 'ECDSA: invalid signature 'v' value'
                    mem[64] = ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 508
                    mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 508] = sha3(mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 416 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(sub_be75288d[arg1].field_1) + arg3.length + 416 len -arg3.length + ceil32(arg3.length)]])
                    mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 540] = uint8((bool(mem[ceil32(sub_be75288d[arg1].field_1) + 416]) >> 255) + 27)
                    mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 572] = mem[ceil32(sub_be75288d[arg1].field_1) + 384]
                    mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 604] = uint255(mem[ceil32(sub_be75288d[arg1].field_1) + 416])
                    signer = erecover(_229, (bool(mem[ceil32(sub_be75288d[arg1].field_1) + 416]) >> 255) + 27 << 248, mem[ceil32(sub_be75288d[arg1].field_1) + 384], uint255(mem[ceil32(sub_be75288d[arg1].field_1) + 416])) 
                    mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 476] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not address(signer):
                        revert with 0, 'ECDSA: invalid signature'
                    if address(signer) != _signerAddress:
                        revert with 0, 'Whitelist signature incorrect.'
                    mem[0] = arg1
                    mem[32] = sha3(msg.sender, 202)
                    if sub_2b1331a8[msg.sender][arg1] > !arg2:
                        revert with 0, 17
                    sub_2b1331a8[msg.sender][arg1] += arg2
                    idx = 0
                    while idx <= arg2:
                        if numMinted > -2:
                            revert with 0, 17
                        numMinted++
                        _2081 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2081] = 0
                        if not msg.sender:
                            revert with 0, 'ERC721: mint to the zero address'
                        if ownerOf[stor203]:
                            revert with 0, 'ERC721: token already minted'
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)]++
                        mem[0] = numMinted
                        mem[32] = 103
                        ownerOf[stor203] = msg.sender
                        emit Transfer(0, msg.sender, numMinted);
                        if not ext_code.size(msg.sender):
                            _2410 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_2410] = arg1
                            mem[_2410 + 32] = 500
                            mem[_2410 + 64] = block.timestamp
                        else:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = numMinted
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _2081 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(msg.sender)
                            call msg.sender.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, 0, numMinted, 128, 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if not return_data.size:
                                    if not mem[96]:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    revert with memory
                                      from 128
                                       len mem[96]
                                if not return_data.size:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                revert with ext_call.return_data[0 len return_data.size]
                            _3691 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3691] == Mask(32, 224, mem[_3691])
                            if Mask(32, 224, mem[_3691]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            _4277 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_4277] = arg1
                            mem[_4277 + 32] = 500
                            mem[_4277 + 64] = block.timestamp
                        mem[0] = numMinted
                        mem[32] = 201
                        stor201[stor203].field_0 = arg1
                        stor201[stor203].field_256 = 500
                        stor201[stor203].field_512 = block.timestamp
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
            else:
                if 31 >= sub_be75288d[arg1].field_1:
                    mem[352] = 256 * sub_be75288d[arg1].field_8
                    mem[96] = 320
                    mem[128] = sub_be75288d[arg1].field_256
                    mem[160] = sub_be75288d[arg1].field_512
                    mem[192] = sub_be75288d[arg1].field_768
                    mem[224] = sub_be75288d[arg1].field_1024
                    mem[256] = sub_be75288d[arg1].field_1280
                    mem[288] = sub_be75288d[arg1].field_1536
                    if arg1 <= 0:
                        revert with 0, 'Invalid tier'
                    if arg1 >= 4:
                        revert with 0, 'Invalid tier'
                    if sub_2b1331a8[msg.sender][arg1] > !arg2:
                        revert with 0, 17
                    if sub_2b1331a8[msg.sender][arg1] + arg2 > sub_be75288d[arg1].field_256:
                        revert with 0, 'Too many nodes of this tier'
                    if sub_be75288d[arg1].field_768 and arg2 > -1 / sub_be75288d[arg1].field_768:
                        revert with 0, 17
                    if sub_be75288d[arg1].field_768 * arg2 != msg.value:
                        revert with 0, 'Incorrect amount of AVAX'
                    if arg2 <= 0:
                        revert with 0, 'Must create at least one'
                    if presaleStartTime > block.timestamp:
                        revert with 0, 'Not within presale time window'
                    if block.timestamp > presaleEndTime:
                        revert with 0, 'Not within presale time window'
                    mem[ceil32(sub_be75288d[arg1].field_1) + 352] = arg3.length
                    mem[ceil32(sub_be75288d[arg1].field_1) + 384 len arg3.length] = arg3[all]
                    mem[ceil32(sub_be75288d[arg1].field_1) + arg3.length + 384] = 0
                    mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 416] = '\x19Ethereum Signed Message:\n32'
                    mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 444] = msg.sender
                    mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 384] = 60
                    _286 = sha3(mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 416 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(sub_be75288d[arg1].field_1) + arg3.length + 416 len -arg3.length + ceil32(arg3.length)]])
                    if 65 == arg3.length:
                        if mem[ceil32(sub_be75288d[arg1].field_1) + 416] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                            revert with 0, 'ECDSA: invalid signature 's' value'
                        revert with 0, 'ECDSA: invalid signature 'v' value'
                    if arg3.length != 64:
                        revert with 0, 'ECDSA: invalid signature length'
                    if 27 > !(bool(mem[ceil32(sub_be75288d[arg1].field_1) + 416]) >> 255):
                        revert with 0, 17
                    if uint255(mem[ceil32(sub_be75288d[arg1].field_1) + 416]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                        revert with 0, 'ECDSA: invalid signature 's' value'
                    if 27 == uint8((bool(mem[ceil32(sub_be75288d[arg1].field_1) + 416]) >> 255) + 27):
                        mem[64] = ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 508
                        mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 508] = sha3(mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 416 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(sub_be75288d[arg1].field_1) + arg3.length + 416 len -arg3.length + ceil32(arg3.length)]])
                        mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 540] = uint8((bool(mem[ceil32(sub_be75288d[arg1].field_1) + 416]) >> 255) + 27)
                        mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 572] = mem[ceil32(sub_be75288d[arg1].field_1) + 384]
                        mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 604] = uint255(mem[ceil32(sub_be75288d[arg1].field_1) + 416])
                        signer = erecover(_286, (bool(mem[ceil32(sub_be75288d[arg1].field_1) + 416]) >> 255) + 27 << 248, mem[ceil32(sub_be75288d[arg1].field_1) + 384], uint255(mem[ceil32(sub_be75288d[arg1].field_1) + 416])) 
                        mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 476] = signer
                        if not erecover.result:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not address(signer):
                            revert with 0, 'ECDSA: invalid signature'
                        if address(signer) != _signerAddress:
                            revert with 0, 'Whitelist signature incorrect.'
                        mem[0] = arg1
                        mem[32] = sha3(msg.sender, 202)
                        if sub_2b1331a8[msg.sender][arg1] > !arg2:
                            revert with 0, 17
                        sub_2b1331a8[msg.sender][arg1] += arg2
                        idx = 0
                        while idx <= arg2:
                            if numMinted > -2:
                                revert with 0, 17
                            numMinted++
                            _2087 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2087] = 0
                            if not msg.sender:
                                revert with 0, 'ERC721: mint to the zero address'
                            if ownerOf[stor203]:
                                revert with 0, 'ERC721: token already minted'
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)]++
                            mem[0] = numMinted
                            mem[32] = 103
                            ownerOf[stor203] = msg.sender
                            emit Transfer(0, msg.sender, numMinted);
                            if not ext_code.size(msg.sender):
                                _2415 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_2415] = arg1
                                mem[_2415 + 32] = 500
                                mem[_2415 + 64] = block.timestamp
                            else:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = numMinted
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[s + mem[64] + 164] = mem[s + _2087 + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, numMinted, 128, 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if not return_data.size:
                                        if not mem[96]:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    if not return_data.size:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3693 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3693] == Mask(32, 224, mem[_3693])
                                if Mask(32, 224, mem[_3693]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                _4289 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_4289] = arg1
                                mem[_4289 + 32] = 500
                                mem[_4289 + 64] = block.timestamp
                            mem[0] = numMinted
                            mem[32] = 201
                            stor201[stor203].field_0 = arg1
                            stor201[stor203].field_256 = 500
                            stor201[stor203].field_512 = block.timestamp
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        if uint8((bool(mem[ceil32(sub_be75288d[arg1].field_1) + 416]) >> 255) + 27) != 28:
                            revert with 0, 'ECDSA: invalid signature 'v' value'
                        mem[64] = ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 508
                        mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 508] = sha3(mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 416 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(sub_be75288d[arg1].field_1) + arg3.length + 416 len -arg3.length + ceil32(arg3.length)]])
                        mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 540] = uint8((bool(mem[ceil32(sub_be75288d[arg1].field_1) + 416]) >> 255) + 27)
                        mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 572] = mem[ceil32(sub_be75288d[arg1].field_1) + 384]
                        mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 604] = uint255(mem[ceil32(sub_be75288d[arg1].field_1) + 416])
                        signer = erecover(_286, (bool(mem[ceil32(sub_be75288d[arg1].field_1) + 416]) >> 255) + 27 << 248, mem[ceil32(sub_be75288d[arg1].field_1) + 384], uint255(mem[ceil32(sub_be75288d[arg1].field_1) + 416])) 
                        mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 476] = signer
                        if not erecover.result:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not address(signer):
                            revert with 0, 'ECDSA: invalid signature'
                        if address(signer) != _signerAddress:
                            revert with 0, 'Whitelist signature incorrect.'
                        mem[0] = arg1
                        mem[32] = sha3(msg.sender, 202)
                        if sub_2b1331a8[msg.sender][arg1] > !arg2:
                            revert with 0, 17
                        sub_2b1331a8[msg.sender][arg1] += arg2
                        idx = 0
                        while idx <= arg2:
                            if numMinted > -2:
                                revert with 0, 17
                            numMinted++
                            _2088 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2088] = 0
                            if not msg.sender:
                                revert with 0, 'ERC721: mint to the zero address'
                            if ownerOf[stor203]:
                                revert with 0, 'ERC721: token already minted'
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)]++
                            mem[0] = numMinted
                            mem[32] = 103
                            ownerOf[stor203] = msg.sender
                            emit Transfer(0, msg.sender, numMinted);
                            if not ext_code.size(msg.sender):
                                _2420 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_2420] = arg1
                                mem[_2420 + 32] = 500
                                mem[_2420 + 64] = block.timestamp
                            else:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = numMinted
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[s + mem[64] + 164] = mem[s + _2088 + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, numMinted, 128, 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if not return_data.size:
                                        if not mem[96]:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    if not return_data.size:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3695 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3695] == Mask(32, 224, mem[_3695])
                                if Mask(32, 224, mem[_3695]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                _4301 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_4301] = arg1
                                mem[_4301 + 32] = 500
                                mem[_4301 + 64] = block.timestamp
                            mem[0] = numMinted
                            mem[32] = 201
                            stor201[stor203].field_0 = arg1
                            stor201[stor203].field_256 = 500
                            stor201[stor203].field_512 = block.timestamp
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                else:
                    mem[352] = sub_be75288d[arg1].field_0
                    idx = 352
                    s = 0
                    while sub_be75288d[arg1].field_1 + 320 > idx:
                        mem[idx + 32] = sub_be75288d[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[96] = 320
                    mem[128] = sub_be75288d[arg1].field_256
                    mem[160] = sub_be75288d[arg1].field_512
                    mem[192] = sub_be75288d[arg1].field_768
                    mem[224] = sub_be75288d[arg1].field_1024
                    mem[256] = sub_be75288d[arg1].field_1280
                    mem[288] = sub_be75288d[arg1].field_1536
                    if arg1 <= 0:
                        revert with 0, 'Invalid tier'
                    if arg1 >= 4:
                        revert with 0, 'Invalid tier'
                    if sub_2b1331a8[msg.sender][arg1] > !arg2:
                        revert with 0, 17
                    if sub_2b1331a8[msg.sender][arg1] + arg2 > sub_be75288d[arg1].field_256:
                        revert with 0, 'Too many nodes of this tier'
                    if sub_be75288d[arg1].field_768 and arg2 > -1 / sub_be75288d[arg1].field_768:
                        revert with 0, 17
                    if sub_be75288d[arg1].field_768 * arg2 != msg.value:
                        revert with 0, 'Incorrect amount of AVAX'
                    if arg2 <= 0:
                        revert with 0, 'Must create at least one'
                    if presaleStartTime > block.timestamp:
                        revert with 0, 'Not within presale time window'
                    if block.timestamp > presaleEndTime:
                        revert with 0, 'Not within presale time window'
                    mem[ceil32(sub_be75288d[arg1].field_1) + 352] = arg3.length
                    mem[ceil32(sub_be75288d[arg1].field_1) + 384 len arg3.length] = arg3[all]
                    mem[ceil32(sub_be75288d[arg1].field_1) + arg3.length + 384] = 0
                    mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 416] = '\x19Ethereum Signed Message:\n32'
                    mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 444] = msg.sender
                    mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 384] = 60
                    _2283 = sha3(mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 416 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(sub_be75288d[arg1].field_1) + arg3.length + 416 len -arg3.length + ceil32(arg3.length)]])
                    if 65 == arg3.length:
                        if mem[ceil32(sub_be75288d[arg1].field_1) + 416] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                            revert with 0, 'ECDSA: invalid signature 's' value'
                        revert with 0, 'ECDSA: invalid signature 'v' value'
                    if arg3.length != 64:
                        revert with 0, 'ECDSA: invalid signature length'
                    if 27 > !(bool(mem[ceil32(sub_be75288d[arg1].field_1) + 416]) >> 255):
                        revert with 0, 17
                    if uint255(mem[ceil32(sub_be75288d[arg1].field_1) + 416]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                        revert with 0, 'ECDSA: invalid signature 's' value'
                    if 27 == uint8((bool(mem[ceil32(sub_be75288d[arg1].field_1) + 416]) >> 255) + 27):
                        mem[64] = ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 508
                        mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 508] = sha3(mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 416 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(sub_be75288d[arg1].field_1) + arg3.length + 416 len -arg3.length + ceil32(arg3.length)]])
                        mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 540] = uint8((bool(mem[ceil32(sub_be75288d[arg1].field_1) + 416]) >> 255) + 27)
                        mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 572] = mem[ceil32(sub_be75288d[arg1].field_1) + 384]
                        mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 604] = uint255(mem[ceil32(sub_be75288d[arg1].field_1) + 416])
                        signer = erecover(_2283, (bool(mem[ceil32(sub_be75288d[arg1].field_1) + 416]) >> 255) + 27 << 248, mem[ceil32(sub_be75288d[arg1].field_1) + 384], uint255(mem[ceil32(sub_be75288d[arg1].field_1) + 416])) 
                        mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 476] = signer
                        if not erecover.result:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not address(signer):
                            revert with 0, 'ECDSA: invalid signature'
                        if address(signer) != _signerAddress:
                            revert with 0, 'Whitelist signature incorrect.'
                        mem[0] = arg1
                        mem[32] = sha3(msg.sender, 202)
                        if sub_2b1331a8[msg.sender][arg1] > !arg2:
                            revert with 0, 17
                        sub_2b1331a8[msg.sender][arg1] += arg2
                        idx = 0
                        while idx <= arg2:
                            if numMinted > -2:
                                revert with 0, 17
                            numMinted++
                            _3659 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3659] = 0
                            if not msg.sender:
                                revert with 0, 'ERC721: mint to the zero address'
                            if ownerOf[stor203]:
                                revert with 0, 'ERC721: token already minted'
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)]++
                            mem[0] = numMinted
                            mem[32] = 103
                            ownerOf[stor203] = msg.sender
                            emit Transfer(0, msg.sender, numMinted);
                            if not ext_code.size(msg.sender):
                                _4351 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_4351] = arg1
                                mem[_4351 + 32] = 500
                                mem[_4351 + 64] = block.timestamp
                            else:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = numMinted
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[s + mem[64] + 164] = mem[s + _3659 + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, numMinted, 128, 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if not return_data.size:
                                        if not mem[96]:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    if not return_data.size:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4709 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4709] == Mask(32, 224, mem[_4709])
                                if Mask(32, 224, mem[_4709]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                _4961 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_4961] = arg1
                                mem[_4961 + 32] = 500
                                mem[_4961 + 64] = block.timestamp
                            mem[0] = numMinted
                            mem[32] = 201
                            stor201[stor203].field_0 = arg1
                            stor201[stor203].field_256 = 500
                            stor201[stor203].field_512 = block.timestamp
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        if uint8((bool(mem[ceil32(sub_be75288d[arg1].field_1) + 416]) >> 255) + 27) != 28:
                            revert with 0, 'ECDSA: invalid signature 'v' value'
                        mem[64] = ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 508
                        mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 508] = sha3(mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 416 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(sub_be75288d[arg1].field_1) + arg3.length + 416 len -arg3.length + ceil32(arg3.length)]])
                        mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 540] = uint8((bool(mem[ceil32(sub_be75288d[arg1].field_1) + 416]) >> 255) + 27)
                        mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 572] = mem[ceil32(sub_be75288d[arg1].field_1) + 384]
                        mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 604] = uint255(mem[ceil32(sub_be75288d[arg1].field_1) + 416])
                        signer = erecover(_2283, (bool(mem[ceil32(sub_be75288d[arg1].field_1) + 416]) >> 255) + 27 << 248, mem[ceil32(sub_be75288d[arg1].field_1) + 384], uint255(mem[ceil32(sub_be75288d[arg1].field_1) + 416])) 
                        mem[ceil32(sub_be75288d[arg1].field_1) + ceil32(arg3.length) + 476] = signer
                        if not erecover.result:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not address(signer):
                            revert with 0, 'ECDSA: invalid signature'
                        if address(signer) != _signerAddress:
                            revert with 0, 'Whitelist signature incorrect.'
                        mem[0] = arg1
                        mem[32] = sha3(msg.sender, 202)
                        if sub_2b1331a8[msg.sender][arg1] > !arg2:
                            revert with 0, 17
                        sub_2b1331a8[msg.sender][arg1] += arg2
                        idx = 0
                        while idx <= arg2:
                            if numMinted > -2:
                                revert with 0, 17
                            numMinted++
                            _3660 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3660] = 0
                            if not msg.sender:
                                revert with 0, 'ERC721: mint to the zero address'
                            if ownerOf[stor203]:
                                revert with 0, 'ERC721: token already minted'
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)]++
                            mem[0] = numMinted
                            mem[32] = 103
                            ownerOf[stor203] = msg.sender
                            emit Transfer(0, msg.sender, numMinted);
                            if not ext_code.size(msg.sender):
                                _4356 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_4356] = arg1
                                mem[_4356 + 32] = 500
                                mem[_4356 + 64] = block.timestamp
                            else:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = numMinted
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[s + mem[64] + 164] = mem[s + _3660 + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, numMinted, 128, 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if not return_data.size:
                                        if not mem[96]:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    if not return_data.size:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4711 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4711] == Mask(32, 224, mem[_4711])
                                if Mask(32, 224, mem[_4711]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                _4973 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_4973] = arg1
                                mem[_4973 + 32] = 500
                                mem[_4973 + 64] = block.timestamp
                            mem[0] = numMinted
                            mem[32] = 201
                            stor201[stor203].field_0 = arg1
                            stor201[stor203].field_256 = 500
                            stor201[stor203].field_512 = block.timestamp
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
}



}
