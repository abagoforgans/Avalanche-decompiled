contract main {




// =====================  Runtime code  =====================


#
#  - sub_2463f886(?)
#  - sub_97c6cf0d(?)
#  - sub_b0ff762a(?)
#  - sub_c0583f54(?)
#
const CANNOT_TRANSFER_TO_ZERO_ADDRESS = '', 0

const NOT_CURRENT_OWNER = '', 0


mapping of uint8 stor0;
mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor4;
array of struct stor5;
array of struct stor6;
mapping of struct stor7;
address owner;
uint8 stor10;
address stor10; offset 8
uint256 stor11;
uint256 stor12;
address stor13;
address stor14;
mapping of uint8 stor15;
mapping of uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 sub_ee218db4;
address stor21;
uint256 sub_418bc156;
uint256 sub_518b057e;
uint256 sub_5cdedc5a;
uint256 sub_ebe9505f;
uint256 sub_0f58fa4d;
mapping of uint8 stor27;
mapping of uint8 stor28;
uint8 stor29;
uint256 stor29; offset 16
uint256 stor29; offset 8
mapping of struct stor30;
array of struct sub_f7e65b1c;
array of uint256 sub_9f2db3cb;
array of uint256 sub_89c6b188;
array of uint256 sub_3f88d08a;
array of uint256 sub_07889cc9;
mapping of uint256 sub_e63e0318;
mapping of uint8 stor38;
mapping of uint8 stor39;
array of address sub_b42b22d6;
mapping of uint8 stor41;
mapping of uint32 sub_304156d4;
mapping of uint8 stor43;
mapping of uint256 sub_63873525;
uint256 sub_002e9fb2;
mapping of uint256 sub_c38694a5;
mapping of uint256 sub_95ddf83a;
uint256 stor48;
uint256 sub_fff7744d;
mapping of uint256 sub_ec5fe15c;
uint256 sub_9019abdf;
uint256 sub_9b175d77;
uint256 sub_362f53ca;
mapping of uint256 sub_92f62add;
uint256 sub_44ba33e5;
mapping of uint8 stor99;

function sub_002e9fb2(?) {
    return sub_002e9fb2
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    return bool(stor0[Mask(32, 224, arg1)])
}

function sub_07889cc9(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_07889cc9.length
    return sub_07889cc9[arg1]
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0, '', 0
    return approved[arg1]
}

function sub_0f58fa4d(?) {
    return sub_0f58fa4d
}

function sub_1268cc3c(?) {
    return sub_07889cc9.length
}

function sub_2dfe0382(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor39[arg1])
}

function sub_304156d4(?) {
    require calldata.size - 4 >= 32
    return sub_304156d4[arg1]
}

function sub_362f53ca(?) {
    return sub_362f53ca
}

function sub_3f88d08a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_3f88d08a[address(arg1)]
}

function sub_418bc156(?) {
    return sub_418bc156
}

function sub_44ba33e5(?) {
    return sub_44ba33e5
}

function sub_518b057e(?) {
    return sub_518b057e
}

function categories(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    return bool(stor41[arg1[all]])
}

function sub_5cdedc5a(?) {
    return sub_5cdedc5a
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0, '', 0
    return ownerOf[arg1]
}

function sub_63873525(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_63873525[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0, '', 0
    return balanceOf[address(arg1)]
}

function sub_72aaad5e(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < sub_3f88d08a[arg1]
    return sub_3f88d08a[arg1][arg2]
}

function sub_89c6b188(?) {
    require calldata.size - 4 >= 64
    require arg2 < sub_89c6b188[arg1]
    return sub_89c6b188[arg1][arg2]
}

function owner() {
    return owner
}

function sub_9019abdf(?) {
    return sub_9019abdf
}

function sub_92f62add(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_92f62add[arg1][arg2]
}

function sub_95ddf83a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_95ddf83a[arg1]
}

function sub_9b175d77(?) {
    return sub_9b175d77
}

function sub_9f2db3cb(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_9f2db3cb[address(arg1)]
}

function sub_b42b22d6(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_b42b22d6.length
    return sub_b42b22d6[arg1]
}

function sub_c38694a5(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_c38694a5[arg1]
}

function isStaff(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor38[arg1])
}

function sub_cc182f1c(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < sub_9f2db3cb[arg1]
    return sub_9f2db3cb[arg1][arg2]
}

function sub_e63e0318(?) {
    require calldata.size - 4 >= 32
    return sub_e63e0318[arg1]
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor4[address(arg1)][address(arg2)])
}

function sub_ebbed411(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    return sub_89c6b188[address(arg2)][arg1]
}

function sub_ebe9505f(?) {
    return sub_ebe9505f
}

function sub_ec5fe15c(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_ec5fe15c[arg1][arg2]
}

function sub_ee218db4(?) {
    return sub_ee218db4
}

function sub_f7e65b1c(?) {
    require calldata.size - 4 >= 64
    require arg2 < uint256(sub_f7e65b1c[arg1].field_0)
    return address(sub_f7e65b1c[arg1][arg2].field_0), uint256(sub_f7e65b1c[arg1][arg2].field_256)
}

function sub_fff7744d(?) {
    return sub_fff7744d
}

function _fallback() payable {
    revert
}

function sub_013869bf(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '', 0
    stor18 = arg1
}

function setPlatformFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '', 0
    stor17 = arg1
}

function updateDevSplit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '', 0
    stor11 = arg1
}

function sub_126c3073(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, '', 0
    sub_ebe9505f = arg1
    sub_0f58fa4d = arg2
}

function updateMarketingWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '', 0
    stor21 = arg1
}

function sub_3c2894b0(?) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, '', 0
    sub_418bc156 = arg3
    sub_518b057e = arg2
    sub_5cdedc5a = arg1
}

function sub_78bf6fb0(?) {
    require calldata.size - 4 >= 32
    if not address(stor30[arg1].field_2048):
        return bool(address(stor30[arg1].field_2048))
    return not bool(uint256(stor30[arg1].field_1536))
}

function updateStaff(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '', 0
    stor38[address(arg1)] = uint8(arg2)
}

function setTrading(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if not stor38[msg.sender]:
            revert with 0, 'Staff only'
    uint8(stor10.field_0) = uint8(arg1)
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    stor4[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function sub_a768a98a(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, '', 0
    stor13 = address(arg1)
    stor14 = address(arg2)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '', 0
    if not arg1:
        revert with 0, '', 0
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_1fe8845b(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        if not stor38[msg.sender]:
            revert with 0, 'Staff only'
    stor28[address(arg1)] = uint8(bool(arg2))
}

function sub_82277c64(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        if not stor38[msg.sender]:
            revert with 0, 'Staff only'
    stor27[address(arg1)] = uint8(bool(arg2))
}

function sub_fbf3d9cb(?) {
    require calldata.size - 4 >= 32
    if not sub_89c6b188[arg1]:
        return 0
    if sub_89c6b188[arg1] < 1:
        revert with 0, 17
    if sub_89c6b188[arg1] - 1 >= sub_89c6b188[arg1]:
        revert with 0, 50
    return sub_89c6b188[arg1][sub_89c6b188[arg1]]
}

function sub_441ffc92(?) {
    require calldata.size - 4 >= 32
    if stor43[msg.sender][arg1]:
        revert with 0, 'Already flagged this sale'
    stor43[msg.sender][arg1] = 1
    if sub_304156d4[arg1] > 4294967294:
        revert with 0, 17
    sub_304156d4[arg1] = uint32(sub_304156d4[arg1] + 1)
}

function sub_fed7b2fc(?) {
    require calldata.size - 4 >= 32
    if uint256(stor30[arg1].field_1280):
        return block.timestamp >= uint256(stor30[arg1].field_1280)
    if uint256(stor30[arg1].field_3072) > !sub_418bc156:
        revert with 0, 17
    return block.timestamp >= uint256(stor30[arg1].field_3072) + sub_418bc156
}

function sub_3c52a061(?) {
    require calldata.size - 4 >= 64
    require arg1 == bool(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        if not stor38[msg.sender]:
            revert with 0, 'Staff only'
    uint8(stor29.field_0) = uint8(bool(arg1))
    Mask(248, 0, stor29.field_8) = Mask(248, 0, bool(arg2))
    Mask(240, 0, stor29.field_16) = Mask(240, 16, bool(arg1)) >> 16
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if ownerOf[arg2] != msg.sender:
        if not stor4[stor1[arg2]][msg.sender]:
            revert with 0, '', 0
    if not ownerOf[arg2]:
        revert with 0, '', 0
    if ownerOf[arg2] == arg1:
        revert with 0, '', 0
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function sub_6845d6aa(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, '', 0
    stor16[address(arg1)] = arg2
    require ext_code.size(stor14)
    call stor14.0x8bccbf62 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_0ca38955(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, '', 0
    if not arg1:
        require ext_code.size(stor13)
        call stor13.0xd83623dd with:
             gas gas_remaining wei
    else:
        require ext_code.size(stor14)
        call stor14.0xd83623dd with:
             gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function claim() {
    require ext_code.size(stor14)
    staticcall stor14.0xaada9c38 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(stor14)
        call stor14.0x1e83409a with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function myDistribution(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor14)
    staticcall stor14.0xaada9c38 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor14)
    staticcall stor14.0xbdf16036 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], ext_call.return_data[0]
}

function updateDistributor(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '', 0
    if not arg2:
        require ext_code.size(stor13)
        call stor13.0xce5494bb with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor13 = arg1
    else:
        require ext_code.size(stor14)
        call stor14.0xce5494bb with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor14 = arg1
}

function sub_2eeaaecd(?) {
    require calldata.size - 4 >= 32
    if not uint256(sub_f7e65b1c[arg1].field_0):
        return 0
    idx = 0
    s = 0
    while idx < uint256(sub_f7e65b1c[arg1].field_0):
        if idx >= uint256(sub_f7e65b1c[arg1].field_0):
            revert with 0, 50
        if address(sub_f7e65b1c[arg1][idx].field_0) != address(stor30[arg1].field_2048):
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 31
            idx = idx + 1
            s = s
            continue 
        if s > -2:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        mem[0] = arg1
        mem[32] = 31
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            if not stor4[stor1[arg3]][msg.sender]:
                revert with 0, '', 0
    if not ownerOf[arg3]:
        revert with 0, '', 0
    if ownerOf[arg3] != arg1:
        revert with 0, '', 0
    if not arg2:
        revert with 0, '', 0
    approved[arg3] = 0
    if ownerOf[arg3] != ownerOf[arg3]:
        revert with 0, '', 0
    if balanceOf[stor1[arg3]] < 1:
        revert with 0, 17
    balanceOf[stor1[arg3]]--
    ownerOf[arg3] = 0
    if ownerOf[arg3]:
        revert with 0, '', 0
    ownerOf[arg3] = arg2
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    emit Transfer(ownerOf[arg3], arg2, arg3);
}

function sub_24d91d16(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, '', 0
    stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 41)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 6) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256] = uint8(bool(arg2))
}

function getPaid() {
    if owner != msg.sender:
        revert with 0, '', 0
    if eth.balance(this.address) < sub_ee218db4:
        revert with 0, 17
    if eth.balance(this.address) - sub_ee218db4:
        if eth.balance(this.address) - sub_ee218db4 and stor11 > -1 / eth.balance(this.address) - sub_ee218db4:
            revert with 0, 17
        call address(stor10.field_8) with:
           value (eth.balance(this.address) * stor11) - (sub_ee218db4 * stor11) / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if eth.balance(this.address) - sub_ee218db4 < (eth.balance(this.address) * stor11) - (sub_ee218db4 * stor11) / 100:
            revert with 0, 17
        call stor21 with:
           value eth.balance(this.address) - sub_ee218db4 - ((eth.balance(this.address) * stor11) - (sub_ee218db4 * stor11) / 100) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if not sub_89c6b188[msg.sender][arg3]:
        if not address(stor30[0].field_2048):
            revert with 0, 'Send tokens through createSale'
        if uint256(stor30[0].field_1536):
            revert with 0, 'Send tokens through createSale'
    else:
        if sub_89c6b188[msg.sender][arg3] < 1:
            revert with 0, 17
        if sub_89c6b188[msg.sender][arg3] - 1 >= sub_89c6b188[msg.sender][arg3]:
            revert with 0, 50
        if not address(stor30[stor33[msg.sender][arg3][stor33[msg.sender][arg3]]].field_2048):
            revert with 0, 'Send tokens through createSale'
        if uint256(stor30[stor33[msg.sender][arg3][stor33[msg.sender][arg3]]].field_1536):
            revert with 0, 'Send tokens through createSale'
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            if not stor4[stor1[arg3]][msg.sender]:
                revert with 0, '', 0
    if not ownerOf[arg3]:
        revert with 0, '', 0
    if ownerOf[arg3] != arg1:
        revert with 0, '', 0
    if not arg2:
        revert with 0, '', 0
    approved[arg3] = 0
    if ownerOf[arg3] != ownerOf[arg3]:
        revert with 0, '', 0
    if balanceOf[stor1[arg3]] < 1:
        revert with 0, 17
    balanceOf[stor1[arg3]]--
    ownerOf[arg3] = 0
    if ownerOf[arg3]:
        revert with 0, '', 0
    ownerOf[arg3] = arg2
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    emit Transfer(ownerOf[arg3], arg2, arg3);
    if ext_code.hash(arg2):
        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            require ext_code.size(arg2)
            call arg2.0x150b7a02 with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), arg3, 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, '', 0
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            if not stor4[stor1[arg3]][msg.sender]:
                revert with 0, '', 0
    if not ownerOf[arg3]:
        revert with 0, '', 0
    if ownerOf[arg3] != arg1:
        revert with 0, '', 0
    if not arg2:
        revert with 0, '', 0
    approved[arg3] = 0
    if ownerOf[arg3] != ownerOf[arg3]:
        revert with 0, '', 0
    if balanceOf[stor1[arg3]] < 1:
        revert with 0, 17
    balanceOf[stor1[arg3]]--
    ownerOf[arg3] = 0
    if ownerOf[arg3]:
        revert with 0, '', 0
    ownerOf[arg3] = arg2
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    emit Transfer(ownerOf[arg3], arg2, arg3);
    if ext_code.hash(arg2):
        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            require ext_code.size(arg2)
            call arg2.0x150b7a02 with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, '', 0
}

function cancelSale(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if not address(stor30[arg1].field_2048):
        revert with 0, 'No active sale'
    if uint256(stor30[arg1].field_1536):
        revert with 0, 'No active sale'
    if owner != msg.sender:
        if not stor38[msg.sender]:
            if address(stor30[arg1].field_2048) != msg.sender:
                revert with 0, 'Not token owner'
            if address(stor30[arg1].field_2304):
                revert with 0, 'Sale already active'
    if not uint256(sub_f7e65b1c[arg1].field_0):
        uint256(stor30[arg1].field_1536) = 1
        if sub_07889cc9.length < 1:
            revert with 0, 17
        if sub_07889cc9.length - 1 >= sub_07889cc9.length:
            revert with 0, 50
        if sub_e63e0318[arg1] >= sub_07889cc9.length:
            revert with 0, 50
        sub_07889cc9[stor36[arg1]] = sub_07889cc9[sub_07889cc9.length]
        if sub_07889cc9.length < 1:
            revert with 0, 17
        if sub_07889cc9.length - 1 >= sub_07889cc9.length:
            revert with 0, 50
        sub_e63e0318[stor35[stor35.length]] = sub_e63e0318[arg1]
        if not sub_07889cc9.length:
            revert with 0, 49
        sub_07889cc9[sub_07889cc9.length] = 0
        sub_07889cc9.length--
        require ext_code.size(address(stor30[arg1].field_2560))
        call address(stor30[arg1].field_2560).0x42842e0e with:
             gas gas_remaining wei
            args this.address, address(stor30[arg1].field_2048), uint256(stor30[arg1].field_256)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if uint256(sub_f7e65b1c[arg1].field_0) < 1:
            revert with 0, 17
        if uint256(sub_f7e65b1c[arg1].field_0) - 1 >= uint256(sub_f7e65b1c[arg1].field_0):
            revert with 0, 50
        uint256(stor30[arg1].field_1536) = 1
        if sub_07889cc9.length < 1:
            revert with 0, 17
        if sub_07889cc9.length - 1 >= sub_07889cc9.length:
            revert with 0, 50
        if sub_e63e0318[arg1] >= sub_07889cc9.length:
            revert with 0, 50
        sub_07889cc9[stor36[arg1]] = sub_07889cc9[sub_07889cc9.length]
        if sub_07889cc9.length < 1:
            revert with 0, 17
        if sub_07889cc9.length - 1 >= sub_07889cc9.length:
            revert with 0, 50
        sub_e63e0318[stor35[stor35.length]] = sub_e63e0318[arg1]
        if not sub_07889cc9.length:
            revert with 0, 49
        sub_07889cc9[sub_07889cc9.length] = 0
        sub_07889cc9.length--
        require ext_code.size(address(stor30[arg1].field_2560))
        call address(stor30[arg1].field_2560).0x42842e0e with:
             gas gas_remaining wei
            args this.address, address(stor30[arg1].field_2048), uint256(stor30[arg1].field_256)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) > 0:
            if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) and stor18 > -1 / uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256):
                revert with 0, 17
            if not stor19:
                revert with 0, 18
            if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) < uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor18 / stor19:
                revert with 0, 17
            call address(stor30[arg1].field_2304) with:
               value uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) - (uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor18 / stor19) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function name() {
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor5.length):
            if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor5.length):
                if 31 < uint255(stor5.length) * 0.5:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor5.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(stor5[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor5.length.field_8)
        else:
            if bool(stor5.length) == stor5.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor5.length.field_1 % 128:
                if 31 < stor5.length.field_1 % 128:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while stor5.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor5[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor5.length.field_8)
        mem[ceil32(uint255(stor5.length) * 0.5) + 192 len ceil32(uint255(stor5.length) * 0.5)] = mem[128 len ceil32(uint255(stor5.length) * 0.5)]
        if ceil32(uint255(stor5.length) * 0.5) > uint255(stor5.length) * 0.5:
            mem[(uint255(stor5.length) * 0.5) + ceil32(uint255(stor5.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)], mem[(2 * ceil32(uint255(stor5.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor5.length) * 0.5)]), 
    if bool(stor5.length) == stor5.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor5.length):
            if 31 < uint255(stor5.length) * 0.5:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while (uint255(stor5.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = uint256(stor5[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor5.length.field_8)
    else:
        if bool(stor5.length) == stor5.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor5.length.field_1 % 128:
            if 31 < stor5.length.field_1 % 128:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while stor5.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor5[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor5.length.field_8)
    mem[ceil32(stor5.length.field_1 % 128) + 192 len ceil32(stor5.length.field_1 % 128)] = mem[128 len ceil32(stor5.length.field_1 % 128)]
    if ceil32(stor5.length.field_1 % 128) > stor5.length.field_1 % 128:
        mem[stor5.length.field_1 % 128 + ceil32(stor5.length.field_1 % 128) + 192] = 0
    return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1 % 128)], mem[(2 * ceil32(stor5.length.field_1 % 128)) + 192 len 2 * ceil32(stor5.length.field_1 % 128)]), 
}

function symbol() {
    if bool(stor6.length):
        if bool(stor6.length) == uint255(stor6.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor6.length):
            if bool(stor6.length) == uint255(stor6.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor6.length):
                if 31 < uint255(stor6.length) * 0.5:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor6.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(stor6[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6.length), data=mem[128 len ceil32(uint255(stor6.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor6.length.field_8)
        else:
            if bool(stor6.length) == stor6.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor6.length.field_1 % 128:
                if 31 < stor6.length.field_1 % 128:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while stor6.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor6[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6.length), data=mem[128 len ceil32(uint255(stor6.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor6.length.field_8)
        mem[ceil32(uint255(stor6.length) * 0.5) + 192 len ceil32(uint255(stor6.length) * 0.5)] = mem[128 len ceil32(uint255(stor6.length) * 0.5)]
        if ceil32(uint255(stor6.length) * 0.5) > uint255(stor6.length) * 0.5:
            mem[(uint255(stor6.length) * 0.5) + ceil32(uint255(stor6.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor6.length), data=mem[128 len ceil32(uint255(stor6.length) * 0.5)], mem[(2 * ceil32(uint255(stor6.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor6.length) * 0.5)]), 
    if bool(stor6.length) == stor6.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor6.length):
        if bool(stor6.length) == uint255(stor6.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor6.length):
            if 31 < uint255(stor6.length) * 0.5:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while (uint255(stor6.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = uint256(stor6[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor6.length.field_8)
    else:
        if bool(stor6.length) == stor6.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor6.length.field_1 % 128:
            if 31 < stor6.length.field_1 % 128:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while stor6.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor6[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor6.length.field_8)
    mem[ceil32(stor6.length.field_1 % 128) + 192 len ceil32(stor6.length.field_1 % 128)] = mem[128 len ceil32(stor6.length.field_1 % 128)]
    if ceil32(stor6.length.field_1 % 128) > stor6.length.field_1 % 128:
        mem[stor6.length.field_1 % 128 + ceil32(stor6.length.field_1 % 128) + 192] = 0
    return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1 % 128)], mem[(2 * ceil32(stor6.length.field_1 % 128)) + 192 len 2 * ceil32(stor6.length.field_1 % 128)]), 
}

function sales(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if bool(stor30[arg1].field_2816):
        if bool(stor30[arg1].field_2816) == uint255(uint256(stor30[arg1].field_2816)) * 0.5 < 32:
            revert with 0, 34
        if bool(stor30[arg1].field_2816):
            if bool(stor30[arg1].field_2816) == uint255(uint256(stor30[arg1].field_2816)) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, uint256(stor30[arg1].field_2816)):
                if 31 >= uint255(uint256(stor30[arg1].field_2816)) * 0.5:
                    mem[128] = 256 * Mask(248, 0, stor30[arg1].field_2824)
                else:
                    mem[128] = uint256(stor30[arg1][11].field_0)
                    idx = 128
                    s = 0
                    while (uint255(uint256(stor30[arg1].field_2816)) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(stor30[arg1][s + 11].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor30[arg1].field_2816) == stor30[arg1].field_2817 % 128 < 32:
                revert with 0, 34
            if stor30[arg1].field_2817 % 128:
                if 31 >= stor30[arg1].field_2817 % 128:
                    mem[128] = 256 * Mask(248, 0, stor30[arg1].field_2824)
                else:
                    mem[128] = uint256(stor30[arg1][11].field_0)
                    idx = 128
                    s = 0
                    while stor30[arg1].field_2817 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor30[arg1][s + 11].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        return uint256(stor30[arg1].field_0), 
               uint256(stor30[arg1].field_256),
               uint256(stor30[arg1].field_512),
               uint256(stor30[arg1].field_768),
               uint256(stor30[arg1].field_1024),
               uint256(stor30[arg1].field_1280),
               uint256(stor30[arg1].field_1536),
               uint256(stor30[arg1].field_1792),
               address(stor30[arg1].field_2048),
               address(stor30[arg1].field_2304),
               address(stor30[arg1].field_2560),
               Array(len=2 * Mask(256, -1, uint256(stor30[arg1].field_2816)), data=mem[128 len ceil32(uint255(uint256(stor30[arg1].field_2816)) * 0.5)]),
               uint256(stor30[arg1].field_3072)
    if bool(stor30[arg1].field_2816) == stor30[arg1].field_2817 % 128 < 32:
        revert with 0, 34
    if bool(stor30[arg1].field_2816):
        if bool(stor30[arg1].field_2816) == uint255(uint256(stor30[arg1].field_2816)) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, uint256(stor30[arg1].field_2816)):
            if 31 >= uint255(uint256(stor30[arg1].field_2816)) * 0.5:
                mem[128] = 256 * Mask(248, 0, stor30[arg1].field_2824)
            else:
                mem[128] = uint256(stor30[arg1][11].field_0)
                idx = 128
                s = 0
                while (uint255(uint256(stor30[arg1].field_2816)) * 0.5) + 96 > idx:
                    mem[idx + 32] = uint256(stor30[arg1][s + 11].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor30[arg1].field_2816) == stor30[arg1].field_2817 % 128 < 32:
            revert with 0, 34
        if stor30[arg1].field_2817 % 128:
            if 31 >= stor30[arg1].field_2817 % 128:
                mem[128] = 256 * Mask(248, 0, stor30[arg1].field_2824)
            else:
                mem[128] = uint256(stor30[arg1][11].field_0)
                idx = 128
                s = 0
                while stor30[arg1].field_2817 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor30[arg1][s + 11].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    return uint256(stor30[arg1].field_0), 
           uint256(stor30[arg1].field_256),
           uint256(stor30[arg1].field_512),
           uint256(stor30[arg1].field_768),
           uint256(stor30[arg1].field_1024),
           uint256(stor30[arg1].field_1280),
           uint256(stor30[arg1].field_1536),
           uint256(stor30[arg1].field_1792),
           address(stor30[arg1].field_2048),
           address(stor30[arg1].field_2304),
           address(stor30[arg1].field_2560),
           Array(len=stor30[arg1].field_2816 % 128, data=mem[128 len ceil32(stor30[arg1].field_2817 % 128)]),
           uint256(stor30[arg1].field_3072)
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0, '', 0
    if bool(stor7[arg1].field_0):
        if bool(stor7[arg1].field_0) == uint255(uint256(stor7[arg1].field_0)) * 0.5 < 32:
            revert with 0, 34
        if bool(stor7[arg1].field_0):
            if bool(stor7[arg1].field_0) == uint255(uint256(stor7[arg1].field_0)) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, uint256(stor7[arg1].field_0)):
                if 31 < uint255(uint256(stor7[arg1].field_0)) * 0.5:
                    mem[192] = uint256(stor7[arg1].field_0)
                    idx = 192
                    s = 0
                    while (uint255(uint256(stor7[arg1].field_0)) * 0.5) + 160 > idx:
                        mem[idx + 32] = uint256(stor7[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint256(stor7[arg1].field_0)), data=mem[192 len ceil32(uint255(uint256(stor7[arg1].field_0)) * 0.5)]), 
                mem[192] = 256 * Mask(248, 0, stor7[arg1].field_8)
        else:
            if bool(stor7[arg1].field_0) == stor7[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor7[arg1].field_1 % 128:
                if 31 < stor7[arg1].field_1 % 128:
                    mem[192] = uint256(stor7[arg1].field_0)
                    idx = 192
                    s = 0
                    while stor7[arg1].field_1 % 128 + 160 > idx:
                        mem[idx + 32] = uint256(stor7[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint256(stor7[arg1].field_0)), data=mem[192 len ceil32(uint255(uint256(stor7[arg1].field_0)) * 0.5)]), 
                mem[192] = 256 * Mask(248, 0, stor7[arg1].field_8)
        mem[ceil32(uint255(uint256(stor7[arg1].field_0)) * 0.5) + 256 len ceil32(uint255(uint256(stor7[arg1].field_0)) * 0.5)] = mem[192 len ceil32(uint255(uint256(stor7[arg1].field_0)) * 0.5)]
        if ceil32(uint255(uint256(stor7[arg1].field_0)) * 0.5) > uint255(uint256(stor7[arg1].field_0)) * 0.5:
            mem[(uint255(uint256(stor7[arg1].field_0)) * 0.5) + ceil32(uint255(uint256(stor7[arg1].field_0)) * 0.5) + 256] = 0
        return Array(len=2 * Mask(256, -1, uint256(stor7[arg1].field_0)), data=mem[192 len ceil32(uint255(uint256(stor7[arg1].field_0)) * 0.5)], mem[(2 * ceil32(uint255(uint256(stor7[arg1].field_0)) * 0.5)) + 256 len 2 * ceil32(uint255(uint256(stor7[arg1].field_0)) * 0.5)]), 
    if bool(stor7[arg1].field_0) == stor7[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor7[arg1].field_0):
        if bool(stor7[arg1].field_0) == uint255(uint256(stor7[arg1].field_0)) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, uint256(stor7[arg1].field_0)):
            if 31 < uint255(uint256(stor7[arg1].field_0)) * 0.5:
                mem[192] = uint256(stor7[arg1].field_0)
                idx = 192
                s = 0
                while (uint255(uint256(stor7[arg1].field_0)) * 0.5) + 160 > idx:
                    mem[idx + 32] = uint256(stor7[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7[arg1].field_0 % 128, data=mem[192 len ceil32(stor7[arg1].field_1 % 128)])
            mem[192] = 256 * Mask(248, 0, stor7[arg1].field_8)
    else:
        if bool(stor7[arg1].field_0) == stor7[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor7[arg1].field_1 % 128:
            if 31 < stor7[arg1].field_1 % 128:
                mem[192] = uint256(stor7[arg1].field_0)
                idx = 192
                s = 0
                while stor7[arg1].field_1 % 128 + 160 > idx:
                    mem[idx + 32] = uint256(stor7[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7[arg1].field_0 % 128, data=mem[192 len ceil32(stor7[arg1].field_1 % 128)])
            mem[192] = 256 * Mask(248, 0, stor7[arg1].field_8)
    mem[ceil32(stor7[arg1].field_1 % 128) + 256 len ceil32(stor7[arg1].field_1 % 128)] = mem[192 len ceil32(stor7[arg1].field_1 % 128)]
    if ceil32(stor7[arg1].field_1 % 128) > stor7[arg1].field_1 % 128:
        mem[stor7[arg1].field_1 % 128 + ceil32(stor7[arg1].field_1 % 128) + 256] = 0
    return Array(len=stor7[arg1].field_0 % 128, data=mem[192 len ceil32(stor7[arg1].field_1 % 128)], mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + 256 len 2 * ceil32(stor7[arg1].field_1 % 128)]), 
}

function sub_f67bb3ab(?) {
    require calldata.size - 4 >= 32
    if not address(stor30[arg1].field_2048):
        if not uint256(sub_f7e65b1c[arg1].field_0):
            return 0
    else:
        if uint256(stor30[arg1].field_1536):
            if not uint256(sub_f7e65b1c[arg1].field_0):
                return 0
    if not uint256(sub_f7e65b1c[arg1].field_0):
        if not uint256(sub_f7e65b1c[arg1].field_0):
            if not uint256(sub_f7e65b1c[arg1].field_0):
                if uint256(stor30[arg1].field_1280):
                    return uint256(stor30[arg1].field_768), 
                           uint256(sub_f7e65b1c[arg1].field_0),
                           0,
                           0,
                           uint256(stor30[arg1].field_768) >= uint256(stor30[arg1].field_1024),
                           block.timestamp >= uint256(stor30[arg1].field_1280),
                           1 == uint256(stor30[arg1].field_1536)
                if uint256(stor30[arg1].field_3072) > !sub_418bc156:
                    revert with 0, 17
                return uint256(stor30[arg1].field_768), 
                       uint256(sub_f7e65b1c[arg1].field_0),
                       0,
                       0,
                       uint256(stor30[arg1].field_768) >= uint256(stor30[arg1].field_1024),
                       block.timestamp >= uint256(stor30[arg1].field_3072) + sub_418bc156,
                       1 == uint256(stor30[arg1].field_1536)
            if uint256(sub_f7e65b1c[arg1].field_0) < 1:
                revert with 0, 17
            if uint256(sub_f7e65b1c[arg1].field_0) - 1 >= uint256(sub_f7e65b1c[arg1].field_0):
                revert with 0, 50
            if uint256(stor30[arg1].field_1280):
                return uint256(stor30[arg1].field_768), 
                       uint256(sub_f7e65b1c[arg1].field_0),
                       0,
                       address(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_0),
                       uint256(stor30[arg1].field_768) >= uint256(stor30[arg1].field_1024),
                       block.timestamp >= uint256(stor30[arg1].field_1280),
                       1 == uint256(stor30[arg1].field_1536)
            if uint256(stor30[arg1].field_3072) > !sub_418bc156:
                revert with 0, 17
            return uint256(stor30[arg1].field_768), 
                   uint256(sub_f7e65b1c[arg1].field_0),
                   0,
                   address(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_0),
                   uint256(stor30[arg1].field_768) >= uint256(stor30[arg1].field_1024),
                   block.timestamp >= uint256(stor30[arg1].field_3072) + sub_418bc156,
                   1 == uint256(stor30[arg1].field_1536)
        idx = 0
        s = 0
        while idx < uint256(sub_f7e65b1c[arg1].field_0):
            if idx >= uint256(sub_f7e65b1c[arg1].field_0):
                revert with 0, 50
            if address(sub_f7e65b1c[arg1][idx].field_0) != address(stor30[arg1].field_2048):
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 31
                idx = idx + 1
                s = s
                continue 
            if s > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 31
            idx = idx + 1
            s = s + 1
            continue 
        if not uint256(sub_f7e65b1c[arg1].field_0):
            if uint256(stor30[arg1].field_1280):
                return uint256(stor30[arg1].field_768), 
                       uint256(sub_f7e65b1c[arg1].field_0),
                       s,
                       0,
                       uint256(stor30[arg1].field_768) >= uint256(stor30[arg1].field_1024),
                       block.timestamp >= uint256(stor30[arg1].field_1280),
                       1 == uint256(stor30[arg1].field_1536)
            if uint256(stor30[arg1].field_3072) > !sub_418bc156:
                revert with 0, 17
            return uint256(stor30[arg1].field_768), 
                   uint256(sub_f7e65b1c[arg1].field_0),
                   s,
                   0,
                   uint256(stor30[arg1].field_768) >= uint256(stor30[arg1].field_1024),
                   block.timestamp >= uint256(stor30[arg1].field_3072) + sub_418bc156,
                   1 == uint256(stor30[arg1].field_1536)
        if uint256(sub_f7e65b1c[arg1].field_0) < 1:
            revert with 0, 17
        if uint256(sub_f7e65b1c[arg1].field_0) - 1 >= uint256(sub_f7e65b1c[arg1].field_0):
            revert with 0, 50
        if uint256(stor30[arg1].field_1280):
            return uint256(stor30[arg1].field_768), 
                   uint256(sub_f7e65b1c[arg1].field_0),
                   s,
                   address(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_0),
                   uint256(stor30[arg1].field_768) >= uint256(stor30[arg1].field_1024),
                   block.timestamp >= uint256(stor30[arg1].field_1280),
                   1 == uint256(stor30[arg1].field_1536)
        if uint256(stor30[arg1].field_3072) > !sub_418bc156:
            revert with 0, 17
        return uint256(stor30[arg1].field_768), 
               uint256(sub_f7e65b1c[arg1].field_0),
               s,
               address(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_0),
               uint256(stor30[arg1].field_768) >= uint256(stor30[arg1].field_1024),
               block.timestamp >= uint256(stor30[arg1].field_3072) + sub_418bc156,
               1 == uint256(stor30[arg1].field_1536)
    if uint256(sub_f7e65b1c[arg1].field_0) < 1:
        revert with 0, 17
    if uint256(sub_f7e65b1c[arg1].field_0) - 1 >= uint256(sub_f7e65b1c[arg1].field_0):
        revert with 0, 50
    if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) <= 0:
        if not uint256(sub_f7e65b1c[arg1].field_0):
            if not uint256(sub_f7e65b1c[arg1].field_0):
                if uint256(stor30[arg1].field_1280):
                    return uint256(stor30[arg1].field_768), 
                           uint256(sub_f7e65b1c[arg1].field_0),
                           0,
                           0,
                           uint256(stor30[arg1].field_768) >= uint256(stor30[arg1].field_1024),
                           block.timestamp >= uint256(stor30[arg1].field_1280),
                           1 == uint256(stor30[arg1].field_1536)
                if uint256(stor30[arg1].field_3072) > !sub_418bc156:
                    revert with 0, 17
                return uint256(stor30[arg1].field_768), 
                       uint256(sub_f7e65b1c[arg1].field_0),
                       0,
                       0,
                       uint256(stor30[arg1].field_768) >= uint256(stor30[arg1].field_1024),
                       block.timestamp >= uint256(stor30[arg1].field_3072) + sub_418bc156,
                       1 == uint256(stor30[arg1].field_1536)
            if uint256(sub_f7e65b1c[arg1].field_0) < 1:
                revert with 0, 17
            if uint256(sub_f7e65b1c[arg1].field_0) - 1 >= uint256(sub_f7e65b1c[arg1].field_0):
                revert with 0, 50
            if uint256(stor30[arg1].field_1280):
                return uint256(stor30[arg1].field_768), 
                       uint256(sub_f7e65b1c[arg1].field_0),
                       0,
                       address(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_0),
                       uint256(stor30[arg1].field_768) >= uint256(stor30[arg1].field_1024),
                       block.timestamp >= uint256(stor30[arg1].field_1280),
                       1 == uint256(stor30[arg1].field_1536)
            if uint256(stor30[arg1].field_3072) > !sub_418bc156:
                revert with 0, 17
            return uint256(stor30[arg1].field_768), 
                   uint256(sub_f7e65b1c[arg1].field_0),
                   0,
                   address(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_0),
                   uint256(stor30[arg1].field_768) >= uint256(stor30[arg1].field_1024),
                   block.timestamp >= uint256(stor30[arg1].field_3072) + sub_418bc156,
                   1 == uint256(stor30[arg1].field_1536)
        idx = 0
        s = 0
        while idx < uint256(sub_f7e65b1c[arg1].field_0):
            if idx >= uint256(sub_f7e65b1c[arg1].field_0):
                revert with 0, 50
            if address(sub_f7e65b1c[arg1][idx].field_0) != address(stor30[arg1].field_2048):
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 31
                idx = idx + 1
                s = s
                continue 
            if s > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 31
            idx = idx + 1
            s = s + 1
            continue 
        if not uint256(sub_f7e65b1c[arg1].field_0):
            if uint256(stor30[arg1].field_1280):
                return uint256(stor30[arg1].field_768), 
                       uint256(sub_f7e65b1c[arg1].field_0),
                       s,
                       0,
                       uint256(stor30[arg1].field_768) >= uint256(stor30[arg1].field_1024),
                       block.timestamp >= uint256(stor30[arg1].field_1280),
                       1 == uint256(stor30[arg1].field_1536)
            if uint256(stor30[arg1].field_3072) > !sub_418bc156:
                revert with 0, 17
            return uint256(stor30[arg1].field_768), 
                   uint256(sub_f7e65b1c[arg1].field_0),
                   s,
                   0,
                   uint256(stor30[arg1].field_768) >= uint256(stor30[arg1].field_1024),
                   block.timestamp >= uint256(stor30[arg1].field_3072) + sub_418bc156,
                   1 == uint256(stor30[arg1].field_1536)
        if uint256(sub_f7e65b1c[arg1].field_0) < 1:
            revert with 0, 17
        if uint256(sub_f7e65b1c[arg1].field_0) - 1 >= uint256(sub_f7e65b1c[arg1].field_0):
            revert with 0, 50
        if uint256(stor30[arg1].field_1280):
            return uint256(stor30[arg1].field_768), 
                   uint256(sub_f7e65b1c[arg1].field_0),
                   s,
                   address(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_0),
                   uint256(stor30[arg1].field_768) >= uint256(stor30[arg1].field_1024),
                   block.timestamp >= uint256(stor30[arg1].field_1280),
                   1 == uint256(stor30[arg1].field_1536)
        if uint256(stor30[arg1].field_3072) > !sub_418bc156:
            revert with 0, 17
        return uint256(stor30[arg1].field_768), 
               uint256(sub_f7e65b1c[arg1].field_0),
               s,
               address(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_0),
               uint256(stor30[arg1].field_768) >= uint256(stor30[arg1].field_1024),
               block.timestamp >= uint256(stor30[arg1].field_3072) + sub_418bc156,
               1 == uint256(stor30[arg1].field_1536)
    if not uint256(sub_f7e65b1c[arg1].field_0):
        if not uint256(sub_f7e65b1c[arg1].field_0):
            if not uint256(sub_f7e65b1c[arg1].field_0):
                if uint256(stor30[arg1].field_1280):
                    return 0, 
                           uint256(sub_f7e65b1c[arg1].field_0),
                           0,
                           0,
                           0 >= uint256(stor30[arg1].field_1024),
                           block.timestamp >= uint256(stor30[arg1].field_1280),
                           1 == uint256(stor30[arg1].field_1536)
                if uint256(stor30[arg1].field_3072) > !sub_418bc156:
                    revert with 0, 17
                return 0, 
                       uint256(sub_f7e65b1c[arg1].field_0),
                       0,
                       0,
                       0 >= uint256(stor30[arg1].field_1024),
                       block.timestamp >= uint256(stor30[arg1].field_3072) + sub_418bc156,
                       1 == uint256(stor30[arg1].field_1536)
            if uint256(sub_f7e65b1c[arg1].field_0) < 1:
                revert with 0, 17
            if uint256(sub_f7e65b1c[arg1].field_0) - 1 >= uint256(sub_f7e65b1c[arg1].field_0):
                revert with 0, 50
            if uint256(stor30[arg1].field_1280):
                return 0, 
                       uint256(sub_f7e65b1c[arg1].field_0),
                       0,
                       address(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_0),
                       0 >= uint256(stor30[arg1].field_1024),
                       block.timestamp >= uint256(stor30[arg1].field_1280),
                       1 == uint256(stor30[arg1].field_1536)
            if uint256(stor30[arg1].field_3072) > !sub_418bc156:
                revert with 0, 17
            return 0, 
                   uint256(sub_f7e65b1c[arg1].field_0),
                   0,
                   address(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_0),
                   0 >= uint256(stor30[arg1].field_1024),
                   block.timestamp >= uint256(stor30[arg1].field_3072) + sub_418bc156,
                   1 == uint256(stor30[arg1].field_1536)
        idx = 0
        s = 0
        while idx < uint256(sub_f7e65b1c[arg1].field_0):
            if idx >= uint256(sub_f7e65b1c[arg1].field_0):
                revert with 0, 50
            if address(sub_f7e65b1c[arg1][idx].field_0) != address(stor30[arg1].field_2048):
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 31
                idx = idx + 1
                s = s
                continue 
            if s > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 31
            idx = idx + 1
            s = s + 1
            continue 
        if not uint256(sub_f7e65b1c[arg1].field_0):
            if uint256(stor30[arg1].field_1280):
                return 0, 
                       uint256(sub_f7e65b1c[arg1].field_0),
                       s,
                       0,
                       0 >= uint256(stor30[arg1].field_1024),
                       block.timestamp >= uint256(stor30[arg1].field_1280),
                       1 == uint256(stor30[arg1].field_1536)
            if uint256(stor30[arg1].field_3072) > !sub_418bc156:
                revert with 0, 17
            return 0, 
                   uint256(sub_f7e65b1c[arg1].field_0),
                   s,
                   0,
                   0 >= uint256(stor30[arg1].field_1024),
                   block.timestamp >= uint256(stor30[arg1].field_3072) + sub_418bc156,
                   1 == uint256(stor30[arg1].field_1536)
        if uint256(sub_f7e65b1c[arg1].field_0) < 1:
            revert with 0, 17
        if uint256(sub_f7e65b1c[arg1].field_0) - 1 >= uint256(sub_f7e65b1c[arg1].field_0):
            revert with 0, 50
        if uint256(stor30[arg1].field_1280):
            return 0, 
                   uint256(sub_f7e65b1c[arg1].field_0),
                   s,
                   address(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_0),
                   0 >= uint256(stor30[arg1].field_1024),
                   block.timestamp >= uint256(stor30[arg1].field_1280),
                   1 == uint256(stor30[arg1].field_1536)
        if uint256(stor30[arg1].field_3072) > !sub_418bc156:
            revert with 0, 17
        return 0, 
               uint256(sub_f7e65b1c[arg1].field_0),
               s,
               address(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_0),
               0 >= uint256(stor30[arg1].field_1024),
               block.timestamp >= uint256(stor30[arg1].field_3072) + sub_418bc156,
               1 == uint256(stor30[arg1].field_1536)
    if uint256(sub_f7e65b1c[arg1].field_0) < 1:
        revert with 0, 17
    if uint256(sub_f7e65b1c[arg1].field_0) - 1 >= uint256(sub_f7e65b1c[arg1].field_0):
        revert with 0, 50
    if not uint256(sub_f7e65b1c[arg1].field_0):
        if not uint256(sub_f7e65b1c[arg1].field_0):
            if uint256(stor30[arg1].field_1280):
                return uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256), 
                       uint256(sub_f7e65b1c[arg1].field_0),
                       0,
                       0,
                       uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) >= uint256(stor30[arg1].field_1024),
                       block.timestamp >= uint256(stor30[arg1].field_1280),
                       1 == uint256(stor30[arg1].field_1536)
            if uint256(stor30[arg1].field_3072) > !sub_418bc156:
                revert with 0, 17
            return uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256), 
                   uint256(sub_f7e65b1c[arg1].field_0),
                   0,
                   0,
                   uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) >= uint256(stor30[arg1].field_1024),
                   block.timestamp >= uint256(stor30[arg1].field_3072) + sub_418bc156,
                   1 == uint256(stor30[arg1].field_1536)
        if uint256(sub_f7e65b1c[arg1].field_0) < 1:
            revert with 0, 17
        if uint256(sub_f7e65b1c[arg1].field_0) - 1 >= uint256(sub_f7e65b1c[arg1].field_0):
            revert with 0, 50
        if uint256(stor30[arg1].field_1280):
            return uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256), 
                   uint256(sub_f7e65b1c[arg1].field_0),
                   0,
                   address(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_0),
                   uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) >= uint256(stor30[arg1].field_1024),
                   block.timestamp >= uint256(stor30[arg1].field_1280),
                   1 == uint256(stor30[arg1].field_1536)
        if uint256(stor30[arg1].field_3072) > !sub_418bc156:
            revert with 0, 17
        return uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256), 
               uint256(sub_f7e65b1c[arg1].field_0),
               0,
               address(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_0),
               uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) >= uint256(stor30[arg1].field_1024),
               block.timestamp >= uint256(stor30[arg1].field_3072) + sub_418bc156,
               1 == uint256(stor30[arg1].field_1536)
    idx = 0
    s = 0
    while idx < uint256(sub_f7e65b1c[arg1].field_0):
        if idx >= uint256(sub_f7e65b1c[arg1].field_0):
            revert with 0, 50
        if address(sub_f7e65b1c[arg1][idx].field_0) != address(stor30[arg1].field_2048):
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 31
            idx = idx + 1
            s = s
            continue 
        if s > -2:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        mem[0] = arg1
        mem[32] = 31
        idx = idx + 1
        s = s + 1
        continue 
    if not uint256(sub_f7e65b1c[arg1].field_0):
        if uint256(stor30[arg1].field_1280):
            return uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256), 
                   uint256(sub_f7e65b1c[arg1].field_0),
                   s,
                   0,
                   uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) >= uint256(stor30[arg1].field_1024),
                   block.timestamp >= uint256(stor30[arg1].field_1280),
                   1 == uint256(stor30[arg1].field_1536)
        if uint256(stor30[arg1].field_3072) > !sub_418bc156:
            revert with 0, 17
        return uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256), 
               uint256(sub_f7e65b1c[arg1].field_0),
               s,
               0,
               uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) >= uint256(stor30[arg1].field_1024),
               block.timestamp >= uint256(stor30[arg1].field_3072) + sub_418bc156,
               1 == uint256(stor30[arg1].field_1536)
    if uint256(sub_f7e65b1c[arg1].field_0) < 1:
        revert with 0, 17
    if uint256(sub_f7e65b1c[arg1].field_0) - 1 >= uint256(sub_f7e65b1c[arg1].field_0):
        revert with 0, 50
    if uint256(stor30[arg1].field_1280):
        return uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256), 
               uint256(sub_f7e65b1c[arg1].field_0),
               s,
               address(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_0),
               uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) >= uint256(stor30[arg1].field_1024),
               block.timestamp >= uint256(stor30[arg1].field_1280),
               1 == uint256(stor30[arg1].field_1536)
    if uint256(stor30[arg1].field_3072) > !sub_418bc156:
        revert with 0, 17
    return uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256), 
           uint256(sub_f7e65b1c[arg1].field_0),
           s,
           address(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_0),
           uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) >= uint256(stor30[arg1].field_1024),
           block.timestamp >= uint256(stor30[arg1].field_3072) + sub_418bc156,
           1 == uint256(stor30[arg1].field_1536)
}

function sub_ae23e191(?) payable {
    require calldata.size - 4 >= 32
    if not address(stor30[arg1].field_2048):
        revert with 0, 'No active sale'
    if uint256(stor30[arg1].field_1536):
        revert with 0, 'No active sale'
    if not uint256(stor30[arg1].field_1280):
        if msg.value < uint256(stor30[arg1].field_512):
            revert with 0, 'Insufficient amount sent'
        uint256(stor30[arg1].field_1536) = 1
        if sub_07889cc9.length < 1:
            revert with 0, 17
        if sub_07889cc9.length - 1 >= sub_07889cc9.length:
            revert with 0, 50
        if sub_e63e0318[arg1] >= sub_07889cc9.length:
            revert with 0, 50
        sub_07889cc9[stor36[arg1]] = sub_07889cc9[sub_07889cc9.length]
        if sub_07889cc9.length < 1:
            revert with 0, 17
        if sub_07889cc9.length - 1 >= sub_07889cc9.length:
            revert with 0, 50
        sub_e63e0318[stor35[stor35.length]] = sub_e63e0318[arg1]
        if not sub_07889cc9.length:
            revert with 0, 49
        sub_07889cc9[sub_07889cc9.length] = 0
        sub_07889cc9.length--
        if msg.value:
            if not uint256(stor30[arg1].field_512):
                address(stor30[arg1].field_2304) = msg.sender
                uint256(stor30[arg1].field_1792) = msg.value
                uint256(stor30[arg1].field_1536) = block.timestamp
                require ext_code.size(address(stor30[arg1].field_2560))
                call address(stor30[arg1].field_2560).0x42842e0e with:
                     gas gas_remaining wei
                    args this.address, msg.sender, uint256(stor30[arg1].field_256)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if msg.value and stor17 > -1 / msg.value:
                    revert with 0, 17
                if not stor19:
                    revert with 0, 18
                if msg.value and stor12 > -1 / msg.value:
                    revert with 0, 17
                if not stor19:
                    revert with 0, 18
                if msg.value * stor12 / stor19:
                    require ext_code.size(stor13)
                    call stor13.0xd0e30db0 with:
                       value msg.value * stor12 / stor19 wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if msg.value * stor17 / stor19:
                    if not stor15[address(stor30[arg1].field_2560)][uint256(stor30[arg1].field_256)]:
                        if msg.value * stor17 / stor19 and stor11 > -1 / msg.value * stor17 / stor19:
                            revert with 0, 17
                        call address(stor10.field_8) with:
                           value msg.value * stor17 / stor19 * stor11 / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if msg.value * stor17 / stor19 < msg.value * stor17 / stor19 * stor11 / 100:
                            revert with 0, 17
                        call stor21 with:
                           value (msg.value * stor17 / stor19) - (msg.value * stor17 / stor19 * stor11 / 100) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        if stor16[address(msg.sender)] == -1:
                            revert with 0, 17
                        stor16[address(msg.sender)]++
                        if stor16[address(stor30[arg1].field_2048)]:
                            if not stor16[address(stor30[arg1].field_2048)]:
                                revert with 0, 17
                            stor16[address(stor30[arg1].field_2048)]--
                            require ext_code.size(stor14)
                            call stor14.0x8bccbf62 with:
                                 gas gas_remaining wei
                                args address(stor30[arg1].field_2048), stor16[address(stor30[arg1].field_2048)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(stor14)
                        call stor14.0x8bccbf62 with:
                             gas gas_remaining wei
                            args msg.sender, stor16[address(msg.sender)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(stor14)
                        call stor14.0xd0e30db0 with:
                           value msg.value * stor17 / stor19 wei
                             gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if msg.value * stor17 / stor19 > !(msg.value * stor12 / stor19):
                    revert with 0, 17
                if msg.value < (msg.value * stor17 / stor19) + (msg.value * stor12 / stor19):
                    revert with 0, 17
                call address(stor30[arg1].field_2048) with:
                   value msg.value - (msg.value * stor17 / stor19) - (msg.value * stor12 / stor19) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                sub_3f88d08a[address(stor30[arg1].field_2560)]++
                sub_3f88d08a[address(stor30[arg1].field_2560)][sub_3f88d08a[address(stor30[arg1].field_2560)]] = arg1
                if address(stor30[arg1].field_2048) != msg.sender:
                    if block.timestamp < stor48:
                        revert with 0, 17
                    if block.timestamp - stor48 >= 24 * 3600:
                        sub_95ddf83a[address(stor30[arg1].field_2560)] = 0
                        stor48 = block.timestamp
                    if sub_95ddf83a[address(stor30[arg1].field_2560)] > !msg.value:
                        revert with 0, 17
                    sub_95ddf83a[address(stor30[arg1].field_2560)] += msg.value
                    if sub_c38694a5[address(stor30[arg1].field_2560)] > !msg.value:
                        revert with 0, 17
                    sub_c38694a5[address(stor30[arg1].field_2560)] += msg.value
                    if sub_92f62add[address(stor30[arg1].field_2560)][uint256(stor30[arg1].field_256)] > !msg.value:
                        revert with 0, 17
                    sub_92f62add[address(stor30[arg1].field_2560)][uint256(stor30[arg1].field_256)] += msg.value
                    if msg.value > uint256(stor30[stor52].field_1792):
                        sub_9b175d77 = arg1
                    if not uint256(stor30[stor53].field_1792):
                        sub_362f53ca = arg1
                    else:
                        if msg.value < uint256(stor30[stor53].field_1792):
                            sub_362f53ca = arg1
                emit 0xa75e4909: arg1, msg.value
            else:
                if msg.value <= uint256(stor30[arg1].field_512):
                    address(stor30[arg1].field_2304) = msg.sender
                    uint256(stor30[arg1].field_1792) = msg.value
                    uint256(stor30[arg1].field_1536) = block.timestamp
                    require ext_code.size(address(stor30[arg1].field_2560))
                    call address(stor30[arg1].field_2560).0x42842e0e with:
                         gas gas_remaining wei
                        args this.address, msg.sender, uint256(stor30[arg1].field_256)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if msg.value and stor17 > -1 / msg.value:
                        revert with 0, 17
                    if not stor19:
                        revert with 0, 18
                    if msg.value and stor12 > -1 / msg.value:
                        revert with 0, 17
                    if not stor19:
                        revert with 0, 18
                    if msg.value * stor12 / stor19:
                        require ext_code.size(stor13)
                        call stor13.0xd0e30db0 with:
                           value msg.value * stor12 / stor19 wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if msg.value * stor17 / stor19:
                        if not stor15[address(stor30[arg1].field_2560)][uint256(stor30[arg1].field_256)]:
                            if msg.value * stor17 / stor19 and stor11 > -1 / msg.value * stor17 / stor19:
                                revert with 0, 17
                            call address(stor10.field_8) with:
                               value msg.value * stor17 / stor19 * stor11 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if msg.value * stor17 / stor19 < msg.value * stor17 / stor19 * stor11 / 100:
                                revert with 0, 17
                            call stor21 with:
                               value (msg.value * stor17 / stor19) - (msg.value * stor17 / stor19 * stor11 / 100) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            if stor16[address(msg.sender)] == -1:
                                revert with 0, 17
                            stor16[address(msg.sender)]++
                            if stor16[address(stor30[arg1].field_2048)]:
                                if not stor16[address(stor30[arg1].field_2048)]:
                                    revert with 0, 17
                                stor16[address(stor30[arg1].field_2048)]--
                                require ext_code.size(stor14)
                                call stor14.0x8bccbf62 with:
                                     gas gas_remaining wei
                                    args address(stor30[arg1].field_2048), stor16[address(stor30[arg1].field_2048)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(stor14)
                            call stor14.0x8bccbf62 with:
                                 gas gas_remaining wei
                                args msg.sender, stor16[address(msg.sender)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(stor14)
                            call stor14.0xd0e30db0 with:
                               value msg.value * stor17 / stor19 wei
                                 gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if msg.value * stor17 / stor19 > !(msg.value * stor12 / stor19):
                        revert with 0, 17
                    if msg.value < (msg.value * stor17 / stor19) + (msg.value * stor12 / stor19):
                        revert with 0, 17
                    call address(stor30[arg1].field_2048) with:
                       value msg.value - (msg.value * stor17 / stor19) - (msg.value * stor12 / stor19) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    sub_3f88d08a[address(stor30[arg1].field_2560)]++
                    sub_3f88d08a[address(stor30[arg1].field_2560)][sub_3f88d08a[address(stor30[arg1].field_2560)]] = arg1
                    if address(stor30[arg1].field_2048) != msg.sender:
                        if block.timestamp < stor48:
                            revert with 0, 17
                        if block.timestamp - stor48 >= 24 * 3600:
                            sub_95ddf83a[address(stor30[arg1].field_2560)] = 0
                            stor48 = block.timestamp
                        if sub_95ddf83a[address(stor30[arg1].field_2560)] > !msg.value:
                            revert with 0, 17
                        sub_95ddf83a[address(stor30[arg1].field_2560)] += msg.value
                        if sub_c38694a5[address(stor30[arg1].field_2560)] > !msg.value:
                            revert with 0, 17
                        sub_c38694a5[address(stor30[arg1].field_2560)] += msg.value
                        if sub_92f62add[address(stor30[arg1].field_2560)][uint256(stor30[arg1].field_256)] > !msg.value:
                            revert with 0, 17
                        sub_92f62add[address(stor30[arg1].field_2560)][uint256(stor30[arg1].field_256)] += msg.value
                        if msg.value > uint256(stor30[stor52].field_1792):
                            sub_9b175d77 = arg1
                        if not uint256(stor30[stor53].field_1792):
                            sub_362f53ca = arg1
                        else:
                            if msg.value < uint256(stor30[stor53].field_1792):
                                sub_362f53ca = arg1
                    emit 0xa75e4909: arg1, msg.value
                else:
                    if msg.value < uint256(stor30[arg1].field_512):
                        revert with 0, 17
                    call msg.sender with:
                       value msg.value - uint256(stor30[arg1].field_512) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    address(stor30[arg1].field_2304) = msg.sender
                    uint256(stor30[arg1].field_1792) = uint256(stor30[arg1].field_512)
                    uint256(stor30[arg1].field_1536) = block.timestamp
                    require ext_code.size(address(stor30[arg1].field_2560))
                    call address(stor30[arg1].field_2560).0x42842e0e with:
                         gas gas_remaining wei
                        args this.address, msg.sender, uint256(stor30[arg1].field_256)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if uint256(stor30[arg1].field_512) and stor17 > -1 / uint256(stor30[arg1].field_512):
                        revert with 0, 17
                    if not stor19:
                        revert with 0, 18
                    if uint256(stor30[arg1].field_512) and stor12 > -1 / uint256(stor30[arg1].field_512):
                        revert with 0, 17
                    if not stor19:
                        revert with 0, 18
                    if uint256(stor30[arg1].field_512) * stor12 / stor19:
                        require ext_code.size(stor13)
                        call stor13.0xd0e30db0 with:
                           value uint256(stor30[arg1].field_512) * stor12 / stor19 wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if uint256(stor30[arg1].field_512) * stor17 / stor19:
                        if not stor15[address(stor30[arg1].field_2560)][uint256(stor30[arg1].field_256)]:
                            if uint256(stor30[arg1].field_512) * stor17 / stor19 and stor11 > -1 / uint256(stor30[arg1].field_512) * stor17 / stor19:
                                revert with 0, 17
                            call address(stor10.field_8) with:
                               value uint256(stor30[arg1].field_512) * stor17 / stor19 * stor11 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if uint256(stor30[arg1].field_512) * stor17 / stor19 < uint256(stor30[arg1].field_512) * stor17 / stor19 * stor11 / 100:
                                revert with 0, 17
                            call stor21 with:
                               value (uint256(stor30[arg1].field_512) * stor17 / stor19) - (uint256(stor30[arg1].field_512) * stor17 / stor19 * stor11 / 100) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            if stor16[address(msg.sender)] == -1:
                                revert with 0, 17
                            stor16[address(msg.sender)]++
                            if stor16[address(stor30[arg1].field_2048)]:
                                if not stor16[address(stor30[arg1].field_2048)]:
                                    revert with 0, 17
                                stor16[address(stor30[arg1].field_2048)]--
                                require ext_code.size(stor14)
                                call stor14.0x8bccbf62 with:
                                     gas gas_remaining wei
                                    args address(stor30[arg1].field_2048), stor16[address(stor30[arg1].field_2048)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(stor14)
                            call stor14.0x8bccbf62 with:
                                 gas gas_remaining wei
                                args msg.sender, stor16[address(msg.sender)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(stor14)
                            call stor14.0xd0e30db0 with:
                               value uint256(stor30[arg1].field_512) * stor17 / stor19 wei
                                 gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if uint256(stor30[arg1].field_512) * stor17 / stor19 > !(uint256(stor30[arg1].field_512) * stor12 / stor19):
                        revert with 0, 17
                    if uint256(stor30[arg1].field_512) < (uint256(stor30[arg1].field_512) * stor17 / stor19) + (uint256(stor30[arg1].field_512) * stor12 / stor19):
                        revert with 0, 17
                    call address(stor30[arg1].field_2048) with:
                       value uint256(stor30[arg1].field_512) - (uint256(stor30[arg1].field_512) * stor17 / stor19) - (uint256(stor30[arg1].field_512) * stor12 / stor19) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    sub_3f88d08a[address(stor30[arg1].field_2560)]++
                    sub_3f88d08a[address(stor30[arg1].field_2560)][sub_3f88d08a[address(stor30[arg1].field_2560)]] = arg1
                    if address(stor30[arg1].field_2048) != msg.sender:
                        if block.timestamp < stor48:
                            revert with 0, 17
                        if block.timestamp - stor48 >= 24 * 3600:
                            sub_95ddf83a[address(stor30[arg1].field_2560)] = 0
                            stor48 = block.timestamp
                        if sub_95ddf83a[address(stor30[arg1].field_2560)] > !uint256(stor30[arg1].field_512):
                            revert with 0, 17
                        sub_95ddf83a[address(stor30[arg1].field_2560)] += uint256(stor30[arg1].field_512)
                        if sub_c38694a5[address(stor30[arg1].field_2560)] > !uint256(stor30[arg1].field_512):
                            revert with 0, 17
                        sub_c38694a5[address(stor30[arg1].field_2560)] += uint256(stor30[arg1].field_512)
                        if sub_92f62add[address(stor30[arg1].field_2560)][uint256(stor30[arg1].field_256)] > !uint256(stor30[arg1].field_512):
                            revert with 0, 17
                        sub_92f62add[address(stor30[arg1].field_2560)][uint256(stor30[arg1].field_256)] += uint256(stor30[arg1].field_512)
                        if uint256(stor30[arg1].field_512) > uint256(stor30[stor52].field_1792):
                            sub_9b175d77 = arg1
                        if not uint256(stor30[stor53].field_1792):
                            sub_362f53ca = arg1
                        else:
                            if uint256(stor30[arg1].field_512) < uint256(stor30[stor53].field_1792):
                                sub_362f53ca = arg1
                    emit 0xa75e4909: arg1, uint256(stor30[arg1].field_512)
    else:
        if msg.value < uint256(stor30[arg1].field_512):
            if not uint256(sub_f7e65b1c[arg1].field_0):
                if address(stor30[arg1].field_2304):
                    if 0 and sub_ebe9505f > -1 / 0:
                        revert with 0, 17
                    if msg.value < 0 / 100:
                        revert with 0, 'Insufficient amount sent'
                else:
                    if not uint256(stor30[arg1].field_768):
                        if uint256(stor30[arg1].field_768) > !sub_0f58fa4d:
                            revert with 0, 17
                        if msg.value < uint256(stor30[arg1].field_768) + sub_0f58fa4d:
                            revert with 0, 'Insufficient amount sent'
                    else:
                        if uint256(stor30[arg1].field_768) > -1:
                            revert with 0, 17
                        if msg.value < uint256(stor30[arg1].field_768):
                            revert with 0, 'Insufficient amount sent'
                if sub_ee218db4 < 0:
                    revert with 0, 17
                uint256(sub_f7e65b1c[arg1].field_0)++
                address(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0)].field_0) = msg.sender
                uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0)].field_256) = msg.value
                if address(stor30[arg1].field_2048) != msg.sender:
                    if address(stor30[arg1].field_2048) != tx.origin:
                        if sub_63873525[address(stor30[arg1].field_2560)] == -1:
                            revert with 0, 17
                        sub_63873525[address(stor30[arg1].field_2560)]++
                        if sub_ec5fe15c[address(stor30[arg1].field_2560)][uint256(stor30[arg1].field_256)] == -1:
                            revert with 0, 17
                        sub_ec5fe15c[address(stor30[arg1].field_2560)][uint256(stor30[arg1].field_256)]++
                        if sub_63873525[address(stor30[arg1].field_2560)] > sub_63873525[address(stor30[stor45].field_2560)]:
                            sub_002e9fb2 = arg1
                        if sub_ec5fe15c[address(stor30[arg1].field_2560)][uint256(stor30[arg1].field_256)] > sub_ec5fe15c[address(stor30[stor51].field_2560)][uint256(stor30[stor51].field_256)]:
                            sub_9019abdf = arg1
                if sub_ee218db4 > !msg.value:
                    revert with 0, 17
                sub_ee218db4 += msg.value
                uint256(stor30[arg1].field_2304) = msg.sender or Mask(96, 160, uint256(stor30[arg1].field_2304))
            else:
                if uint256(sub_f7e65b1c[arg1].field_0) < 1:
                    revert with 0, 17
                if uint256(sub_f7e65b1c[arg1].field_0) - 1 >= uint256(sub_f7e65b1c[arg1].field_0):
                    revert with 0, 50
                if address(stor30[arg1].field_2304):
                    if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) and sub_ebe9505f > -1 / uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256):
                        revert with 0, 17
                    if msg.value < uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * sub_ebe9505f / 100:
                        revert with 0, 'Insufficient amount sent'
                else:
                    if not uint256(stor30[arg1].field_768):
                        if uint256(stor30[arg1].field_768) > !sub_0f58fa4d:
                            revert with 0, 17
                        if msg.value < uint256(stor30[arg1].field_768) + sub_0f58fa4d:
                            revert with 0, 'Insufficient amount sent'
                    else:
                        if uint256(stor30[arg1].field_768) > -1:
                            revert with 0, 17
                        if msg.value < uint256(stor30[arg1].field_768):
                            revert with 0, 'Insufficient amount sent'
                if sub_ee218db4 < uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256):
                    revert with 0, 17
                sub_ee218db4 -= uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256)
                uint256(sub_f7e65b1c[arg1].field_0)++
                address(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0)].field_0) = msg.sender
                uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0)].field_256) = msg.value
                if address(stor30[arg1].field_2048) != msg.sender:
                    if address(stor30[arg1].field_2048) != tx.origin:
                        if sub_63873525[address(stor30[arg1].field_2560)] == -1:
                            revert with 0, 17
                        sub_63873525[address(stor30[arg1].field_2560)]++
                        if sub_ec5fe15c[address(stor30[arg1].field_2560)][uint256(stor30[arg1].field_256)] == -1:
                            revert with 0, 17
                        sub_ec5fe15c[address(stor30[arg1].field_2560)][uint256(stor30[arg1].field_256)]++
                        if sub_63873525[address(stor30[arg1].field_2560)] > sub_63873525[address(stor30[stor45].field_2560)]:
                            sub_002e9fb2 = arg1
                        if sub_ec5fe15c[address(stor30[arg1].field_2560)][uint256(stor30[arg1].field_256)] > sub_ec5fe15c[address(stor30[stor51].field_2560)][uint256(stor30[stor51].field_256)]:
                            sub_9019abdf = arg1
                if sub_ee218db4 > !msg.value:
                    revert with 0, 17
                sub_ee218db4 += msg.value
                uint256(stor30[arg1].field_2304) = msg.sender or Mask(96, 160, uint256(stor30[arg1].field_2304))
                if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256):
                    if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) and stor18 > -1 / uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256):
                        revert with 0, 17
                    if not stor19:
                        revert with 0, 18
                    if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) < uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor18 / stor19:
                        revert with 0, 17
                    call address(stor30[arg1].field_2304) with:
                       value uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) - (uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor18 / stor19) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            emit 0x3eefc411: arg1, msg.value
        else:
            if not uint256(stor30[arg1].field_512):
                if not uint256(sub_f7e65b1c[arg1].field_0):
                    if address(stor30[arg1].field_2304):
                        if 0 and sub_ebe9505f > -1 / 0:
                            revert with 0, 17
                        if msg.value < 0 / 100:
                            revert with 0, 'Insufficient amount sent'
                    else:
                        if not uint256(stor30[arg1].field_768):
                            if uint256(stor30[arg1].field_768) > !sub_0f58fa4d:
                                revert with 0, 17
                            if msg.value < uint256(stor30[arg1].field_768) + sub_0f58fa4d:
                                revert with 0, 'Insufficient amount sent'
                        else:
                            if uint256(stor30[arg1].field_768) > -1:
                                revert with 0, 17
                            if msg.value < uint256(stor30[arg1].field_768):
                                revert with 0, 'Insufficient amount sent'
                    if sub_ee218db4 < 0:
                        revert with 0, 17
                    uint256(sub_f7e65b1c[arg1].field_0)++
                    address(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0)].field_0) = msg.sender
                    uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0)].field_256) = msg.value
                    if address(stor30[arg1].field_2048) != msg.sender:
                        if address(stor30[arg1].field_2048) != tx.origin:
                            if sub_63873525[address(stor30[arg1].field_2560)] == -1:
                                revert with 0, 17
                            sub_63873525[address(stor30[arg1].field_2560)]++
                            if sub_ec5fe15c[address(stor30[arg1].field_2560)][uint256(stor30[arg1].field_256)] == -1:
                                revert with 0, 17
                            sub_ec5fe15c[address(stor30[arg1].field_2560)][uint256(stor30[arg1].field_256)]++
                            if sub_63873525[address(stor30[arg1].field_2560)] > sub_63873525[address(stor30[stor45].field_2560)]:
                                sub_002e9fb2 = arg1
                            if sub_ec5fe15c[address(stor30[arg1].field_2560)][uint256(stor30[arg1].field_256)] > sub_ec5fe15c[address(stor30[stor51].field_2560)][uint256(stor30[stor51].field_256)]:
                                sub_9019abdf = arg1
                    if sub_ee218db4 > !msg.value:
                        revert with 0, 17
                    sub_ee218db4 += msg.value
                    uint256(stor30[arg1].field_2304) = msg.sender or Mask(96, 160, uint256(stor30[arg1].field_2304))
                else:
                    if uint256(sub_f7e65b1c[arg1].field_0) < 1:
                        revert with 0, 17
                    if uint256(sub_f7e65b1c[arg1].field_0) - 1 >= uint256(sub_f7e65b1c[arg1].field_0):
                        revert with 0, 50
                    if address(stor30[arg1].field_2304):
                        if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) and sub_ebe9505f > -1 / uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256):
                            revert with 0, 17
                        if msg.value < uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * sub_ebe9505f / 100:
                            revert with 0, 'Insufficient amount sent'
                    else:
                        if not uint256(stor30[arg1].field_768):
                            if uint256(stor30[arg1].field_768) > !sub_0f58fa4d:
                                revert with 0, 17
                            if msg.value < uint256(stor30[arg1].field_768) + sub_0f58fa4d:
                                revert with 0, 'Insufficient amount sent'
                        else:
                            if uint256(stor30[arg1].field_768) > -1:
                                revert with 0, 17
                            if msg.value < uint256(stor30[arg1].field_768):
                                revert with 0, 'Insufficient amount sent'
                    if sub_ee218db4 < uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256):
                        revert with 0, 17
                    sub_ee218db4 -= uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256)
                    uint256(sub_f7e65b1c[arg1].field_0)++
                    address(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0)].field_0) = msg.sender
                    uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0)].field_256) = msg.value
                    if address(stor30[arg1].field_2048) != msg.sender:
                        if address(stor30[arg1].field_2048) != tx.origin:
                            if sub_63873525[address(stor30[arg1].field_2560)] == -1:
                                revert with 0, 17
                            sub_63873525[address(stor30[arg1].field_2560)]++
                            if sub_ec5fe15c[address(stor30[arg1].field_2560)][uint256(stor30[arg1].field_256)] == -1:
                                revert with 0, 17
                            sub_ec5fe15c[address(stor30[arg1].field_2560)][uint256(stor30[arg1].field_256)]++
                            if sub_63873525[address(stor30[arg1].field_2560)] > sub_63873525[address(stor30[stor45].field_2560)]:
                                sub_002e9fb2 = arg1
                            if sub_ec5fe15c[address(stor30[arg1].field_2560)][uint256(stor30[arg1].field_256)] > sub_ec5fe15c[address(stor30[stor51].field_2560)][uint256(stor30[stor51].field_256)]:
                                sub_9019abdf = arg1
                    if sub_ee218db4 > !msg.value:
                        revert with 0, 17
                    sub_ee218db4 += msg.value
                    uint256(stor30[arg1].field_2304) = msg.sender or Mask(96, 160, uint256(stor30[arg1].field_2304))
                    if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256):
                        if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) and stor18 > -1 / uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256):
                            revert with 0, 17
                        if not stor19:
                            revert with 0, 18
                        if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) < uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor18 / stor19:
                            revert with 0, 17
                        call address(stor30[arg1].field_2304) with:
                           value uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) - (uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor18 / stor19) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                emit 0x3eefc411: arg1, msg.value
            else:
                if msg.value < uint256(stor30[arg1].field_512):
                    revert with 0, 'Insufficient amount sent'
                uint256(stor30[arg1].field_1536) = 1
                if sub_07889cc9.length < 1:
                    revert with 0, 17
                if sub_07889cc9.length - 1 >= sub_07889cc9.length:
                    revert with 0, 50
                if sub_e63e0318[arg1] >= sub_07889cc9.length:
                    revert with 0, 50
                sub_07889cc9[stor36[arg1]] = sub_07889cc9[sub_07889cc9.length]
                if sub_07889cc9.length < 1:
                    revert with 0, 17
                if sub_07889cc9.length - 1 >= sub_07889cc9.length:
                    revert with 0, 50
                sub_e63e0318[stor35[stor35.length]] = sub_e63e0318[arg1]
                if not sub_07889cc9.length:
                    revert with 0, 49
                sub_07889cc9[sub_07889cc9.length] = 0
                sub_07889cc9.length--
                if msg.value:
                    if not uint256(stor30[arg1].field_512):
                        address(stor30[arg1].field_2304) = msg.sender
                        uint256(stor30[arg1].field_1792) = msg.value
                        uint256(stor30[arg1].field_1536) = block.timestamp
                        require ext_code.size(address(stor30[arg1].field_2560))
                        call address(stor30[arg1].field_2560).0x42842e0e with:
                             gas gas_remaining wei
                            args this.address, msg.sender, uint256(stor30[arg1].field_256)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if msg.value and stor17 > -1 / msg.value:
                            revert with 0, 17
                        if not stor19:
                            revert with 0, 18
                        if msg.value and stor12 > -1 / msg.value:
                            revert with 0, 17
                        if not stor19:
                            revert with 0, 18
                        if msg.value * stor12 / stor19:
                            require ext_code.size(stor13)
                            call stor13.0xd0e30db0 with:
                               value msg.value * stor12 / stor19 wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if msg.value * stor17 / stor19:
                            if not stor15[address(stor30[arg1].field_2560)][uint256(stor30[arg1].field_256)]:
                                if msg.value * stor17 / stor19 and stor11 > -1 / msg.value * stor17 / stor19:
                                    revert with 0, 17
                                call address(stor10.field_8) with:
                                   value msg.value * stor17 / stor19 * stor11 / 100 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if msg.value * stor17 / stor19 < msg.value * stor17 / stor19 * stor11 / 100:
                                    revert with 0, 17
                                call stor21 with:
                                   value (msg.value * stor17 / stor19) - (msg.value * stor17 / stor19 * stor11 / 100) wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                if stor16[address(msg.sender)] == -1:
                                    revert with 0, 17
                                stor16[address(msg.sender)]++
                                if stor16[address(stor30[arg1].field_2048)]:
                                    if not stor16[address(stor30[arg1].field_2048)]:
                                        revert with 0, 17
                                    stor16[address(stor30[arg1].field_2048)]--
                                    require ext_code.size(stor14)
                                    call stor14.0x8bccbf62 with:
                                         gas gas_remaining wei
                                        args address(stor30[arg1].field_2048), stor16[address(stor30[arg1].field_2048)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor14)
                                call stor14.0x8bccbf62 with:
                                     gas gas_remaining wei
                                    args msg.sender, stor16[address(msg.sender)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor14)
                                call stor14.0xd0e30db0 with:
                                   value msg.value * stor17 / stor19 wei
                                     gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if msg.value * stor17 / stor19 > !(msg.value * stor12 / stor19):
                            revert with 0, 17
                        if msg.value < (msg.value * stor17 / stor19) + (msg.value * stor12 / stor19):
                            revert with 0, 17
                        call address(stor30[arg1].field_2048) with:
                           value msg.value - (msg.value * stor17 / stor19) - (msg.value * stor12 / stor19) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_3f88d08a[address(stor30[arg1].field_2560)]++
                        sub_3f88d08a[address(stor30[arg1].field_2560)][sub_3f88d08a[address(stor30[arg1].field_2560)]] = arg1
                        if address(stor30[arg1].field_2048) != msg.sender:
                            if block.timestamp < stor48:
                                revert with 0, 17
                            if block.timestamp - stor48 >= 24 * 3600:
                                sub_95ddf83a[address(stor30[arg1].field_2560)] = 0
                                stor48 = block.timestamp
                            if sub_95ddf83a[address(stor30[arg1].field_2560)] > !msg.value:
                                revert with 0, 17
                            sub_95ddf83a[address(stor30[arg1].field_2560)] += msg.value
                            if sub_c38694a5[address(stor30[arg1].field_2560)] > !msg.value:
                                revert with 0, 17
                            sub_c38694a5[address(stor30[arg1].field_2560)] += msg.value
                            if sub_92f62add[address(stor30[arg1].field_2560)][uint256(stor30[arg1].field_256)] > !msg.value:
                                revert with 0, 17
                            sub_92f62add[address(stor30[arg1].field_2560)][uint256(stor30[arg1].field_256)] += msg.value
                            if msg.value > uint256(stor30[stor52].field_1792):
                                sub_9b175d77 = arg1
                            if not uint256(stor30[stor53].field_1792):
                                sub_362f53ca = arg1
                            else:
                                if msg.value < uint256(stor30[stor53].field_1792):
                                    sub_362f53ca = arg1
                        emit 0xa75e4909: arg1, msg.value
                    else:
                        if msg.value <= uint256(stor30[arg1].field_512):
                            address(stor30[arg1].field_2304) = msg.sender
                            uint256(stor30[arg1].field_1792) = msg.value
                            uint256(stor30[arg1].field_1536) = block.timestamp
                            require ext_code.size(address(stor30[arg1].field_2560))
                            call address(stor30[arg1].field_2560).0x42842e0e with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, uint256(stor30[arg1].field_256)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if msg.value and stor17 > -1 / msg.value:
                                revert with 0, 17
                            if not stor19:
                                revert with 0, 18
                            if msg.value and stor12 > -1 / msg.value:
                                revert with 0, 17
                            if not stor19:
                                revert with 0, 18
                            if msg.value * stor12 / stor19:
                                require ext_code.size(stor13)
                                call stor13.0xd0e30db0 with:
                                   value msg.value * stor12 / stor19 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if msg.value * stor17 / stor19:
                                if not stor15[address(stor30[arg1].field_2560)][uint256(stor30[arg1].field_256)]:
                                    if msg.value * stor17 / stor19 and stor11 > -1 / msg.value * stor17 / stor19:
                                        revert with 0, 17
                                    call address(stor10.field_8) with:
                                       value msg.value * stor17 / stor19 * stor11 / 100 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if msg.value * stor17 / stor19 < msg.value * stor17 / stor19 * stor11 / 100:
                                        revert with 0, 17
                                    call stor21 with:
                                       value (msg.value * stor17 / stor19) - (msg.value * stor17 / stor19 * stor11 / 100) wei
                                         gas 2300 * is_zero(value) wei
                                else:
                                    if stor16[address(msg.sender)] == -1:
                                        revert with 0, 17
                                    stor16[address(msg.sender)]++
                                    if stor16[address(stor30[arg1].field_2048)]:
                                        if not stor16[address(stor30[arg1].field_2048)]:
                                            revert with 0, 17
                                        stor16[address(stor30[arg1].field_2048)]--
                                        require ext_code.size(stor14)
                                        call stor14.0x8bccbf62 with:
                                             gas gas_remaining wei
                                            args address(stor30[arg1].field_2048), stor16[address(stor30[arg1].field_2048)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(stor14)
                                    call stor14.0x8bccbf62 with:
                                         gas gas_remaining wei
                                        args msg.sender, stor16[address(msg.sender)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(stor14)
                                    call stor14.0xd0e30db0 with:
                                       value msg.value * stor17 / stor19 wei
                                         gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if msg.value * stor17 / stor19 > !(msg.value * stor12 / stor19):
                                revert with 0, 17
                            if msg.value < (msg.value * stor17 / stor19) + (msg.value * stor12 / stor19):
                                revert with 0, 17
                            call address(stor30[arg1].field_2048) with:
                               value msg.value - (msg.value * stor17 / stor19) - (msg.value * stor12 / stor19) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            sub_3f88d08a[address(stor30[arg1].field_2560)]++
                            sub_3f88d08a[address(stor30[arg1].field_2560)][sub_3f88d08a[address(stor30[arg1].field_2560)]] = arg1
                            if address(stor30[arg1].field_2048) != msg.sender:
                                if block.timestamp < stor48:
                                    revert with 0, 17
                                if block.timestamp - stor48 >= 24 * 3600:
                                    sub_95ddf83a[address(stor30[arg1].field_2560)] = 0
                                    stor48 = block.timestamp
                                if sub_95ddf83a[address(stor30[arg1].field_2560)] > !msg.value:
                                    revert with 0, 17
                                sub_95ddf83a[address(stor30[arg1].field_2560)] += msg.value
                                if sub_c38694a5[address(stor30[arg1].field_2560)] > !msg.value:
                                    revert with 0, 17
                                sub_c38694a5[address(stor30[arg1].field_2560)] += msg.value
                                if sub_92f62add[address(stor30[arg1].field_2560)][uint256(stor30[arg1].field_256)] > !msg.value:
                                    revert with 0, 17
                                sub_92f62add[address(stor30[arg1].field_2560)][uint256(stor30[arg1].field_256)] += msg.value
                                if msg.value > uint256(stor30[stor52].field_1792):
                                    sub_9b175d77 = arg1
                                if not uint256(stor30[stor53].field_1792):
                                    sub_362f53ca = arg1
                                else:
                                    if msg.value < uint256(stor30[stor53].field_1792):
                                        sub_362f53ca = arg1
                            emit 0xa75e4909: arg1, msg.value
                        else:
                            if msg.value < uint256(stor30[arg1].field_512):
                                revert with 0, 17
                            call msg.sender with:
                               value msg.value - uint256(stor30[arg1].field_512) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            address(stor30[arg1].field_2304) = msg.sender
                            uint256(stor30[arg1].field_1792) = uint256(stor30[arg1].field_512)
                            uint256(stor30[arg1].field_1536) = block.timestamp
                            require ext_code.size(address(stor30[arg1].field_2560))
                            call address(stor30[arg1].field_2560).0x42842e0e with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, uint256(stor30[arg1].field_256)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if uint256(stor30[arg1].field_512) and stor17 > -1 / uint256(stor30[arg1].field_512):
                                revert with 0, 17
                            if not stor19:
                                revert with 0, 18
                            if uint256(stor30[arg1].field_512) and stor12 > -1 / uint256(stor30[arg1].field_512):
                                revert with 0, 17
                            if not stor19:
                                revert with 0, 18
                            if uint256(stor30[arg1].field_512) * stor12 / stor19:
                                require ext_code.size(stor13)
                                call stor13.0xd0e30db0 with:
                                   value uint256(stor30[arg1].field_512) * stor12 / stor19 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if uint256(stor30[arg1].field_512) * stor17 / stor19:
                                if not stor15[address(stor30[arg1].field_2560)][uint256(stor30[arg1].field_256)]:
                                    if uint256(stor30[arg1].field_512) * stor17 / stor19 and stor11 > -1 / uint256(stor30[arg1].field_512) * stor17 / stor19:
                                        revert with 0, 17
                                    call address(stor10.field_8) with:
                                       value uint256(stor30[arg1].field_512) * stor17 / stor19 * stor11 / 100 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if uint256(stor30[arg1].field_512) * stor17 / stor19 < uint256(stor30[arg1].field_512) * stor17 / stor19 * stor11 / 100:
                                        revert with 0, 17
                                    call stor21 with:
                                       value (uint256(stor30[arg1].field_512) * stor17 / stor19) - (uint256(stor30[arg1].field_512) * stor17 / stor19 * stor11 / 100) wei
                                         gas 2300 * is_zero(value) wei
                                else:
                                    if stor16[address(msg.sender)] == -1:
                                        revert with 0, 17
                                    stor16[address(msg.sender)]++
                                    if stor16[address(stor30[arg1].field_2048)]:
                                        if not stor16[address(stor30[arg1].field_2048)]:
                                            revert with 0, 17
                                        stor16[address(stor30[arg1].field_2048)]--
                                        require ext_code.size(stor14)
                                        call stor14.0x8bccbf62 with:
                                             gas gas_remaining wei
                                            args address(stor30[arg1].field_2048), stor16[address(stor30[arg1].field_2048)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(stor14)
                                    call stor14.0x8bccbf62 with:
                                         gas gas_remaining wei
                                        args msg.sender, stor16[address(msg.sender)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(stor14)
                                    call stor14.0xd0e30db0 with:
                                       value uint256(stor30[arg1].field_512) * stor17 / stor19 wei
                                         gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if uint256(stor30[arg1].field_512) * stor17 / stor19 > !(uint256(stor30[arg1].field_512) * stor12 / stor19):
                                revert with 0, 17
                            if uint256(stor30[arg1].field_512) < (uint256(stor30[arg1].field_512) * stor17 / stor19) + (uint256(stor30[arg1].field_512) * stor12 / stor19):
                                revert with 0, 17
                            call address(stor30[arg1].field_2048) with:
                               value uint256(stor30[arg1].field_512) - (uint256(stor30[arg1].field_512) * stor17 / stor19) - (uint256(stor30[arg1].field_512) * stor12 / stor19) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            sub_3f88d08a[address(stor30[arg1].field_2560)]++
                            sub_3f88d08a[address(stor30[arg1].field_2560)][sub_3f88d08a[address(stor30[arg1].field_2560)]] = arg1
                            if address(stor30[arg1].field_2048) != msg.sender:
                                if block.timestamp < stor48:
                                    revert with 0, 17
                                if block.timestamp - stor48 >= 24 * 3600:
                                    sub_95ddf83a[address(stor30[arg1].field_2560)] = 0
                                    stor48 = block.timestamp
                                if sub_95ddf83a[address(stor30[arg1].field_2560)] > !uint256(stor30[arg1].field_512):
                                    revert with 0, 17
                                sub_95ddf83a[address(stor30[arg1].field_2560)] += uint256(stor30[arg1].field_512)
                                if sub_c38694a5[address(stor30[arg1].field_2560)] > !uint256(stor30[arg1].field_512):
                                    revert with 0, 17
                                sub_c38694a5[address(stor30[arg1].field_2560)] += uint256(stor30[arg1].field_512)
                                if sub_92f62add[address(stor30[arg1].field_2560)][uint256(stor30[arg1].field_256)] > !uint256(stor30[arg1].field_512):
                                    revert with 0, 17
                                sub_92f62add[address(stor30[arg1].field_2560)][uint256(stor30[arg1].field_256)] += uint256(stor30[arg1].field_512)
                                if uint256(stor30[arg1].field_512) > uint256(stor30[stor52].field_1792):
                                    sub_9b175d77 = arg1
                                if not uint256(stor30[stor53].field_1792):
                                    sub_362f53ca = arg1
                                else:
                                    if uint256(stor30[arg1].field_512) < uint256(stor30[stor53].field_1792):
                                        sub_362f53ca = arg1
                            emit 0xa75e4909: arg1, uint256(stor30[arg1].field_512)
    return 1
}

function sub_d350d686(?) {
    require calldata.size - 4 >= 64
    require arg2 == bool(arg2)
    if owner != msg.sender:
        if not stor38[msg.sender]:
            if address(stor30[arg1].field_2048) != msg.sender:
                require msg.sender == address(stor30[arg1].field_2304)
    if not uint256(stor30[arg1].field_1280):
        revert with 0, 'Auction not finished'
    if block.timestamp < uint256(stor30[arg1].field_1280):
        revert with 0, 'Auction not finished'
    if not address(stor30[arg1].field_2048):
        revert with 0, 'Auction not finished'
    if uint256(stor30[arg1].field_1536):
        revert with 0, 'Auction not finished'
    if not uint256(sub_f7e65b1c[arg1].field_0):
        if sub_ee218db4 < 0:
            revert with 0, 17
        if not uint256(stor30[arg1].field_1024):
            uint256(stor30[arg1].field_1536) = 1
            if sub_07889cc9.length < 1:
                revert with 0, 17
            if sub_07889cc9.length - 1 >= sub_07889cc9.length:
                revert with 0, 50
            if sub_e63e0318[arg1] >= sub_07889cc9.length:
                revert with 0, 50
            sub_07889cc9[stor36[arg1]] = sub_07889cc9[sub_07889cc9.length]
            if sub_07889cc9.length < 1:
                revert with 0, 17
            if sub_07889cc9.length - 1 >= sub_07889cc9.length:
                revert with 0, 50
            sub_e63e0318[stor35[stor35.length]] = sub_e63e0318[arg1]
            if not sub_07889cc9.length:
                revert with 0, 49
            sub_07889cc9[sub_07889cc9.length] = 0
            sub_07889cc9.length--
        else:
            if 0 >= uint256(stor30[arg1].field_1024):
                uint256(stor30[arg1].field_1536) = 1
                if sub_07889cc9.length < 1:
                    revert with 0, 17
                if sub_07889cc9.length - 1 >= sub_07889cc9.length:
                    revert with 0, 50
                if sub_e63e0318[arg1] >= sub_07889cc9.length:
                    revert with 0, 50
                sub_07889cc9[stor36[arg1]] = sub_07889cc9[sub_07889cc9.length]
                if sub_07889cc9.length < 1:
                    revert with 0, 17
                if sub_07889cc9.length - 1 >= sub_07889cc9.length:
                    revert with 0, 50
                sub_e63e0318[stor35[stor35.length]] = sub_e63e0318[arg1]
                if not sub_07889cc9.length:
                    revert with 0, 49
                sub_07889cc9[sub_07889cc9.length] = 0
                sub_07889cc9.length--
            else:
                if arg2:
                    if address(stor30[arg1].field_2048) != msg.sender:
                        revert with 0, 'Only seller can accept lower than reserve price'
                    uint256(stor30[arg1].field_1536) = 1
                    if sub_07889cc9.length < 1:
                        revert with 0, 17
                    if sub_07889cc9.length - 1 >= sub_07889cc9.length:
                        revert with 0, 50
                    if sub_e63e0318[arg1] >= sub_07889cc9.length:
                        revert with 0, 50
                    sub_07889cc9[stor36[arg1]] = sub_07889cc9[sub_07889cc9.length]
                    if sub_07889cc9.length < 1:
                        revert with 0, 17
                    if sub_07889cc9.length - 1 >= sub_07889cc9.length:
                        revert with 0, 50
                    sub_e63e0318[stor35[stor35.length]] = sub_e63e0318[arg1]
                    if not sub_07889cc9.length:
                        revert with 0, 49
                    sub_07889cc9[sub_07889cc9.length] = 0
                    sub_07889cc9.length--
                else:
                    uint256(stor30[arg1].field_1536) = 1
                    if sub_07889cc9.length < 1:
                        revert with 0, 17
                    if sub_07889cc9.length - 1 >= sub_07889cc9.length:
                        revert with 0, 50
                    if sub_e63e0318[arg1] >= sub_07889cc9.length:
                        revert with 0, 50
                    sub_07889cc9[stor36[arg1]] = sub_07889cc9[sub_07889cc9.length]
                    if sub_07889cc9.length < 1:
                        revert with 0, 17
                    if sub_07889cc9.length - 1 >= sub_07889cc9.length:
                        revert with 0, 50
                    sub_e63e0318[stor35[stor35.length]] = sub_e63e0318[arg1]
                    if not sub_07889cc9.length:
                        revert with 0, 49
                    sub_07889cc9[sub_07889cc9.length] = 0
                    sub_07889cc9.length--
                    require ext_code.size(address(stor30[arg1].field_2560))
                    call address(stor30[arg1].field_2560).0x42842e0e with:
                         gas gas_remaining wei
                        args this.address, address(stor30[arg1].field_2048), uint256(stor30[arg1].field_256)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
    else:
        if uint256(sub_f7e65b1c[arg1].field_0) < 1:
            revert with 0, 17
        if uint256(sub_f7e65b1c[arg1].field_0) - 1 >= uint256(sub_f7e65b1c[arg1].field_0):
            revert with 0, 50
        if sub_ee218db4 < uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256):
            revert with 0, 17
        sub_ee218db4 -= uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256)
        if not uint256(stor30[arg1].field_1024):
            uint256(stor30[arg1].field_1536) = 1
            if sub_07889cc9.length < 1:
                revert with 0, 17
            if sub_07889cc9.length - 1 >= sub_07889cc9.length:
                revert with 0, 50
            if sub_e63e0318[arg1] >= sub_07889cc9.length:
                revert with 0, 50
            sub_07889cc9[stor36[arg1]] = sub_07889cc9[sub_07889cc9.length]
            if sub_07889cc9.length < 1:
                revert with 0, 17
            if sub_07889cc9.length - 1 >= sub_07889cc9.length:
                revert with 0, 50
            sub_e63e0318[stor35[stor35.length]] = sub_e63e0318[arg1]
            if not sub_07889cc9.length:
                revert with 0, 49
            sub_07889cc9[sub_07889cc9.length] = 0
            sub_07889cc9.length--
            if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256):
                if not uint256(stor30[arg1].field_512):
                    address(stor30[arg1].field_2304) = address(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_0)
                    uint256(stor30[arg1].field_1792) = uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256)
                    uint256(stor30[arg1].field_1536) = block.timestamp
                    require ext_code.size(address(stor30[arg1].field_2560))
                    call address(stor30[arg1].field_2560).0x42842e0e with:
                         gas gas_remaining wei
                        args this.address, address(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_0), uint256(stor30[arg1].field_256)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) and stor17 > -1 / uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256):
                        revert with 0, 17
                    if not stor19:
                        revert with 0, 18
                    if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) and stor12 > -1 / uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256):
                        revert with 0, 17
                    if not stor19:
                        revert with 0, 18
                    if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor12 / stor19:
                        require ext_code.size(stor13)
                        call stor13.0xd0e30db0 with:
                           value uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor12 / stor19 wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19:
                        if not stor15[address(stor30[arg1].field_2560)][uint256(stor30[arg1].field_256)]:
                            if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19 and stor11 > -1 / uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19:
                                revert with 0, 17
                            call address(stor10.field_8) with:
                               value uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19 * stor11 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19 < uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19 * stor11 / 100:
                                revert with 0, 17
                            call stor21 with:
                               value (uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19) - (uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19 * stor11 / 100) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            if stor16[address(stor31[arg1][uint256(stor31[arg1].field_0) - 1].field_0)] == -1:
                                revert with 0, 17
                            stor16[address(stor31[arg1][uint256(stor31[arg1].field_0) - 1].field_0)]++
                            if stor16[address(stor30[arg1].field_2048)]:
                                if not stor16[address(stor30[arg1].field_2048)]:
                                    revert with 0, 17
                                stor16[address(stor30[arg1].field_2048)]--
                                require ext_code.size(stor14)
                                call stor14.0x8bccbf62 with:
                                     gas gas_remaining wei
                                    args address(stor30[arg1].field_2048), stor16[address(stor30[arg1].field_2048)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(stor14)
                            call stor14.0x8bccbf62 with:
                                 gas gas_remaining wei
                                args address(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_0), stor16[address(stor31[arg1][uint256(stor31[arg1].field_0) - 1].field_0)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(stor14)
                            call stor14.0xd0e30db0 with:
                               value uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19 wei
                                 gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19 > !(uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor12 / stor19):
                        revert with 0, 17
                    if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) < (uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19) + (uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor12 / stor19):
                        revert with 0, 17
                    call address(stor30[arg1].field_2048) with:
                       value uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) - (uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19) - (uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor12 / stor19) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    sub_3f88d08a[address(stor30[arg1].field_2560)]++
                    sub_3f88d08a[address(stor30[arg1].field_2560)][sub_3f88d08a[address(stor30[arg1].field_2560)]] = arg1
                    if address(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_0) != address(stor30[arg1].field_2048):
                        if block.timestamp < stor48:
                            revert with 0, 17
                        if block.timestamp - stor48 >= 24 * 3600:
                            sub_95ddf83a[address(stor30[arg1].field_2560)] = 0
                            stor48 = block.timestamp
                        if sub_95ddf83a[address(stor30[arg1].field_2560)] > !uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256):
                            revert with 0, 17
                        sub_95ddf83a[address(stor30[arg1].field_2560)] += uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256)
                        if sub_c38694a5[address(stor30[arg1].field_2560)] > !uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256):
                            revert with 0, 17
                        sub_c38694a5[address(stor30[arg1].field_2560)] += uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256)
                        if sub_92f62add[address(stor30[arg1].field_2560)][uint256(stor30[arg1].field_256)] > !uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256):
                            revert with 0, 17
                        sub_92f62add[address(stor30[arg1].field_2560)][uint256(stor30[arg1].field_256)] += uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256)
                        if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) > uint256(stor30[stor52].field_1792):
                            sub_9b175d77 = arg1
                        if not uint256(stor30[stor53].field_1792):
                            sub_362f53ca = arg1
                        else:
                            if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) < uint256(stor30[stor53].field_1792):
                                sub_362f53ca = arg1
                    emit 0xa75e4909: arg1, uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256)
                else:
                    if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) <= uint256(stor30[arg1].field_512):
                        address(stor30[arg1].field_2304) = address(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_0)
                        uint256(stor30[arg1].field_1792) = uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256)
                        uint256(stor30[arg1].field_1536) = block.timestamp
                        require ext_code.size(address(stor30[arg1].field_2560))
                        call address(stor30[arg1].field_2560).0x42842e0e with:
                             gas gas_remaining wei
                            args this.address, address(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_0), uint256(stor30[arg1].field_256)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) and stor17 > -1 / uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256):
                            revert with 0, 17
                        if not stor19:
                            revert with 0, 18
                        if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) and stor12 > -1 / uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256):
                            revert with 0, 17
                        if not stor19:
                            revert with 0, 18
                        if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor12 / stor19:
                            require ext_code.size(stor13)
                            call stor13.0xd0e30db0 with:
                               value uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor12 / stor19 wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19:
                            if not stor15[address(stor30[arg1].field_2560)][uint256(stor30[arg1].field_256)]:
                                if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19 and stor11 > -1 / uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19:
                                    revert with 0, 17
                                call address(stor10.field_8) with:
                                   value uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19 * stor11 / 100 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19 < uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19 * stor11 / 100:
                                    revert with 0, 17
                                call stor21 with:
                                   value (uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19) - (uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19 * stor11 / 100) wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                if stor16[address(stor31[arg1][uint256(stor31[arg1].field_0) - 1].field_0)] == -1:
                                    revert with 0, 17
                                stor16[address(stor31[arg1][uint256(stor31[arg1].field_0) - 1].field_0)]++
                                if stor16[address(stor30[arg1].field_2048)]:
                                    if not stor16[address(stor30[arg1].field_2048)]:
                                        revert with 0, 17
                                    stor16[address(stor30[arg1].field_2048)]--
                                    require ext_code.size(stor14)
                                    call stor14.0x8bccbf62 with:
                                         gas gas_remaining wei
                                        args address(stor30[arg1].field_2048), stor16[address(stor30[arg1].field_2048)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor14)
                                call stor14.0x8bccbf62 with:
                                     gas gas_remaining wei
                                    args address(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_0), stor16[address(stor31[arg1][uint256(stor31[arg1].field_0) - 1].field_0)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor14)
                                call stor14.0xd0e30db0 with:
                                   value uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19 wei
                                     gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19 > !(uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor12 / stor19):
                            revert with 0, 17
                        if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) < (uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19) + (uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor12 / stor19):
                            revert with 0, 17
                        call address(stor30[arg1].field_2048) with:
                           value uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) - (uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19) - (uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor12 / stor19) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_3f88d08a[address(stor30[arg1].field_2560)]++
                        sub_3f88d08a[address(stor30[arg1].field_2560)][sub_3f88d08a[address(stor30[arg1].field_2560)]] = arg1
                        if address(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_0) != address(stor30[arg1].field_2048):
                            if block.timestamp < stor48:
                                revert with 0, 17
                            if block.timestamp - stor48 >= 24 * 3600:
                                sub_95ddf83a[address(stor30[arg1].field_2560)] = 0
                                stor48 = block.timestamp
                            if sub_95ddf83a[address(stor30[arg1].field_2560)] > !uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256):
                                revert with 0, 17
                            sub_95ddf83a[address(stor30[arg1].field_2560)] += uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256)
                            if sub_c38694a5[address(stor30[arg1].field_2560)] > !uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256):
                                revert with 0, 17
                            sub_c38694a5[address(stor30[arg1].field_2560)] += uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256)
                            if sub_92f62add[address(stor30[arg1].field_2560)][uint256(stor30[arg1].field_256)] > !uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256):
                                revert with 0, 17
                            sub_92f62add[address(stor30[arg1].field_2560)][uint256(stor30[arg1].field_256)] += uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256)
                            if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) > uint256(stor30[stor52].field_1792):
                                sub_9b175d77 = arg1
                            if not uint256(stor30[stor53].field_1792):
                                sub_362f53ca = arg1
                            else:
                                if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) < uint256(stor30[stor53].field_1792):
                                    sub_362f53ca = arg1
                        emit 0xa75e4909: arg1, uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256)
                    else:
                        if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) < uint256(stor30[arg1].field_512):
                            revert with 0, 17
                        call address(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_0) with:
                           value uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) - uint256(stor30[arg1].field_512) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        address(stor30[arg1].field_2304) = address(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_0)
                        uint256(stor30[arg1].field_1792) = uint256(stor30[arg1].field_512)
                        uint256(stor30[arg1].field_1536) = block.timestamp
                        require ext_code.size(address(stor30[arg1].field_2560))
                        call address(stor30[arg1].field_2560).0x42842e0e with:
                             gas gas_remaining wei
                            args this.address, address(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_0), uint256(stor30[arg1].field_256)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if uint256(stor30[arg1].field_512) and stor17 > -1 / uint256(stor30[arg1].field_512):
                            revert with 0, 17
                        if not stor19:
                            revert with 0, 18
                        if uint256(stor30[arg1].field_512) and stor12 > -1 / uint256(stor30[arg1].field_512):
                            revert with 0, 17
                        if not stor19:
                            revert with 0, 18
                        if uint256(stor30[arg1].field_512) * stor12 / stor19:
                            require ext_code.size(stor13)
                            call stor13.0xd0e30db0 with:
                               value uint256(stor30[arg1].field_512) * stor12 / stor19 wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if uint256(stor30[arg1].field_512) * stor17 / stor19:
                            if not stor15[address(stor30[arg1].field_2560)][uint256(stor30[arg1].field_256)]:
                                if uint256(stor30[arg1].field_512) * stor17 / stor19 and stor11 > -1 / uint256(stor30[arg1].field_512) * stor17 / stor19:
                                    revert with 0, 17
                                call address(stor10.field_8) with:
                                   value uint256(stor30[arg1].field_512) * stor17 / stor19 * stor11 / 100 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if uint256(stor30[arg1].field_512) * stor17 / stor19 < uint256(stor30[arg1].field_512) * stor17 / stor19 * stor11 / 100:
                                    revert with 0, 17
                                call stor21 with:
                                   value (uint256(stor30[arg1].field_512) * stor17 / stor19) - (uint256(stor30[arg1].field_512) * stor17 / stor19 * stor11 / 100) wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                if stor16[address(stor31[arg1][uint256(stor31[arg1].field_0) - 1].field_0)] == -1:
                                    revert with 0, 17
                                stor16[address(stor31[arg1][uint256(stor31[arg1].field_0) - 1].field_0)]++
                                if stor16[address(stor30[arg1].field_2048)]:
                                    if not stor16[address(stor30[arg1].field_2048)]:
                                        revert with 0, 17
                                    stor16[address(stor30[arg1].field_2048)]--
                                    require ext_code.size(stor14)
                                    call stor14.0x8bccbf62 with:
                                         gas gas_remaining wei
                                        args address(stor30[arg1].field_2048), stor16[address(stor30[arg1].field_2048)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor14)
                                call stor14.0x8bccbf62 with:
                                     gas gas_remaining wei
                                    args address(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_0), stor16[address(stor31[arg1][uint256(stor31[arg1].field_0) - 1].field_0)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor14)
                                call stor14.0xd0e30db0 with:
                                   value uint256(stor30[arg1].field_512) * stor17 / stor19 wei
                                     gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if uint256(stor30[arg1].field_512) * stor17 / stor19 > !(uint256(stor30[arg1].field_512) * stor12 / stor19):
                            revert with 0, 17
                        if uint256(stor30[arg1].field_512) < (uint256(stor30[arg1].field_512) * stor17 / stor19) + (uint256(stor30[arg1].field_512) * stor12 / stor19):
                            revert with 0, 17
                        call address(stor30[arg1].field_2048) with:
                           value uint256(stor30[arg1].field_512) - (uint256(stor30[arg1].field_512) * stor17 / stor19) - (uint256(stor30[arg1].field_512) * stor12 / stor19) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_3f88d08a[address(stor30[arg1].field_2560)]++
                        sub_3f88d08a[address(stor30[arg1].field_2560)][sub_3f88d08a[address(stor30[arg1].field_2560)]] = arg1
                        if address(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_0) != address(stor30[arg1].field_2048):
                            if block.timestamp < stor48:
                                revert with 0, 17
                            if block.timestamp - stor48 >= 24 * 3600:
                                sub_95ddf83a[address(stor30[arg1].field_2560)] = 0
                                stor48 = block.timestamp
                            if sub_95ddf83a[address(stor30[arg1].field_2560)] > !uint256(stor30[arg1].field_512):
                                revert with 0, 17
                            sub_95ddf83a[address(stor30[arg1].field_2560)] += uint256(stor30[arg1].field_512)
                            if sub_c38694a5[address(stor30[arg1].field_2560)] > !uint256(stor30[arg1].field_512):
                                revert with 0, 17
                            sub_c38694a5[address(stor30[arg1].field_2560)] += uint256(stor30[arg1].field_512)
                            if sub_92f62add[address(stor30[arg1].field_2560)][uint256(stor30[arg1].field_256)] > !uint256(stor30[arg1].field_512):
                                revert with 0, 17
                            sub_92f62add[address(stor30[arg1].field_2560)][uint256(stor30[arg1].field_256)] += uint256(stor30[arg1].field_512)
                            if uint256(stor30[arg1].field_512) > uint256(stor30[stor52].field_1792):
                                sub_9b175d77 = arg1
                            if not uint256(stor30[stor53].field_1792):
                                sub_362f53ca = arg1
                            else:
                                if uint256(stor30[arg1].field_512) < uint256(stor30[stor53].field_1792):
                                    sub_362f53ca = arg1
                        emit 0xa75e4909: arg1, uint256(stor30[arg1].field_512)
        else:
            if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) >= uint256(stor30[arg1].field_1024):
                uint256(stor30[arg1].field_1536) = 1
                if sub_07889cc9.length < 1:
                    revert with 0, 17
                if sub_07889cc9.length - 1 >= sub_07889cc9.length:
                    revert with 0, 50
                if sub_e63e0318[arg1] >= sub_07889cc9.length:
                    revert with 0, 50
                sub_07889cc9[stor36[arg1]] = sub_07889cc9[sub_07889cc9.length]
                if sub_07889cc9.length < 1:
                    revert with 0, 17
                if sub_07889cc9.length - 1 >= sub_07889cc9.length:
                    revert with 0, 50
                sub_e63e0318[stor35[stor35.length]] = sub_e63e0318[arg1]
                if not sub_07889cc9.length:
                    revert with 0, 49
                sub_07889cc9[sub_07889cc9.length] = 0
                sub_07889cc9.length--
                if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256):
                    if not uint256(stor30[arg1].field_512):
                        address(stor30[arg1].field_2304) = address(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_0)
                        uint256(stor30[arg1].field_1792) = uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256)
                        uint256(stor30[arg1].field_1536) = block.timestamp
                        require ext_code.size(address(stor30[arg1].field_2560))
                        call address(stor30[arg1].field_2560).0x42842e0e with:
                             gas gas_remaining wei
                            args this.address, address(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_0), uint256(stor30[arg1].field_256)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) and stor17 > -1 / uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256):
                            revert with 0, 17
                        if not stor19:
                            revert with 0, 18
                        if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) and stor12 > -1 / uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256):
                            revert with 0, 17
                        if not stor19:
                            revert with 0, 18
                        if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor12 / stor19:
                            require ext_code.size(stor13)
                            call stor13.0xd0e30db0 with:
                               value uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor12 / stor19 wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19:
                            if not stor15[address(stor30[arg1].field_2560)][uint256(stor30[arg1].field_256)]:
                                if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19 and stor11 > -1 / uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19:
                                    revert with 0, 17
                                call address(stor10.field_8) with:
                                   value uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19 * stor11 / 100 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19 < uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19 * stor11 / 100:
                                    revert with 0, 17
                                call stor21 with:
                                   value (uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19) - (uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19 * stor11 / 100) wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                if stor16[address(stor31[arg1][uint256(stor31[arg1].field_0) - 1].field_0)] == -1:
                                    revert with 0, 17
                                stor16[address(stor31[arg1][uint256(stor31[arg1].field_0) - 1].field_0)]++
                                if stor16[address(stor30[arg1].field_2048)]:
                                    if not stor16[address(stor30[arg1].field_2048)]:
                                        revert with 0, 17
                                    stor16[address(stor30[arg1].field_2048)]--
                                    require ext_code.size(stor14)
                                    call stor14.0x8bccbf62 with:
                                         gas gas_remaining wei
                                        args address(stor30[arg1].field_2048), stor16[address(stor30[arg1].field_2048)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor14)
                                call stor14.0x8bccbf62 with:
                                     gas gas_remaining wei
                                    args address(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_0), stor16[address(stor31[arg1][uint256(stor31[arg1].field_0) - 1].field_0)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor14)
                                call stor14.0xd0e30db0 with:
                                   value uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19 wei
                                     gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19 > !(uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor12 / stor19):
                            revert with 0, 17
                        if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) < (uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19) + (uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor12 / stor19):
                            revert with 0, 17
                        call address(stor30[arg1].field_2048) with:
                           value uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) - (uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19) - (uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor12 / stor19) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_3f88d08a[address(stor30[arg1].field_2560)]++
                        sub_3f88d08a[address(stor30[arg1].field_2560)][sub_3f88d08a[address(stor30[arg1].field_2560)]] = arg1
                        if address(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_0) != address(stor30[arg1].field_2048):
                            if block.timestamp < stor48:
                                revert with 0, 17
                            if block.timestamp - stor48 >= 24 * 3600:
                                sub_95ddf83a[address(stor30[arg1].field_2560)] = 0
                                stor48 = block.timestamp
                            if sub_95ddf83a[address(stor30[arg1].field_2560)] > !uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256):
                                revert with 0, 17
                            sub_95ddf83a[address(stor30[arg1].field_2560)] += uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256)
                            if sub_c38694a5[address(stor30[arg1].field_2560)] > !uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256):
                                revert with 0, 17
                            sub_c38694a5[address(stor30[arg1].field_2560)] += uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256)
                            if sub_92f62add[address(stor30[arg1].field_2560)][uint256(stor30[arg1].field_256)] > !uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256):
                                revert with 0, 17
                            sub_92f62add[address(stor30[arg1].field_2560)][uint256(stor30[arg1].field_256)] += uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256)
                            if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) > uint256(stor30[stor52].field_1792):
                                sub_9b175d77 = arg1
                            if not uint256(stor30[stor53].field_1792):
                                sub_362f53ca = arg1
                            else:
                                if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) < uint256(stor30[stor53].field_1792):
                                    sub_362f53ca = arg1
                        emit 0xa75e4909: arg1, uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256)
                    else:
                        if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) <= uint256(stor30[arg1].field_512):
                            address(stor30[arg1].field_2304) = address(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_0)
                            uint256(stor30[arg1].field_1792) = uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256)
                            uint256(stor30[arg1].field_1536) = block.timestamp
                            require ext_code.size(address(stor30[arg1].field_2560))
                            call address(stor30[arg1].field_2560).0x42842e0e with:
                                 gas gas_remaining wei
                                args this.address, address(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_0), uint256(stor30[arg1].field_256)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) and stor17 > -1 / uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256):
                                revert with 0, 17
                            if not stor19:
                                revert with 0, 18
                            if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) and stor12 > -1 / uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256):
                                revert with 0, 17
                            if not stor19:
                                revert with 0, 18
                            if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor12 / stor19:
                                require ext_code.size(stor13)
                                call stor13.0xd0e30db0 with:
                                   value uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor12 / stor19 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19:
                                if not stor15[address(stor30[arg1].field_2560)][uint256(stor30[arg1].field_256)]:
                                    if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19 and stor11 > -1 / uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19:
                                        revert with 0, 17
                                    call address(stor10.field_8) with:
                                       value uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19 * stor11 / 100 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19 < uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19 * stor11 / 100:
                                        revert with 0, 17
                                    call stor21 with:
                                       value (uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19) - (uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19 * stor11 / 100) wei
                                         gas 2300 * is_zero(value) wei
                                else:
                                    if stor16[address(stor31[arg1][uint256(stor31[arg1].field_0) - 1].field_0)] == -1:
                                        revert with 0, 17
                                    stor16[address(stor31[arg1][uint256(stor31[arg1].field_0) - 1].field_0)]++
                                    if stor16[address(stor30[arg1].field_2048)]:
                                        if not stor16[address(stor30[arg1].field_2048)]:
                                            revert with 0, 17
                                        stor16[address(stor30[arg1].field_2048)]--
                                        require ext_code.size(stor14)
                                        call stor14.0x8bccbf62 with:
                                             gas gas_remaining wei
                                            args address(stor30[arg1].field_2048), stor16[address(stor30[arg1].field_2048)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(stor14)
                                    call stor14.0x8bccbf62 with:
                                         gas gas_remaining wei
                                        args address(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_0), stor16[address(stor31[arg1][uint256(stor31[arg1].field_0) - 1].field_0)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(stor14)
                                    call stor14.0xd0e30db0 with:
                                       value uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19 wei
                                         gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19 > !(uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor12 / stor19):
                                revert with 0, 17
                            if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) < (uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19) + (uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor12 / stor19):
                                revert with 0, 17
                            call address(stor30[arg1].field_2048) with:
                               value uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) - (uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19) - (uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor12 / stor19) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            sub_3f88d08a[address(stor30[arg1].field_2560)]++
                            sub_3f88d08a[address(stor30[arg1].field_2560)][sub_3f88d08a[address(stor30[arg1].field_2560)]] = arg1
                            if address(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_0) != address(stor30[arg1].field_2048):
                                if block.timestamp < stor48:
                                    revert with 0, 17
                                if block.timestamp - stor48 >= 24 * 3600:
                                    sub_95ddf83a[address(stor30[arg1].field_2560)] = 0
                                    stor48 = block.timestamp
                                if sub_95ddf83a[address(stor30[arg1].field_2560)] > !uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256):
                                    revert with 0, 17
                                sub_95ddf83a[address(stor30[arg1].field_2560)] += uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256)
                                if sub_c38694a5[address(stor30[arg1].field_2560)] > !uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256):
                                    revert with 0, 17
                                sub_c38694a5[address(stor30[arg1].field_2560)] += uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256)
                                if sub_92f62add[address(stor30[arg1].field_2560)][uint256(stor30[arg1].field_256)] > !uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256):
                                    revert with 0, 17
                                sub_92f62add[address(stor30[arg1].field_2560)][uint256(stor30[arg1].field_256)] += uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256)
                                if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) > uint256(stor30[stor52].field_1792):
                                    sub_9b175d77 = arg1
                                if not uint256(stor30[stor53].field_1792):
                                    sub_362f53ca = arg1
                                else:
                                    if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) < uint256(stor30[stor53].field_1792):
                                        sub_362f53ca = arg1
                            emit 0xa75e4909: arg1, uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256)
                        else:
                            if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) < uint256(stor30[arg1].field_512):
                                revert with 0, 17
                            call address(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_0) with:
                               value uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) - uint256(stor30[arg1].field_512) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            address(stor30[arg1].field_2304) = address(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_0)
                            uint256(stor30[arg1].field_1792) = uint256(stor30[arg1].field_512)
                            uint256(stor30[arg1].field_1536) = block.timestamp
                            require ext_code.size(address(stor30[arg1].field_2560))
                            call address(stor30[arg1].field_2560).0x42842e0e with:
                                 gas gas_remaining wei
                                args this.address, address(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_0), uint256(stor30[arg1].field_256)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if uint256(stor30[arg1].field_512) and stor17 > -1 / uint256(stor30[arg1].field_512):
                                revert with 0, 17
                            if not stor19:
                                revert with 0, 18
                            if uint256(stor30[arg1].field_512) and stor12 > -1 / uint256(stor30[arg1].field_512):
                                revert with 0, 17
                            if not stor19:
                                revert with 0, 18
                            if uint256(stor30[arg1].field_512) * stor12 / stor19:
                                require ext_code.size(stor13)
                                call stor13.0xd0e30db0 with:
                                   value uint256(stor30[arg1].field_512) * stor12 / stor19 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if uint256(stor30[arg1].field_512) * stor17 / stor19:
                                if not stor15[address(stor30[arg1].field_2560)][uint256(stor30[arg1].field_256)]:
                                    if uint256(stor30[arg1].field_512) * stor17 / stor19 and stor11 > -1 / uint256(stor30[arg1].field_512) * stor17 / stor19:
                                        revert with 0, 17
                                    call address(stor10.field_8) with:
                                       value uint256(stor30[arg1].field_512) * stor17 / stor19 * stor11 / 100 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if uint256(stor30[arg1].field_512) * stor17 / stor19 < uint256(stor30[arg1].field_512) * stor17 / stor19 * stor11 / 100:
                                        revert with 0, 17
                                    call stor21 with:
                                       value (uint256(stor30[arg1].field_512) * stor17 / stor19) - (uint256(stor30[arg1].field_512) * stor17 / stor19 * stor11 / 100) wei
                                         gas 2300 * is_zero(value) wei
                                else:
                                    if stor16[address(stor31[arg1][uint256(stor31[arg1].field_0) - 1].field_0)] == -1:
                                        revert with 0, 17
                                    stor16[address(stor31[arg1][uint256(stor31[arg1].field_0) - 1].field_0)]++
                                    if stor16[address(stor30[arg1].field_2048)]:
                                        if not stor16[address(stor30[arg1].field_2048)]:
                                            revert with 0, 17
                                        stor16[address(stor30[arg1].field_2048)]--
                                        require ext_code.size(stor14)
                                        call stor14.0x8bccbf62 with:
                                             gas gas_remaining wei
                                            args address(stor30[arg1].field_2048), stor16[address(stor30[arg1].field_2048)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(stor14)
                                    call stor14.0x8bccbf62 with:
                                         gas gas_remaining wei
                                        args address(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_0), stor16[address(stor31[arg1][uint256(stor31[arg1].field_0) - 1].field_0)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(stor14)
                                    call stor14.0xd0e30db0 with:
                                       value uint256(stor30[arg1].field_512) * stor17 / stor19 wei
                                         gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if uint256(stor30[arg1].field_512) * stor17 / stor19 > !(uint256(stor30[arg1].field_512) * stor12 / stor19):
                                revert with 0, 17
                            if uint256(stor30[arg1].field_512) < (uint256(stor30[arg1].field_512) * stor17 / stor19) + (uint256(stor30[arg1].field_512) * stor12 / stor19):
                                revert with 0, 17
                            call address(stor30[arg1].field_2048) with:
                               value uint256(stor30[arg1].field_512) - (uint256(stor30[arg1].field_512) * stor17 / stor19) - (uint256(stor30[arg1].field_512) * stor12 / stor19) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            sub_3f88d08a[address(stor30[arg1].field_2560)]++
                            sub_3f88d08a[address(stor30[arg1].field_2560)][sub_3f88d08a[address(stor30[arg1].field_2560)]] = arg1
                            if address(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_0) != address(stor30[arg1].field_2048):
                                if block.timestamp < stor48:
                                    revert with 0, 17
                                if block.timestamp - stor48 >= 24 * 3600:
                                    sub_95ddf83a[address(stor30[arg1].field_2560)] = 0
                                    stor48 = block.timestamp
                                if sub_95ddf83a[address(stor30[arg1].field_2560)] > !uint256(stor30[arg1].field_512):
                                    revert with 0, 17
                                sub_95ddf83a[address(stor30[arg1].field_2560)] += uint256(stor30[arg1].field_512)
                                if sub_c38694a5[address(stor30[arg1].field_2560)] > !uint256(stor30[arg1].field_512):
                                    revert with 0, 17
                                sub_c38694a5[address(stor30[arg1].field_2560)] += uint256(stor30[arg1].field_512)
                                if sub_92f62add[address(stor30[arg1].field_2560)][uint256(stor30[arg1].field_256)] > !uint256(stor30[arg1].field_512):
                                    revert with 0, 17
                                sub_92f62add[address(stor30[arg1].field_2560)][uint256(stor30[arg1].field_256)] += uint256(stor30[arg1].field_512)
                                if uint256(stor30[arg1].field_512) > uint256(stor30[stor52].field_1792):
                                    sub_9b175d77 = arg1
                                if not uint256(stor30[stor53].field_1792):
                                    sub_362f53ca = arg1
                                else:
                                    if uint256(stor30[arg1].field_512) < uint256(stor30[stor53].field_1792):
                                        sub_362f53ca = arg1
                            emit 0xa75e4909: arg1, uint256(stor30[arg1].field_512)
            else:
                if not arg2:
                    uint256(stor30[arg1].field_1536) = 1
                    if sub_07889cc9.length < 1:
                        revert with 0, 17
                    if sub_07889cc9.length - 1 >= sub_07889cc9.length:
                        revert with 0, 50
                    if sub_e63e0318[arg1] >= sub_07889cc9.length:
                        revert with 0, 50
                    sub_07889cc9[stor36[arg1]] = sub_07889cc9[sub_07889cc9.length]
                    if sub_07889cc9.length < 1:
                        revert with 0, 17
                    if sub_07889cc9.length - 1 >= sub_07889cc9.length:
                        revert with 0, 50
                    sub_e63e0318[stor35[stor35.length]] = sub_e63e0318[arg1]
                    if not sub_07889cc9.length:
                        revert with 0, 49
                    sub_07889cc9[sub_07889cc9.length] = 0
                    sub_07889cc9.length--
                    require ext_code.size(address(stor30[arg1].field_2560))
                    call address(stor30[arg1].field_2560).0x42842e0e with:
                         gas gas_remaining wei
                        args this.address, address(stor30[arg1].field_2048), uint256(stor30[arg1].field_256)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) > 0:
                        if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) and stor18 > -1 / uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256):
                            revert with 0, 17
                        if not stor19:
                            revert with 0, 18
                        if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) < uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor18 / stor19:
                            revert with 0, 17
                        call address(stor30[arg1].field_2304) with:
                           value uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) - (uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor18 / stor19) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    if address(stor30[arg1].field_2048) != msg.sender:
                        revert with 0, 'Only seller can accept lower than reserve price'
                    uint256(stor30[arg1].field_1536) = 1
                    if sub_07889cc9.length < 1:
                        revert with 0, 17
                    if sub_07889cc9.length - 1 >= sub_07889cc9.length:
                        revert with 0, 50
                    if sub_e63e0318[arg1] >= sub_07889cc9.length:
                        revert with 0, 50
                    sub_07889cc9[stor36[arg1]] = sub_07889cc9[sub_07889cc9.length]
                    if sub_07889cc9.length < 1:
                        revert with 0, 17
                    if sub_07889cc9.length - 1 >= sub_07889cc9.length:
                        revert with 0, 50
                    sub_e63e0318[stor35[stor35.length]] = sub_e63e0318[arg1]
                    if not sub_07889cc9.length:
                        revert with 0, 49
                    sub_07889cc9[sub_07889cc9.length] = 0
                    sub_07889cc9.length--
                    if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256):
                        if not uint256(stor30[arg1].field_512):
                            address(stor30[arg1].field_2304) = address(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_0)
                            uint256(stor30[arg1].field_1792) = uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256)
                            uint256(stor30[arg1].field_1536) = block.timestamp
                            require ext_code.size(address(stor30[arg1].field_2560))
                            call address(stor30[arg1].field_2560).0x42842e0e with:
                                 gas gas_remaining wei
                                args this.address, address(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_0), uint256(stor30[arg1].field_256)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) and stor17 > -1 / uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256):
                                revert with 0, 17
                            if not stor19:
                                revert with 0, 18
                            if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) and stor12 > -1 / uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256):
                                revert with 0, 17
                            if not stor19:
                                revert with 0, 18
                            if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor12 / stor19:
                                require ext_code.size(stor13)
                                call stor13.0xd0e30db0 with:
                                   value uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor12 / stor19 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19:
                                if not stor15[address(stor30[arg1].field_2560)][uint256(stor30[arg1].field_256)]:
                                    if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19 and stor11 > -1 / uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19:
                                        revert with 0, 17
                                    call address(stor10.field_8) with:
                                       value uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19 * stor11 / 100 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19 < uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19 * stor11 / 100:
                                        revert with 0, 17
                                    call stor21 with:
                                       value (uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19) - (uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19 * stor11 / 100) wei
                                         gas 2300 * is_zero(value) wei
                                else:
                                    if stor16[address(stor31[arg1][uint256(stor31[arg1].field_0) - 1].field_0)] == -1:
                                        revert with 0, 17
                                    stor16[address(stor31[arg1][uint256(stor31[arg1].field_0) - 1].field_0)]++
                                    if stor16[address(stor30[arg1].field_2048)]:
                                        if not stor16[address(stor30[arg1].field_2048)]:
                                            revert with 0, 17
                                        stor16[address(stor30[arg1].field_2048)]--
                                        require ext_code.size(stor14)
                                        call stor14.0x8bccbf62 with:
                                             gas gas_remaining wei
                                            args address(stor30[arg1].field_2048), stor16[address(stor30[arg1].field_2048)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(stor14)
                                    call stor14.0x8bccbf62 with:
                                         gas gas_remaining wei
                                        args address(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_0), stor16[address(stor31[arg1][uint256(stor31[arg1].field_0) - 1].field_0)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(stor14)
                                    call stor14.0xd0e30db0 with:
                                       value uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19 wei
                                         gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19 > !(uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor12 / stor19):
                                revert with 0, 17
                            if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) < (uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19) + (uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor12 / stor19):
                                revert with 0, 17
                            call address(stor30[arg1].field_2048) with:
                               value uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) - (uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19) - (uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor12 / stor19) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            sub_3f88d08a[address(stor30[arg1].field_2560)]++
                            sub_3f88d08a[address(stor30[arg1].field_2560)][sub_3f88d08a[address(stor30[arg1].field_2560)]] = arg1
                            if address(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_0) != address(stor30[arg1].field_2048):
                                if block.timestamp < stor48:
                                    revert with 0, 17
                                if block.timestamp - stor48 >= 24 * 3600:
                                    sub_95ddf83a[address(stor30[arg1].field_2560)] = 0
                                    stor48 = block.timestamp
                                if sub_95ddf83a[address(stor30[arg1].field_2560)] > !uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256):
                                    revert with 0, 17
                                sub_95ddf83a[address(stor30[arg1].field_2560)] += uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256)
                                if sub_c38694a5[address(stor30[arg1].field_2560)] > !uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256):
                                    revert with 0, 17
                                sub_c38694a5[address(stor30[arg1].field_2560)] += uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256)
                                if sub_92f62add[address(stor30[arg1].field_2560)][uint256(stor30[arg1].field_256)] > !uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256):
                                    revert with 0, 17
                                sub_92f62add[address(stor30[arg1].field_2560)][uint256(stor30[arg1].field_256)] += uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256)
                                if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) > uint256(stor30[stor52].field_1792):
                                    sub_9b175d77 = arg1
                                if not uint256(stor30[stor53].field_1792):
                                    sub_362f53ca = arg1
                                else:
                                    if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) < uint256(stor30[stor53].field_1792):
                                        sub_362f53ca = arg1
                            emit 0xa75e4909: arg1, uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256)
                        else:
                            if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) <= uint256(stor30[arg1].field_512):
                                address(stor30[arg1].field_2304) = address(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_0)
                                uint256(stor30[arg1].field_1792) = uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256)
                                uint256(stor30[arg1].field_1536) = block.timestamp
                                require ext_code.size(address(stor30[arg1].field_2560))
                                call address(stor30[arg1].field_2560).0x42842e0e with:
                                     gas gas_remaining wei
                                    args this.address, address(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_0), uint256(stor30[arg1].field_256)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) and stor17 > -1 / uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256):
                                    revert with 0, 17
                                if not stor19:
                                    revert with 0, 18
                                if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) and stor12 > -1 / uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256):
                                    revert with 0, 17
                                if not stor19:
                                    revert with 0, 18
                                if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor12 / stor19:
                                    require ext_code.size(stor13)
                                    call stor13.0xd0e30db0 with:
                                       value uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor12 / stor19 wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19:
                                    if not stor15[address(stor30[arg1].field_2560)][uint256(stor30[arg1].field_256)]:
                                        if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19 and stor11 > -1 / uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19:
                                            revert with 0, 17
                                        call address(stor10.field_8) with:
                                           value uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19 * stor11 / 100 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19 < uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19 * stor11 / 100:
                                            revert with 0, 17
                                        call stor21 with:
                                           value (uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19) - (uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19 * stor11 / 100) wei
                                             gas 2300 * is_zero(value) wei
                                    else:
                                        if stor16[address(stor31[arg1][uint256(stor31[arg1].field_0) - 1].field_0)] == -1:
                                            revert with 0, 17
                                        stor16[address(stor31[arg1][uint256(stor31[arg1].field_0) - 1].field_0)]++
                                        if stor16[address(stor30[arg1].field_2048)]:
                                            if not stor16[address(stor30[arg1].field_2048)]:
                                                revert with 0, 17
                                            stor16[address(stor30[arg1].field_2048)]--
                                            require ext_code.size(stor14)
                                            call stor14.0x8bccbf62 with:
                                                 gas gas_remaining wei
                                                args address(stor30[arg1].field_2048), stor16[address(stor30[arg1].field_2048)]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(stor14)
                                        call stor14.0x8bccbf62 with:
                                             gas gas_remaining wei
                                            args address(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_0), stor16[address(stor31[arg1][uint256(stor31[arg1].field_0) - 1].field_0)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(stor14)
                                        call stor14.0xd0e30db0 with:
                                           value uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19 wei
                                             gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19 > !(uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor12 / stor19):
                                    revert with 0, 17
                                if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) < (uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19) + (uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor12 / stor19):
                                    revert with 0, 17
                                call address(stor30[arg1].field_2048) with:
                                   value uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) - (uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor17 / stor19) - (uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) * stor12 / stor19) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                sub_3f88d08a[address(stor30[arg1].field_2560)]++
                                sub_3f88d08a[address(stor30[arg1].field_2560)][sub_3f88d08a[address(stor30[arg1].field_2560)]] = arg1
                                if address(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_0) != address(stor30[arg1].field_2048):
                                    if block.timestamp < stor48:
                                        revert with 0, 17
                                    if block.timestamp - stor48 >= 24 * 3600:
                                        sub_95ddf83a[address(stor30[arg1].field_2560)] = 0
                                        stor48 = block.timestamp
                                    if sub_95ddf83a[address(stor30[arg1].field_2560)] > !uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256):
                                        revert with 0, 17
                                    sub_95ddf83a[address(stor30[arg1].field_2560)] += uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256)
                                    if sub_c38694a5[address(stor30[arg1].field_2560)] > !uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256):
                                        revert with 0, 17
                                    sub_c38694a5[address(stor30[arg1].field_2560)] += uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256)
                                    if sub_92f62add[address(stor30[arg1].field_2560)][uint256(stor30[arg1].field_256)] > !uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256):
                                        revert with 0, 17
                                    sub_92f62add[address(stor30[arg1].field_2560)][uint256(stor30[arg1].field_256)] += uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256)
                                    if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) > uint256(stor30[stor52].field_1792):
                                        sub_9b175d77 = arg1
                                    if not uint256(stor30[stor53].field_1792):
                                        sub_362f53ca = arg1
                                    else:
                                        if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) < uint256(stor30[stor53].field_1792):
                                            sub_362f53ca = arg1
                                emit 0xa75e4909: arg1, uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256)
                            else:
                                if uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) < uint256(stor30[arg1].field_512):
                                    revert with 0, 17
                                call address(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_0) with:
                                   value uint256(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_256) - uint256(stor30[arg1].field_512) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                address(stor30[arg1].field_2304) = address(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_0)
                                uint256(stor30[arg1].field_1792) = uint256(stor30[arg1].field_512)
                                uint256(stor30[arg1].field_1536) = block.timestamp
                                require ext_code.size(address(stor30[arg1].field_2560))
                                call address(stor30[arg1].field_2560).0x42842e0e with:
                                     gas gas_remaining wei
                                    args this.address, address(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_0), uint256(stor30[arg1].field_256)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if uint256(stor30[arg1].field_512) and stor17 > -1 / uint256(stor30[arg1].field_512):
                                    revert with 0, 17
                                if not stor19:
                                    revert with 0, 18
                                if uint256(stor30[arg1].field_512) and stor12 > -1 / uint256(stor30[arg1].field_512):
                                    revert with 0, 17
                                if not stor19:
                                    revert with 0, 18
                                if uint256(stor30[arg1].field_512) * stor12 / stor19:
                                    require ext_code.size(stor13)
                                    call stor13.0xd0e30db0 with:
                                       value uint256(stor30[arg1].field_512) * stor12 / stor19 wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                if uint256(stor30[arg1].field_512) * stor17 / stor19:
                                    if not stor15[address(stor30[arg1].field_2560)][uint256(stor30[arg1].field_256)]:
                                        if uint256(stor30[arg1].field_512) * stor17 / stor19 and stor11 > -1 / uint256(stor30[arg1].field_512) * stor17 / stor19:
                                            revert with 0, 17
                                        call address(stor10.field_8) with:
                                           value uint256(stor30[arg1].field_512) * stor17 / stor19 * stor11 / 100 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if uint256(stor30[arg1].field_512) * stor17 / stor19 < uint256(stor30[arg1].field_512) * stor17 / stor19 * stor11 / 100:
                                            revert with 0, 17
                                        call stor21 with:
                                           value (uint256(stor30[arg1].field_512) * stor17 / stor19) - (uint256(stor30[arg1].field_512) * stor17 / stor19 * stor11 / 100) wei
                                             gas 2300 * is_zero(value) wei
                                    else:
                                        if stor16[address(stor31[arg1][uint256(stor31[arg1].field_0) - 1].field_0)] == -1:
                                            revert with 0, 17
                                        stor16[address(stor31[arg1][uint256(stor31[arg1].field_0) - 1].field_0)]++
                                        if stor16[address(stor30[arg1].field_2048)]:
                                            if not stor16[address(stor30[arg1].field_2048)]:
                                                revert with 0, 17
                                            stor16[address(stor30[arg1].field_2048)]--
                                            require ext_code.size(stor14)
                                            call stor14.0x8bccbf62 with:
                                                 gas gas_remaining wei
                                                args address(stor30[arg1].field_2048), stor16[address(stor30[arg1].field_2048)]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(stor14)
                                        call stor14.0x8bccbf62 with:
                                             gas gas_remaining wei
                                            args address(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_0), stor16[address(stor31[arg1][uint256(stor31[arg1].field_0) - 1].field_0)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(stor14)
                                        call stor14.0xd0e30db0 with:
                                           value uint256(stor30[arg1].field_512) * stor17 / stor19 wei
                                             gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                if uint256(stor30[arg1].field_512) * stor17 / stor19 > !(uint256(stor30[arg1].field_512) * stor12 / stor19):
                                    revert with 0, 17
                                if uint256(stor30[arg1].field_512) < (uint256(stor30[arg1].field_512) * stor17 / stor19) + (uint256(stor30[arg1].field_512) * stor12 / stor19):
                                    revert with 0, 17
                                call address(stor30[arg1].field_2048) with:
                                   value uint256(stor30[arg1].field_512) - (uint256(stor30[arg1].field_512) * stor17 / stor19) - (uint256(stor30[arg1].field_512) * stor12 / stor19) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                sub_3f88d08a[address(stor30[arg1].field_2560)]++
                                sub_3f88d08a[address(stor30[arg1].field_2560)][sub_3f88d08a[address(stor30[arg1].field_2560)]] = arg1
                                if address(sub_f7e65b1c[arg1][uint256(sub_f7e65b1c[arg1].field_0) - 1].field_0) != address(stor30[arg1].field_2048):
                                    if block.timestamp < stor48:
                                        revert with 0, 17
                                    if block.timestamp - stor48 >= 24 * 3600:
                                        sub_95ddf83a[address(stor30[arg1].field_2560)] = 0
                                        stor48 = block.timestamp
                                    if sub_95ddf83a[address(stor30[arg1].field_2560)] > !uint256(stor30[arg1].field_512):
                                        revert with 0, 17
                                    sub_95ddf83a[address(stor30[arg1].field_2560)] += uint256(stor30[arg1].field_512)
                                    if sub_c38694a5[address(stor30[arg1].field_2560)] > !uint256(stor30[arg1].field_512):
                                        revert with 0, 17
                                    sub_c38694a5[address(stor30[arg1].field_2560)] += uint256(stor30[arg1].field_512)
                                    if sub_92f62add[address(stor30[arg1].field_2560)][uint256(stor30[arg1].field_256)] > !uint256(stor30[arg1].field_512):
                                        revert with 0, 17
                                    sub_92f62add[address(stor30[arg1].field_2560)][uint256(stor30[arg1].field_256)] += uint256(stor30[arg1].field_512)
                                    if uint256(stor30[arg1].field_512) > uint256(stor30[stor52].field_1792):
                                        sub_9b175d77 = arg1
                                    if not uint256(stor30[stor53].field_1792):
                                        sub_362f53ca = arg1
                                    else:
                                        if uint256(stor30[arg1].field_512) < uint256(stor30[stor53].field_1792):
                                            sub_362f53ca = arg1
                                emit 0xa75e4909: arg1, uint256(stor30[arg1].field_512)
}



}
