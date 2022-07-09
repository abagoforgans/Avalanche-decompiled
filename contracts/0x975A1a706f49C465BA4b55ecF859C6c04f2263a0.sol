contract main {




// =====================  Runtime code  =====================


#
#  - sub_43f37b98(?)
#  - mintWhitelist(bytes32[] arg1, uint256 arg2)
#
const sub_084f75fd(?) = 4

const sub_0e5ac407(?) = 3000

const sub_16cd209a(?) = 5

const sub_250bc4e5(?) = 10000

const sub_2ef4e5e0(?) = 1

const sub_362e03ee(?) = 200

const sub_38189bc6(?) = 2

const sub_42046d9a(?) = 1

const sub_667cc514(?) = 500

const sub_cd3af33d(?) = 5000

const sub_f01e89a9(?) = 600

const sub_f9230ee3(?) = 12000


array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor7;
array of uint256 tokenByIndex;
mapping of uint256 stor9;
uint8 stor10; offset 160
address owner;
uint256 sub_fb0d9c0b;
uint256 sub_c7c4c301;
address cropAddress;
address splitterAddress;
address farmAddress;
address sub_3bc9c8dcAddress;
address royaltiesAddress;
array of struct stor18;
array of struct stor19;
array of struct stor20;
array of struct stor21;
uint8 stor22;
uint8 stor22; offset 8
uint8 stor22; offset 16
uint256 stor22; offset 24
uint256 stor22; offset 16
mapping of uint256 type;
mapping of uint256 sub_0805d884;
mapping of uint256 sub_9b1b585a;
mapping of uint256 sub_9e2bf7ef;
mapping of uint256 sub_e595c18f;
mapping of uint256 sub_051d8729;
mapping of uint256 sub_2cc978b9;
uint256 sub_6b44b919;
uint256 sub_fd666de7;
uint256 sub_cf0c3ef4;
uint256 sub_cee8fc59;
uint256 sub_9c1fda59;
uint256 sub_5786feb5;
uint256 sub_3cccac37;
uint256 sub_d3f4f1e0;
uint256 sub_2dbdbbe8;
uint256 sub_2476703e;
uint256 sub_a682f862;
uint256 sub_7c77fda2;
uint256 sub_1a279ccf;
uint256 merkleRoot;
mapping of uint256 whitelistClaimed;

function sub_051d8729(?) {
    require calldata.size - 4 >= 32
    return sub_051d8729[arg1]
}

function sub_0805d884(?) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0, 'token does not exist'
    return sub_0805d884[stor23[arg1]]
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function sub_1a279ccf(?) {
    return sub_1a279ccf
}

function sub_2476703e(?) {
    return sub_2476703e
}

function sub_2cc978b9(?) {
    require calldata.size - 4 >= 32
    return sub_2cc978b9[arg1]
}

function sub_2dbdbbe8(?) {
    return sub_2dbdbbe8
}

function merkleRoot() {
    return merkleRoot
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function royaltiesAddress() {
    return royaltiesAddress
}

function tokenTypes(uint256 arg1) {
    require calldata.size - 4 >= 32
    return type[arg1]
}

function sub_3bc9c8dc(?) {
    return sub_3bc9c8dcAddress
}

function sub_3cccac37(?) {
    return sub_3cccac37
}

function splitter() {
    return splitterAddress
}

function crop() {
    return cropAddress
}

function getType(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0, 'token does not exist'
    return type[arg1]
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function sub_5786feb5(?) {
    return sub_5786feb5
}

function paused() {
    return bool(stor10)
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function sub_6b44b919(?) {
    return sub_6b44b919
}

function sub_6de1a6d9(?) {
    require calldata.size - 4 >= 32
    return sub_0805d884[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function sub_7c77fda2(?) {
    return sub_7c77fda2
}

function whitelistOpen() {
    return bool(uint8(stor22.field_0))
}

function owner() {
    return owner
}

function sub_9b1b585a(?) {
    require calldata.size - 4 >= 32
    return sub_9b1b585a[arg1]
}

function sub_9c1fda59(?) {
    return sub_9c1fda59
}

function sub_9e2bf7ef(?) {
    require calldata.size - 4 >= 32
    return sub_9e2bf7ef[arg1]
}

function sub_a682f862(?) {
    return sub_a682f862
}

function sub_ae8b2ded(?) {
    return bool(uint8(stor22.field_16))
}

function sub_c7c4c301(?) {
    return sub_c7c4c301
}

function sub_cee8fc59(?) {
    return sub_cee8fc59
}

function sub_cf0c3ef4(?) {
    return sub_cf0c3ef4
}

function sub_d3f4f1e0(?) {
    return sub_d3f4f1e0
}

function sub_d9bea047(?) {
    return bool(uint8(stor22.field_8))
}

function whitelistClaimed(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return whitelistClaimed[arg1]
}

function sub_e595c18f(?) {
    require calldata.size - 4 >= 32
    return sub_e595c18f[arg1]
}

function farmAddress() {
    return farmAddress
}

function sub_fb0d9c0b(?) {
    return sub_fb0d9c0b
}

function sub_fd666de7(?) {
    return sub_fd666de7
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

function setMerkleRoot(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    merkleRoot = arg1
}

function setFarmAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    farmAddress = arg1
}

function sub_a377d7ef(?) {
    if 0 == sub_a682f862:
        return sub_a682f862 != 0
    if block.timestamp < sub_a682f862:
        return block.timestamp >= sub_a682f862
    return bool(uint8(stor22.field_8))
}

function sub_efe0d7ce(?) {
    if 0 == sub_2476703e:
        return sub_2476703e != 0
    if block.timestamp < sub_2476703e:
        return block.timestamp >= sub_2476703e
    return bool(uint8(stor22.field_0))
}

function sub_225da00d(?) {
    if 0 == sub_7c77fda2:
        return sub_7c77fda2 != 0
    if block.timestamp < sub_7c77fda2:
        return block.timestamp >= sub_7c77fda2
    return bool(uint8(stor22.field_16))
}

function sub_945726e1(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    cropAddress = address(arg1)
}

function setRoyaltiesAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    royaltiesAddress = arg1
}

function sub_6c39cc34(?) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_fb0d9c0b = arg1
    sub_c7c4c301 = arg2
    sub_1a279ccf = arg3
}

function sub_2747b2bd(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_3bc9c8dcAddress = address(arg1)
}

function sub_3c1d4de7(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < block.timestamp:
        revert with 0, 'startTime cannot be in the past'
    sub_a682f862 = arg1
}

function sub_a2fbba6e(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < block.timestamp:
        revert with 0, 'startTime cannot be in the past'
    sub_7c77fda2 = arg1
}

function sub_eb41903a(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < block.timestamp:
        revert with 0, 'startTime cannot be in the past'
    sub_2476703e = arg1
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not farmAddress:
        return bool(stor5[address(arg1)][address(arg2)])
    if farmAddress != arg2:
        return bool(stor5[address(arg1)][address(arg2)])
    return 1
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
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

function withdrawAVAX(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) < arg1:
        revert with 0, 'not enough AVAX'
    call msg.sender with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to send AVAX'
}

function sub_b72e67f9(?) {
    require calldata.size - 4 >= 96
    require arg1 == bool(arg1)
    require arg2 == bool(arg2)
    require arg3 == bool(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor22.field_0) = uint8(bool(arg1))
    uint8(stor22.field_8) = uint8(bool(arg2))
    Mask(240, 0, stor22.field_16) = Mask(240, 0, bool(arg3))
    Mask(232, 0, stor22.field_24) = Mask(232, 16, bool(arg2)) >> 16
    Mask(232, 0, stor22.field_24) = Mask(232, 24, bool(arg1)) >> 24
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x780e9d6300000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
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
        if not farmAddress:
            if not stor5[stor2[arg2]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'ERC721: approve caller is not owner nor approved for all'
        else:
            if farmAddress != msg.sender:
                if not stor5[stor2[arg2]][address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function sub_087fb92f(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor20.length):
        if bool(stor20.length) == uint255(stor20.length) * 0.5 < 32:
            revert with 0, 34
        if not ('cd', 4).length:
            stor20.length = 0
            idx = 0
            while (uint255(stor20.length) * 0.5) + 31 / 32 > idx:
                stor20[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor20.length = (2 * ('cd', 4).length) + 1
            s = 0
            idx = cd[4] + 36
            while cd[4] + ('cd', 4).length + 36 > idx:
                stor20[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
            while (uint255(stor20.length) * 0.5) + 31 / 32 > idx:
                stor20[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor20.length) == stor20.length.field_1 < 32:
            revert with 0, 34
        if not ('cd', 4).length:
            stor20.length = 0
            idx = 0
            while stor20.length.field_1 + 31 / 32 > idx:
                stor20[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor20.length = (2 * ('cd', 4).length) + 1
            s = 0
            idx = cd[4] + 36
            while cd[4] + ('cd', 4).length + 36 > idx:
                stor20[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
            while stor20.length.field_1 + 31 / 32 > idx:
                stor20[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_28f8bb1b(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor19.length):
        if bool(stor19.length) == uint255(stor19.length) * 0.5 < 32:
            revert with 0, 34
        if not ('cd', 4).length:
            stor19.length = 0
            idx = 0
            while (uint255(stor19.length) * 0.5) + 31 / 32 > idx:
                stor19[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor19.length = (2 * ('cd', 4).length) + 1
            s = 0
            idx = cd[4] + 36
            while cd[4] + ('cd', 4).length + 36 > idx:
                stor19[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
            while (uint255(stor19.length) * 0.5) + 31 / 32 > idx:
                stor19[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor19.length) == stor19.length.field_1 < 32:
            revert with 0, 34
        if not ('cd', 4).length:
            stor19.length = 0
            idx = 0
            while stor19.length.field_1 + 31 / 32 > idx:
                stor19[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor19.length = (2 * ('cd', 4).length) + 1
            s = 0
            idx = cd[4] + 36
            while cd[4] + ('cd', 4).length + 36 > idx:
                stor19[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
            while stor19.length.field_1 + 31 / 32 > idx:
                stor19[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_b59d8fe1(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor18.length):
        if bool(stor18.length) == uint255(stor18.length) * 0.5 < 32:
            revert with 0, 34
        if not ('cd', 4).length:
            stor18.length = 0
            idx = 0
            while (uint255(stor18.length) * 0.5) + 31 / 32 > idx:
                stor18[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor18.length = (2 * ('cd', 4).length) + 1
            s = 0
            idx = cd[4] + 36
            while cd[4] + ('cd', 4).length + 36 > idx:
                stor18[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
            while (uint255(stor18.length) * 0.5) + 31 / 32 > idx:
                stor18[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor18.length) == stor18.length.field_1 < 32:
            revert with 0, 34
        if not ('cd', 4).length:
            stor18.length = 0
            idx = 0
            while stor18.length.field_1 + 31 / 32 > idx:
                stor18[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor18.length = (2 * ('cd', 4).length) + 1
            s = 0
            idx = cd[4] + 36
            while cd[4] + ('cd', 4).length + 36 > idx:
                stor18[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
            while stor18.length.field_1 + 31 / 32 > idx:
                stor18[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_fcd0fe45(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor21.length):
        if bool(stor21.length) == uint255(stor21.length) * 0.5 < 32:
            revert with 0, 34
        if not ('cd', 4).length:
            stor21.length = 0
            idx = 0
            while (uint255(stor21.length) * 0.5) + 31 / 32 > idx:
                stor21[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor21.length = (2 * ('cd', 4).length) + 1
            s = 0
            idx = cd[4] + 36
            while cd[4] + ('cd', 4).length + 36 > idx:
                stor21[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
            while (uint255(stor21.length) * 0.5) + 31 / 32 > idx:
                stor21[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor21.length) == stor21.length.field_1 < 32:
            revert with 0, 34
        if not ('cd', 4).length:
            stor21.length = 0
            idx = 0
            while stor21.length.field_1 + 31 / 32 > idx:
                stor21[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor21.length = (2 * ('cd', 4).length) + 1
            s = 0
            idx = cd[4] + 36
            while cd[4] + ('cd', 4).length + 36 > idx:
                stor21[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
            while stor21.length.field_1 + 31 / 32 > idx:
                stor21[idx].field_0 = 0
                idx = idx + 1
                continue 
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
            if not farmAddress:
                if not stor5[stor2[arg3]][address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
            else:
                if farmAddress != msg.sender:
                    if not stor5[stor2[arg3]][address(msg.sender)]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if not arg1:
        stor9[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor7[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
            stor7[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor7[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
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

function name() {
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor0.length):
            if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor0.length):
                if 31 < uint255(stor0.length) * 0.5:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor0.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * stor0.length.field_8
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 0, 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * stor0.length.field_8
        mem[ceil32(uint255(stor0.length) * 0.5) + 192 len ceil32(uint255(stor0.length) * 0.5)] = mem[128 len ceil32(uint255(stor0.length) * 0.5)]
        if ceil32(uint255(stor0.length) * 0.5) > uint255(stor0.length) * 0.5:
            mem[(uint255(stor0.length) * 0.5) + ceil32(uint255(stor0.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)], mem[(2 * ceil32(uint255(stor0.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor0.length) * 0.5)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
        revert with 0, 34
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor0.length):
            if 31 < uint255(stor0.length) * 0.5:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while (uint255(stor0.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    else:
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
    if ceil32(stor0.length.field_1) > stor0.length.field_1:
        mem[stor0.length.field_1 + ceil32(stor0.length.field_1) + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
}

function symbol() {
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor1.length):
            if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor1.length):
                if 31 < uint255(stor1.length) * 0.5:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor1.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 0, 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(uint255(stor1.length) * 0.5) + 192 len ceil32(uint255(stor1.length) * 0.5)] = mem[128 len ceil32(uint255(stor1.length) * 0.5)]
        if ceil32(uint255(stor1.length) * 0.5) > uint255(stor1.length) * 0.5:
            mem[(uint255(stor1.length) * 0.5) + ceil32(uint255(stor1.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)], mem[(2 * ceil32(uint255(stor1.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor1.length) * 0.5)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 0, 34
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor1.length):
            if 31 < uint255(stor1.length) * 0.5:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while (uint255(stor1.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 0, 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
    if ceil32(stor1.length.field_1) > stor1.length.field_1:
        mem[stor1.length.field_1 + ceil32(stor1.length.field_1) + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
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
            if not farmAddress:
                if not stor5[stor2[arg3]][address(msg.sender)]:
                    revert with 0, 'ERC721: transfer caller is not owner nor approved'
            else:
                if farmAddress != msg.sender:
                    if not stor5[stor2[arg3]][address(msg.sender)]:
                        revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor9[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor7[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
            stor7[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor7[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
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
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
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

function sub_93ee11c2(?) {
    if bool(stor21.length):
        if bool(stor21.length) == uint255(stor21.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor21.length):
            if bool(stor21.length) == uint255(stor21.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor21.length):
                if 31 < uint255(stor21.length) * 0.5:
                    mem[128] = uint256(stor21.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor21.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor21[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor21.length), data=mem[128 len ceil32(uint255(stor21.length) * 0.5)])
                mem[128] = 256 * stor21.length.field_8
        else:
            if bool(stor21.length) == stor21.length.field_1 < 32:
                revert with 0, 34
            if stor21.length.field_1:
                if 31 < stor21.length.field_1:
                    mem[128] = uint256(stor21.field_0)
                    idx = 128
                    s = 0
                    while stor21.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor21[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor21.length), data=mem[128 len ceil32(uint255(stor21.length) * 0.5)])
                mem[128] = 256 * stor21.length.field_8
        mem[ceil32(uint255(stor21.length) * 0.5) + 192 len ceil32(uint255(stor21.length) * 0.5)] = mem[128 len ceil32(uint255(stor21.length) * 0.5)]
        if ceil32(uint255(stor21.length) * 0.5) > uint255(stor21.length) * 0.5:
            mem[(uint255(stor21.length) * 0.5) + ceil32(uint255(stor21.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor21.length), data=mem[128 len ceil32(uint255(stor21.length) * 0.5)], mem[(2 * ceil32(uint255(stor21.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor21.length) * 0.5)]), 
    if bool(stor21.length) == stor21.length.field_1 < 32:
        revert with 0, 34
    if bool(stor21.length):
        if bool(stor21.length) == uint255(stor21.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor21.length):
            if 31 < uint255(stor21.length) * 0.5:
                mem[128] = uint256(stor21.field_0)
                idx = 128
                s = 0
                while (uint255(stor21.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor21[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor21.length % 128, data=mem[128 len ceil32(stor21.length.field_1)])
            mem[128] = 256 * stor21.length.field_8
    else:
        if bool(stor21.length) == stor21.length.field_1 < 32:
            revert with 0, 34
        if stor21.length.field_1:
            if 31 < stor21.length.field_1:
                mem[128] = uint256(stor21.field_0)
                idx = 128
                s = 0
                while stor21.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor21[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor21.length % 128, data=mem[128 len ceil32(stor21.length.field_1)])
            mem[128] = 256 * stor21.length.field_8
    mem[ceil32(stor21.length.field_1) + 192 len ceil32(stor21.length.field_1)] = mem[128 len ceil32(stor21.length.field_1)]
    if ceil32(stor21.length.field_1) > stor21.length.field_1:
        mem[stor21.length.field_1 + ceil32(stor21.length.field_1) + 192] = 0
    return Array(len=stor21.length % 128, data=mem[128 len ceil32(stor21.length.field_1)], mem[(2 * ceil32(stor21.length.field_1)) + 192 len 2 * ceil32(stor21.length.field_1)]), 
}

function sub_a09fa6a2(?) {
    if bool(stor19.length):
        if bool(stor19.length) == uint255(stor19.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor19.length):
            if bool(stor19.length) == uint255(stor19.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor19.length):
                if 31 < uint255(stor19.length) * 0.5:
                    mem[128] = uint256(stor19.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor19.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor19[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor19.length), data=mem[128 len ceil32(uint255(stor19.length) * 0.5)])
                mem[128] = 256 * stor19.length.field_8
        else:
            if bool(stor19.length) == stor19.length.field_1 < 32:
                revert with 0, 34
            if stor19.length.field_1:
                if 31 < stor19.length.field_1:
                    mem[128] = uint256(stor19.field_0)
                    idx = 128
                    s = 0
                    while stor19.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor19[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor19.length), data=mem[128 len ceil32(uint255(stor19.length) * 0.5)])
                mem[128] = 256 * stor19.length.field_8
        mem[ceil32(uint255(stor19.length) * 0.5) + 192 len ceil32(uint255(stor19.length) * 0.5)] = mem[128 len ceil32(uint255(stor19.length) * 0.5)]
        if ceil32(uint255(stor19.length) * 0.5) > uint255(stor19.length) * 0.5:
            mem[(uint255(stor19.length) * 0.5) + ceil32(uint255(stor19.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor19.length), data=mem[128 len ceil32(uint255(stor19.length) * 0.5)], mem[(2 * ceil32(uint255(stor19.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor19.length) * 0.5)]), 
    if bool(stor19.length) == stor19.length.field_1 < 32:
        revert with 0, 34
    if bool(stor19.length):
        if bool(stor19.length) == uint255(stor19.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor19.length):
            if 31 < uint255(stor19.length) * 0.5:
                mem[128] = uint256(stor19.field_0)
                idx = 128
                s = 0
                while (uint255(stor19.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor19[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor19.length % 128, data=mem[128 len ceil32(stor19.length.field_1)])
            mem[128] = 256 * stor19.length.field_8
    else:
        if bool(stor19.length) == stor19.length.field_1 < 32:
            revert with 0, 34
        if stor19.length.field_1:
            if 31 < stor19.length.field_1:
                mem[128] = uint256(stor19.field_0)
                idx = 128
                s = 0
                while stor19.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor19[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor19.length % 128, data=mem[128 len ceil32(stor19.length.field_1)])
            mem[128] = 256 * stor19.length.field_8
    mem[ceil32(stor19.length.field_1) + 192 len ceil32(stor19.length.field_1)] = mem[128 len ceil32(stor19.length.field_1)]
    if ceil32(stor19.length.field_1) > stor19.length.field_1:
        mem[stor19.length.field_1 + ceil32(stor19.length.field_1) + 192] = 0
    return Array(len=stor19.length % 128, data=mem[128 len ceil32(stor19.length.field_1)], mem[(2 * ceil32(stor19.length.field_1)) + 192 len 2 * ceil32(stor19.length.field_1)]), 
}

function sub_abbc16b0(?) {
    if bool(stor20.length):
        if bool(stor20.length) == uint255(stor20.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor20.length):
            if bool(stor20.length) == uint255(stor20.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor20.length):
                if 31 < uint255(stor20.length) * 0.5:
                    mem[128] = uint256(stor20.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor20.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor20[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor20.length), data=mem[128 len ceil32(uint255(stor20.length) * 0.5)])
                mem[128] = 256 * stor20.length.field_8
        else:
            if bool(stor20.length) == stor20.length.field_1 < 32:
                revert with 0, 34
            if stor20.length.field_1:
                if 31 < stor20.length.field_1:
                    mem[128] = uint256(stor20.field_0)
                    idx = 128
                    s = 0
                    while stor20.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor20[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor20.length), data=mem[128 len ceil32(uint255(stor20.length) * 0.5)])
                mem[128] = 256 * stor20.length.field_8
        mem[ceil32(uint255(stor20.length) * 0.5) + 192 len ceil32(uint255(stor20.length) * 0.5)] = mem[128 len ceil32(uint255(stor20.length) * 0.5)]
        if ceil32(uint255(stor20.length) * 0.5) > uint255(stor20.length) * 0.5:
            mem[(uint255(stor20.length) * 0.5) + ceil32(uint255(stor20.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor20.length), data=mem[128 len ceil32(uint255(stor20.length) * 0.5)], mem[(2 * ceil32(uint255(stor20.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor20.length) * 0.5)]), 
    if bool(stor20.length) == stor20.length.field_1 < 32:
        revert with 0, 34
    if bool(stor20.length):
        if bool(stor20.length) == uint255(stor20.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor20.length):
            if 31 < uint255(stor20.length) * 0.5:
                mem[128] = uint256(stor20.field_0)
                idx = 128
                s = 0
                while (uint255(stor20.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor20[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor20.length % 128, data=mem[128 len ceil32(stor20.length.field_1)])
            mem[128] = 256 * stor20.length.field_8
    else:
        if bool(stor20.length) == stor20.length.field_1 < 32:
            revert with 0, 34
        if stor20.length.field_1:
            if 31 < stor20.length.field_1:
                mem[128] = uint256(stor20.field_0)
                idx = 128
                s = 0
                while stor20.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor20[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor20.length % 128, data=mem[128 len ceil32(stor20.length.field_1)])
            mem[128] = 256 * stor20.length.field_8
    mem[ceil32(stor20.length.field_1) + 192 len ceil32(stor20.length.field_1)] = mem[128 len ceil32(stor20.length.field_1)]
    if ceil32(stor20.length.field_1) > stor20.length.field_1:
        mem[stor20.length.field_1 + ceil32(stor20.length.field_1) + 192] = 0
    return Array(len=stor20.length % 128, data=mem[128 len ceil32(stor20.length.field_1)], mem[(2 * ceil32(stor20.length.field_1)) + 192 len 2 * ceil32(stor20.length.field_1)]), 
}

function sub_aca8ef8a(?) {
    if bool(stor18.length):
        if bool(stor18.length) == uint255(stor18.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor18.length):
            if bool(stor18.length) == uint255(stor18.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor18.length):
                if 31 < uint255(stor18.length) * 0.5:
                    mem[128] = uint256(stor18.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor18.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor18[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor18.length), data=mem[128 len ceil32(uint255(stor18.length) * 0.5)])
                mem[128] = 256 * stor18.length.field_8
        else:
            if bool(stor18.length) == stor18.length.field_1 < 32:
                revert with 0, 34
            if stor18.length.field_1:
                if 31 < stor18.length.field_1:
                    mem[128] = uint256(stor18.field_0)
                    idx = 128
                    s = 0
                    while stor18.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor18[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor18.length), data=mem[128 len ceil32(uint255(stor18.length) * 0.5)])
                mem[128] = 256 * stor18.length.field_8
        mem[ceil32(uint255(stor18.length) * 0.5) + 192 len ceil32(uint255(stor18.length) * 0.5)] = mem[128 len ceil32(uint255(stor18.length) * 0.5)]
        if ceil32(uint255(stor18.length) * 0.5) > uint255(stor18.length) * 0.5:
            mem[(uint255(stor18.length) * 0.5) + ceil32(uint255(stor18.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor18.length), data=mem[128 len ceil32(uint255(stor18.length) * 0.5)], mem[(2 * ceil32(uint255(stor18.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor18.length) * 0.5)]), 
    if bool(stor18.length) == stor18.length.field_1 < 32:
        revert with 0, 34
    if bool(stor18.length):
        if bool(stor18.length) == uint255(stor18.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor18.length):
            if 31 < uint255(stor18.length) * 0.5:
                mem[128] = uint256(stor18.field_0)
                idx = 128
                s = 0
                while (uint255(stor18.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor18[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor18.length % 128, data=mem[128 len ceil32(stor18.length.field_1)])
            mem[128] = 256 * stor18.length.field_8
    else:
        if bool(stor18.length) == stor18.length.field_1 < 32:
            revert with 0, 34
        if stor18.length.field_1:
            if 31 < stor18.length.field_1:
                mem[128] = uint256(stor18.field_0)
                idx = 128
                s = 0
                while stor18.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor18[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor18.length % 128, data=mem[128 len ceil32(stor18.length.field_1)])
            mem[128] = 256 * stor18.length.field_8
    mem[ceil32(stor18.length.field_1) + 192 len ceil32(stor18.length.field_1)] = mem[128 len ceil32(stor18.length.field_1)]
    if ceil32(stor18.length.field_1) > stor18.length.field_1:
        mem[stor18.length.field_1 + ceil32(stor18.length.field_1) + 192] = 0
    return Array(len=stor18.length % 128, data=mem[128 len ceil32(stor18.length.field_1)], mem[(2 * ceil32(stor18.length.field_1)) + 192 len 2 * ceil32(stor18.length.field_1)]), 
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
            if not farmAddress:
                if not stor5[stor2[arg3]][address(msg.sender)]:
                    revert with 0, 'ERC721: transfer caller is not owner nor approved'
            else:
                if farmAddress != msg.sender:
                    if not stor5[stor2[arg3]][address(msg.sender)]:
                        revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor9[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor7[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
            stor7[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor7[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
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
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
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

function sub_e79ad823(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    mem[0] = address(arg1)
    mem[32] = 3
    if arg2 >= balanceOf[address(arg1)]:
        mem[96] = 0
        mem[64] = 128
        mem[128] = 32
        mem[160] = 0
        idx = 0
        s = 128
        t = 192
        while idx < mem[96]:
            _87 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_87 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len -mem[64] + 192
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    mem[0] = address(arg1)
    mem[32] = 3
    if arg2 > !arg3:
        revert with 0, 17
    if arg2 + arg3 < balanceOf[address(arg1)]:
        if arg3 > test266151307():
            revert with 0, 65
        mem[96] = arg3
        mem[64] = (32 * arg3) + 128
        if not arg3:
            idx = 0
            while idx < arg3:
                if arg2 > !idx:
                    revert with 0, 17
                if not address(arg1):
                    revert with 0, 'ERC721: balance query for the zero address'
                if arg2 + idx >= balanceOf[address(arg1)]:
                    revert with 0, 'ERC721Enumerable: owner index out of bounds'
                mem[0] = arg2 + idx
                _125 = mem[64]
                mem[64] = mem[64] + 64
                mem[_125] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                mem[32] = 23
                mem[_125 + 32] = type[stor6[address(arg1)][arg2 + idx]]
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _125
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _91 = mem[64]
            mem[mem[64]] = 32
            _93 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _93:
                _155 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_155 + 32]
                idx = idx + 1
                s = s + 32
                t = t + 64
                continue 
            return memory
              from mem[64]
               len _91 + (64 * _93) + -mem[64] + 64
        mem[64] = (32 * arg3) + 192
        mem[(32 * arg3) + 128] = 0
        mem[(32 * arg3) + 160] = 0
        mem[128] = (32 * arg3) + 128
        s = 128
        idx = arg3
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(32 * arg3) + 128] = 0
            mem[(32 * arg3) + 160] = 0
            mem[s + 32] = (32 * arg3) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < arg3:
            if arg2 > !idx:
                revert with 0, 17
            if not address(arg1):
                revert with 0, 'ERC721: balance query for the zero address'
            if arg2 + idx >= balanceOf[address(arg1)]:
                revert with 0, 'ERC721Enumerable: owner index out of bounds'
            mem[0] = arg2 + idx
            _187 = mem[64]
            mem[64] = mem[64] + 64
            mem[_187] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
            mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
            mem[32] = 23
            mem[_187 + 32] = type[stor6[address(arg1)][arg2 + idx]]
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _187
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _163 = mem[64]
        mem[mem[64]] = 32
        _165 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _165:
            _195 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_195 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _163 + (64 * _165) + -mem[64] + 64
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    mem[0] = address(arg1)
    mem[32] = 3
    if balanceOf[address(arg1)] < arg2:
        revert with 0, 17
    if balanceOf[address(arg1)] - arg2 > test266151307():
        revert with 0, 65
    mem[96] = balanceOf[address(arg1)] - arg2
    mem[64] = (32 * balanceOf[address(arg1)] - arg2) + 128
    if not balanceOf[address(arg1)] - arg2:
        idx = 0
        while idx < balanceOf[address(arg1)] - arg2:
            if arg2 > !idx:
                revert with 0, 17
            if not address(arg1):
                revert with 0, 'ERC721: balance query for the zero address'
            if arg2 + idx >= balanceOf[address(arg1)]:
                revert with 0, 'ERC721Enumerable: owner index out of bounds'
            mem[0] = arg2 + idx
            _132 = mem[64]
            mem[64] = mem[64] + 64
            mem[_132] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
            mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
            mem[32] = 23
            mem[_132 + 32] = type[stor6[address(arg1)][arg2 + idx]]
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _132
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _92 = mem[64]
        mem[mem[64]] = 32
        _94 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _94:
            _158 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_158 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _92 + (64 * _94) + -mem[64] + 64
    mem[64] = (32 * balanceOf[address(arg1)] - arg2) + 192
    mem[(32 * balanceOf[address(arg1)] - arg2) + 128] = 0
    mem[(32 * balanceOf[address(arg1)] - arg2) + 160] = 0
    mem[128] = (32 * balanceOf[address(arg1)] - arg2) + 128
    s = 128
    idx = balanceOf[address(arg1)] - arg2
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * balanceOf[address(arg1)] - arg2) + 128] = 0
        mem[(32 * balanceOf[address(arg1)] - arg2) + 160] = 0
        mem[s + 32] = (32 * balanceOf[address(arg1)] - arg2) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < balanceOf[address(arg1)] - arg2:
        if arg2 > !idx:
            revert with 0, 17
        if not address(arg1):
            revert with 0, 'ERC721: balance query for the zero address'
        if arg2 + idx >= balanceOf[address(arg1)]:
            revert with 0, 'ERC721Enumerable: owner index out of bounds'
        mem[0] = arg2 + idx
        _191 = mem[64]
        mem[64] = mem[64] + 64
        mem[_191] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
        mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
        mem[32] = 23
        mem[_191 + 32] = type[stor6[address(arg1)][arg2 + idx]]
        if idx >= mem[96]:
            revert with 0, 50
        mem[(32 * idx) + 128] = _191
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _164 = mem[64]
    mem[mem[64]] = 32
    _166 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _166:
        _198 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_198 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _164 + (64 * _166) + -mem[64] + 64
}

function tokenInfo(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    mem[0] = arg1
    if sub_9b1b585a[arg1]:
        if type[arg1] != 1:
            mem[32] = 27
            if not sub_e595c18f[arg1]:
                mem[192] = 0x47454e315f474f4c443a00000000000000000000000000000000000000000000
                mem[202] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[203] = 32
                mem[235] = mem[160]
                mem[267 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(mem[160]) > mem[160]:
                    mem[mem[160] + 267] = 0
                return Array(len=mem[160], data=mem[267 len ceil32(mem[160])])
            s = 0
            idx = sub_e595c18f[arg1]
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            mem[96] = s
            mem[64] = ceil32(s) + 128
            if not s:
                t = s
                idx = sub_e595c18f[arg1]
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[96]:
                        revert with 0, 50
                    mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _267 = mem[64]
                mem[mem[64] + 32] = 0x47454e315f474f4c443a00000000000000000000000000000000000000000000
                _275 = mem[96]
                mem[mem[64] + 42 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    _419 = mem[64]
                    mem[64] = mem[96] + mem[64] + 42
                    mem[mem[96] + _267 + 42] = 32
                    _451 = mem[_419]
                    mem[_275 + _267 + 74] = mem[_419]
                    mem[_275 + _267 + 106 len ceil32(_451)] = mem[_419 + 32 len ceil32(_451)]
                    if ceil32(_451) > _451:
                        mem[_451 + _275 + _267 + 106] = 0
                    return memory
                      from mem[64]
                       len ceil32(_451) + _275 + _267 + -mem[64] + 106
                mem[mem[96] + mem[64] + 42] = 0
                _420 = mem[64]
                mem[64] = mem[96] + mem[64] + 42
                mem[mem[96] + _267 + 42] = 32
                _452 = mem[_420]
                mem[_275 + _267 + 74] = mem[_420]
                mem[_275 + _267 + 106 len ceil32(_452)] = mem[_420 + 32 len ceil32(_452)]
                if ceil32(_452) > _452:
                    mem[_452 + _275 + _267 + 106] = 0
                return 32, mem[_275 + _267 + 74 len ceil32(_452) + 32]
            mem[128 len s] = call.data[calldata.size len s]
            t = s
            idx = sub_e595c18f[arg1]
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[96]:
                    revert with 0, 50
                mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _268 = mem[64]
            mem[mem[64] + 32] = 0x47454e315f474f4c443a00000000000000000000000000000000000000000000
            _276 = mem[96]
            mem[mem[64] + 42 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                _421 = mem[64]
                mem[64] = mem[96] + mem[64] + 42
                mem[mem[96] + _268 + 42] = 32
                _453 = mem[_421]
                mem[_276 + _268 + 74] = mem[_421]
                mem[_276 + _268 + 106 len ceil32(_453)] = mem[_421 + 32 len ceil32(_453)]
                if ceil32(_453) > _453:
                    mem[_453 + _276 + _268 + 106] = 0
                return memory
                  from mem[64]
                   len ceil32(_453) + _276 + _268 + -mem[64] + 106
            mem[mem[96] + mem[64] + 42] = 0
            _422 = mem[64]
            mem[64] = mem[96] + mem[64] + 42
            mem[mem[96] + _268 + 42] = 32
            _454 = mem[_422]
            mem[_276 + _268 + 74] = mem[_422]
            mem[_276 + _268 + 106 len ceil32(_454)] = mem[_422 + 32 len ceil32(_454)]
            if ceil32(_454) > _454:
                mem[_454 + _276 + _268 + 106] = 0
            return 32, mem[_276 + _268 + 74 len ceil32(_454) + 32]
        mem[32] = 29
        if not sub_2cc978b9[arg1]:
            mem[192] = 0x47454e315f4e4f524d414c3a0000000000000000000000000000000000000000
            mem[204] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[205] = 32
            mem[237] = mem[160]
            mem[269 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(mem[160]) > mem[160]:
                mem[mem[160] + 269] = 0
            return Array(len=mem[160], data=mem[269 len ceil32(mem[160])])
        s = 0
        idx = sub_2cc978b9[arg1]
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        mem[96] = s
        mem[64] = ceil32(s) + 128
        if not s:
            t = s
            idx = sub_2cc978b9[arg1]
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[96]:
                    revert with 0, 50
                mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _269 = mem[64]
            mem[mem[64] + 32] = 0x47454e315f4e4f524d414c3a0000000000000000000000000000000000000000
            _277 = mem[96]
            mem[mem[64] + 44 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                _423 = mem[64]
                mem[64] = mem[96] + mem[64] + 44
                mem[mem[96] + _269 + 44] = 32
                _455 = mem[_423]
                mem[_277 + _269 + 76] = mem[_423]
                mem[_277 + _269 + 108 len ceil32(_455)] = mem[_423 + 32 len ceil32(_455)]
                if ceil32(_455) > _455:
                    mem[_455 + _277 + _269 + 108] = 0
                return memory
                  from mem[64]
                   len ceil32(_455) + _277 + _269 + -mem[64] + 108
            mem[mem[96] + mem[64] + 44] = 0
            _424 = mem[64]
            mem[64] = mem[96] + mem[64] + 44
            mem[mem[96] + _269 + 44] = 32
            _456 = mem[_424]
            mem[_277 + _269 + 76] = mem[_424]
            mem[_277 + _269 + 108 len ceil32(_456)] = mem[_424 + 32 len ceil32(_456)]
            if ceil32(_456) > _456:
                mem[_456 + _277 + _269 + 108] = 0
            return 32, mem[_277 + _269 + 76 len ceil32(_456) + 32]
        mem[128 len s] = call.data[calldata.size len s]
        t = s
        idx = sub_2cc978b9[arg1]
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[96]:
                revert with 0, 50
            mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _270 = mem[64]
        mem[mem[64] + 32] = 0x47454e315f4e4f524d414c3a0000000000000000000000000000000000000000
        _278 = mem[96]
        mem[mem[64] + 44 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            _425 = mem[64]
            mem[64] = mem[96] + mem[64] + 44
            mem[mem[96] + _270 + 44] = 32
            _457 = mem[_425]
            mem[_278 + _270 + 76] = mem[_425]
            mem[_278 + _270 + 108 len ceil32(_457)] = mem[_425 + 32 len ceil32(_457)]
            if ceil32(_457) > _457:
                mem[_457 + _278 + _270 + 108] = 0
            return memory
              from mem[64]
               len ceil32(_457) + _278 + _270 + -mem[64] + 108
        mem[mem[96] + mem[64] + 44] = 0
        _426 = mem[64]
        mem[64] = mem[96] + mem[64] + 44
        mem[mem[96] + _270 + 44] = 32
        _458 = mem[_426]
        mem[_278 + _270 + 76] = mem[_426]
        mem[_278 + _270 + 108 len ceil32(_458)] = mem[_426 + 32 len ceil32(_458)]
        if ceil32(_458) > _458:
            mem[_458 + _278 + _270 + 108] = 0
        return 32, mem[_278 + _270 + 76 len ceil32(_458) + 32]
    if type[arg1] != 1:
        mem[32] = 26
        if not sub_9e2bf7ef[arg1]:
            mem[192] = 0x47454e305f474f4c443a00000000000000000000000000000000000000000000
            mem[202] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[203] = 32
            mem[235] = mem[160]
            mem[267 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(mem[160]) > mem[160]:
                mem[mem[160] + 267] = 0
            return Array(len=mem[160], data=mem[267 len ceil32(mem[160])])
        s = 0
        idx = sub_9e2bf7ef[arg1]
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        mem[96] = s
        mem[64] = ceil32(s) + 128
        if not s:
            t = s
            idx = sub_9e2bf7ef[arg1]
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[96]:
                    revert with 0, 50
                mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _271 = mem[64]
            mem[mem[64] + 32] = 0x47454e305f474f4c443a00000000000000000000000000000000000000000000
            _279 = mem[96]
            mem[mem[64] + 42 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                _427 = mem[64]
                mem[64] = mem[96] + mem[64] + 42
                mem[mem[96] + _271 + 42] = 32
                _459 = mem[_427]
                mem[_279 + _271 + 74] = mem[_427]
                mem[_279 + _271 + 106 len ceil32(_459)] = mem[_427 + 32 len ceil32(_459)]
                if ceil32(_459) > _459:
                    mem[_459 + _279 + _271 + 106] = 0
                return memory
                  from mem[64]
                   len ceil32(_459) + _279 + _271 + -mem[64] + 106
            mem[mem[96] + mem[64] + 42] = 0
            _428 = mem[64]
            mem[64] = mem[96] + mem[64] + 42
            mem[mem[96] + _271 + 42] = 32
            _460 = mem[_428]
            mem[_279 + _271 + 74] = mem[_428]
            mem[_279 + _271 + 106 len ceil32(_460)] = mem[_428 + 32 len ceil32(_460)]
            if ceil32(_460) > _460:
                mem[_460 + _279 + _271 + 106] = 0
            return 32, mem[_279 + _271 + 74 len ceil32(_460) + 32]
        mem[128 len s] = call.data[calldata.size len s]
        t = s
        idx = sub_9e2bf7ef[arg1]
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[96]:
                revert with 0, 50
            mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _272 = mem[64]
        mem[mem[64] + 32] = 0x47454e305f474f4c443a00000000000000000000000000000000000000000000
        _280 = mem[96]
        mem[mem[64] + 42 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            _429 = mem[64]
            mem[64] = mem[96] + mem[64] + 42
            mem[mem[96] + _272 + 42] = 32
            _461 = mem[_429]
            mem[_280 + _272 + 74] = mem[_429]
            mem[_280 + _272 + 106 len ceil32(_461)] = mem[_429 + 32 len ceil32(_461)]
            if ceil32(_461) > _461:
                mem[_461 + _280 + _272 + 106] = 0
            return memory
              from mem[64]
               len ceil32(_461) + _280 + _272 + -mem[64] + 106
        mem[mem[96] + mem[64] + 42] = 0
        _430 = mem[64]
        mem[64] = mem[96] + mem[64] + 42
        mem[mem[96] + _272 + 42] = 32
        _462 = mem[_430]
        mem[_280 + _272 + 74] = mem[_430]
        mem[_280 + _272 + 106 len ceil32(_462)] = mem[_430 + 32 len ceil32(_462)]
        if ceil32(_462) > _462:
            mem[_462 + _280 + _272 + 106] = 0
        return 32, mem[_280 + _272 + 74 len ceil32(_462) + 32]
    mem[32] = 28
    if not sub_051d8729[arg1]:
        mem[192] = 0x47454e305f4e4f524d414c3a0000000000000000000000000000000000000000
        mem[204] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[205] = 32
        mem[237] = mem[160]
        mem[269 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if ceil32(mem[160]) > mem[160]:
            mem[mem[160] + 269] = 0
        return Array(len=mem[160], data=mem[269 len ceil32(mem[160])])
    s = 0
    idx = sub_051d8729[arg1]
    while idx:
        if s == -1:
            revert with 0, 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[96] = s
    mem[64] = ceil32(s) + 128
    if not s:
        t = s
        idx = sub_051d8729[arg1]
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[96]:
                revert with 0, 50
            mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _273 = mem[64]
        mem[mem[64] + 32] = 0x47454e305f4e4f524d414c3a0000000000000000000000000000000000000000
        _281 = mem[96]
        mem[mem[64] + 44 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            _431 = mem[64]
            mem[64] = mem[96] + mem[64] + 44
            mem[mem[96] + _273 + 44] = 32
            _463 = mem[_431]
            mem[_281 + _273 + 76] = mem[_431]
            mem[_281 + _273 + 108 len ceil32(_463)] = mem[_431 + 32 len ceil32(_463)]
            if ceil32(_463) > _463:
                mem[_463 + _281 + _273 + 108] = 0
            return memory
              from mem[64]
               len ceil32(_463) + _281 + _273 + -mem[64] + 108
        mem[mem[96] + mem[64] + 44] = 0
        _432 = mem[64]
        mem[64] = mem[96] + mem[64] + 44
        mem[mem[96] + _273 + 44] = 32
        _464 = mem[_432]
        mem[_281 + _273 + 76] = mem[_432]
        mem[_281 + _273 + 108 len ceil32(_464)] = mem[_432 + 32 len ceil32(_464)]
        if ceil32(_464) > _464:
            mem[_464 + _281 + _273 + 108] = 0
        return 32, mem[_281 + _273 + 76 len ceil32(_464) + 32]
    mem[128 len s] = call.data[calldata.size len s]
    t = s
    idx = sub_051d8729[arg1]
    while idx:
        if t < 1:
            revert with 0, 17
        if 48 > !(idx % 10):
            revert with 0, 17
        if t - 1 >= mem[96]:
            revert with 0, 50
        mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _274 = mem[64]
    mem[mem[64] + 32] = 0x47454e305f4e4f524d414c3a0000000000000000000000000000000000000000
    _282 = mem[96]
    mem[mem[64] + 44 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) <= mem[96]:
        _433 = mem[64]
        mem[64] = mem[96] + mem[64] + 44
        mem[mem[96] + _274 + 44] = 32
        _465 = mem[_433]
        mem[_282 + _274 + 76] = mem[_433]
        mem[_282 + _274 + 108 len ceil32(_465)] = mem[_433 + 32 len ceil32(_465)]
        if ceil32(_465) > _465:
            mem[_465 + _282 + _274 + 108] = 0
        return memory
          from mem[64]
           len ceil32(_465) + _282 + _274 + -mem[64] + 108
    mem[mem[96] + mem[64] + 44] = 0
    _434 = mem[64]
    mem[64] = mem[96] + mem[64] + 44
    mem[mem[96] + _274 + 44] = 32
    _466 = mem[_434]
    mem[_282 + _274 + 76] = mem[_434]
    mem[_282 + _274 + 108 len ceil32(_466)] = mem[_434 + 32 len ceil32(_466)]
    if ceil32(_466) > _466:
        mem[_466 + _282 + _274 + 108] = 0
    return 32, mem[_282 + _274 + 76 len ceil32(_466) + 32]
}

function sub_db4415a4(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'quantity must be greater than 0'
    if sub_d3f4f1e0 > !arg1:
        revert with 0, 17
    if sub_d3f4f1e0 + arg1 > 200:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'you can't mint that many right now'
    idx = 0
    while idx < arg1:
        if sub_d3f4f1e0 > -2:
            revert with 0, 17
        sub_d3f4f1e0++
        if sub_2dbdbbe8 > 22000:
            revert with 0, 'cannot mint anymore Farmers'
        _437 = mem[64]
        mem[64] = mem[64] + 32
        mem[_437] = 0
        if not address(arg2):
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor37]:
            revert with 0, 'ERC721: token already minted'
        stor9[stor37] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = sub_d3f4f1e0
        if address(arg2):
            if not address(arg2):
                if balanceOf[address(arg2)] > -2:
                    revert with 0, 17
                balanceOf[address(arg2)]++
                mem[0] = sub_d3f4f1e0
                mem[32] = 2
                ownerOf[stor37] = address(arg2)
                emit Transfer(0, address(arg2), sub_d3f4f1e0);
                if not ext_code.size(address(arg2)):
                    mem[mem[64] + 4] = tx.origin
                    call sub_3bc9c8dcAddress.0x662bb8f4 with:
                         gas gas_remaining wei
                        args tx.origin
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _470 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[0] = sub_d3f4f1e0
                    if type[stor37]:
                        revert with 0, 'that token's type has already been set'
                    if mem[_470] % 19:
                        type[stor37] = 1
                        mem[mem[64] + 32] = 1
                        emit 0xf1c9c524: sub_d3f4f1e0, 1
                        if 1 > !sub_6b44b919:
                            revert with 0, 17
                        sub_6b44b919++
                        mem[0] = sub_d3f4f1e0
                        sub_9b1b585a[stor37] = 0
                        mem[32] = 28
                        sub_051d8729[stor37] = sub_6b44b919
                    else:
                        if sub_cf0c3ef4 >= 600:
                            type[stor37] = 1
                            mem[mem[64] + 32] = 1
                            emit 0xf1c9c524: sub_d3f4f1e0, 1
                            if 1 > !sub_6b44b919:
                                revert with 0, 17
                            sub_6b44b919++
                            mem[0] = sub_d3f4f1e0
                            sub_9b1b585a[stor37] = 0
                            mem[32] = 28
                            sub_051d8729[stor37] = sub_6b44b919
                        else:
                            type[stor37] = 2
                            mem[mem[64] + 32] = 2
                            emit 0xf1c9c524: sub_d3f4f1e0, 2
                            if 1 > !sub_cf0c3ef4:
                                revert with 0, 17
                            sub_cf0c3ef4++
                            mem[0] = sub_d3f4f1e0
                            sub_9b1b585a[stor37] = 0
                            mem[32] = 26
                            sub_9e2bf7ef[stor37] = sub_cf0c3ef4
                else:
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = sub_d3f4f1e0
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _437 + 32]
                        s = s + 32
                        continue 
                    call address(arg2).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, sub_d3f4f1e0, 128, 0
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
                    _874 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_874] == Mask(32, 224, mem[_874])
                    if Mask(32, 224, mem[_874]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    mem[mem[64] + 4] = tx.origin
                    call sub_3bc9c8dcAddress.0x662bb8f4 with:
                         gas gas_remaining wei
                        args tx.origin
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _964 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[0] = sub_d3f4f1e0
                    if type[stor37]:
                        revert with 0, 'that token's type has already been set'
                    if mem[_964] % 19:
                        type[stor37] = 1
                        mem[mem[64] + 32] = 1
                        emit 0xf1c9c524: sub_d3f4f1e0, 1
                        if 1 > !sub_6b44b919:
                            revert with 0, 17
                        sub_6b44b919++
                        mem[0] = sub_d3f4f1e0
                        sub_9b1b585a[stor37] = 0
                        mem[32] = 28
                        sub_051d8729[stor37] = sub_6b44b919
                    else:
                        if sub_cf0c3ef4 >= 600:
                            type[stor37] = 1
                            mem[mem[64] + 32] = 1
                            emit 0xf1c9c524: sub_d3f4f1e0, 1
                            if 1 > !sub_6b44b919:
                                revert with 0, 17
                            sub_6b44b919++
                            mem[0] = sub_d3f4f1e0
                            sub_9b1b585a[stor37] = 0
                            mem[32] = 28
                            sub_051d8729[stor37] = sub_6b44b919
                        else:
                            type[stor37] = 2
                            mem[mem[64] + 32] = 2
                            emit 0xf1c9c524: sub_d3f4f1e0, 2
                            if 1 > !sub_cf0c3ef4:
                                revert with 0, 17
                            sub_cf0c3ef4++
                            mem[0] = sub_d3f4f1e0
                            sub_9b1b585a[stor37] = 0
                            mem[32] = 26
                            sub_9e2bf7ef[stor37] = sub_cf0c3ef4
            else:
                if not address(arg2):
                    revert with 0, 'ERC721: balance query for the zero address'
                tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = sub_d3f4f1e0
                stor7[stor37] = balanceOf[address(arg2)]
                if balanceOf[address(arg2)] > -2:
                    revert with 0, 17
                balanceOf[address(arg2)]++
                mem[0] = sub_d3f4f1e0
                mem[32] = 2
                ownerOf[stor37] = address(arg2)
                emit Transfer(0, address(arg2), sub_d3f4f1e0);
                if not ext_code.size(address(arg2)):
                    mem[mem[64] + 4] = tx.origin
                    call sub_3bc9c8dcAddress.0x662bb8f4 with:
                         gas gas_remaining wei
                        args tx.origin
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _483 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[0] = sub_d3f4f1e0
                    if type[stor37]:
                        revert with 0, 'that token's type has already been set'
                    if mem[_483] % 19:
                        type[stor37] = 1
                        mem[mem[64] + 32] = 1
                        emit 0xf1c9c524: sub_d3f4f1e0, 1
                        if 1 > !sub_6b44b919:
                            revert with 0, 17
                        sub_6b44b919++
                        mem[0] = sub_d3f4f1e0
                        sub_9b1b585a[stor37] = 0
                        mem[32] = 28
                        sub_051d8729[stor37] = sub_6b44b919
                    else:
                        if sub_cf0c3ef4 >= 600:
                            type[stor37] = 1
                            mem[mem[64] + 32] = 1
                            emit 0xf1c9c524: sub_d3f4f1e0, 1
                            if 1 > !sub_6b44b919:
                                revert with 0, 17
                            sub_6b44b919++
                            mem[0] = sub_d3f4f1e0
                            sub_9b1b585a[stor37] = 0
                            mem[32] = 28
                            sub_051d8729[stor37] = sub_6b44b919
                        else:
                            type[stor37] = 2
                            mem[mem[64] + 32] = 2
                            emit 0xf1c9c524: sub_d3f4f1e0, 2
                            if 1 > !sub_cf0c3ef4:
                                revert with 0, 17
                            sub_cf0c3ef4++
                            mem[0] = sub_d3f4f1e0
                            sub_9b1b585a[stor37] = 0
                            mem[32] = 26
                            sub_9e2bf7ef[stor37] = sub_cf0c3ef4
                else:
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = sub_d3f4f1e0
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _437 + 32]
                        s = s + 32
                        continue 
                    call address(arg2).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, sub_d3f4f1e0, 128, 0
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
                    _876 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_876] == Mask(32, 224, mem[_876])
                    if Mask(32, 224, mem[_876]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    mem[mem[64] + 4] = tx.origin
                    call sub_3bc9c8dcAddress.0x662bb8f4 with:
                         gas gas_remaining wei
                        args tx.origin
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _966 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[0] = sub_d3f4f1e0
                    if type[stor37]:
                        revert with 0, 'that token's type has already been set'
                    if mem[_966] % 19:
                        type[stor37] = 1
                        mem[mem[64] + 32] = 1
                        emit 0xf1c9c524: sub_d3f4f1e0, 1
                        if 1 > !sub_6b44b919:
                            revert with 0, 17
                        sub_6b44b919++
                        mem[0] = sub_d3f4f1e0
                        sub_9b1b585a[stor37] = 0
                        mem[32] = 28
                        sub_051d8729[stor37] = sub_6b44b919
                    else:
                        if sub_cf0c3ef4 >= 600:
                            type[stor37] = 1
                            mem[mem[64] + 32] = 1
                            emit 0xf1c9c524: sub_d3f4f1e0, 1
                            if 1 > !sub_6b44b919:
                                revert with 0, 17
                            sub_6b44b919++
                            mem[0] = sub_d3f4f1e0
                            sub_9b1b585a[stor37] = 0
                            mem[32] = 28
                            sub_051d8729[stor37] = sub_6b44b919
                        else:
                            type[stor37] = 2
                            mem[mem[64] + 32] = 2
                            emit 0xf1c9c524: sub_d3f4f1e0, 2
                            if 1 > !sub_cf0c3ef4:
                                revert with 0, 17
                            sub_cf0c3ef4++
                            mem[0] = sub_d3f4f1e0
                            sub_9b1b585a[stor37] = 0
                            mem[32] = 26
                            sub_9e2bf7ef[stor37] = sub_cf0c3ef4
        else:
            if tokenByIndex.length < 1:
                revert with 0, 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 0, 50
            if stor9[stor37] >= tokenByIndex.length:
                revert with 0, 50
            tokenByIndex[stor9[stor37]] = tokenByIndex[tokenByIndex.length]
            stor9[stor8[stor8.length]] = stor9[stor37]
            stor9[stor37] = 0
            if not tokenByIndex.length:
                revert with 0, 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
            if balanceOf[address(arg2)] > -2:
                revert with 0, 17
            balanceOf[address(arg2)]++
            mem[0] = sub_d3f4f1e0
            mem[32] = 2
            ownerOf[stor37] = address(arg2)
            emit Transfer(0, address(arg2), sub_d3f4f1e0);
            if not ext_code.size(address(arg2)):
                mem[mem[64] + 4] = tx.origin
                call sub_3bc9c8dcAddress.0x662bb8f4 with:
                     gas gas_remaining wei
                    args tx.origin
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _492 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[0] = sub_d3f4f1e0
                if type[stor37]:
                    revert with 0, 'that token's type has already been set'
                if mem[_492] % 19:
                    type[stor37] = 1
                    mem[mem[64] + 32] = 1
                    emit 0xf1c9c524: sub_d3f4f1e0, 1
                    if 1 > !sub_6b44b919:
                        revert with 0, 17
                    sub_6b44b919++
                    mem[0] = sub_d3f4f1e0
                    sub_9b1b585a[stor37] = 0
                    mem[32] = 28
                    sub_051d8729[stor37] = sub_6b44b919
                else:
                    if sub_cf0c3ef4 >= 600:
                        type[stor37] = 1
                        mem[mem[64] + 32] = 1
                        emit 0xf1c9c524: sub_d3f4f1e0, 1
                        if 1 > !sub_6b44b919:
                            revert with 0, 17
                        sub_6b44b919++
                        mem[0] = sub_d3f4f1e0
                        sub_9b1b585a[stor37] = 0
                        mem[32] = 28
                        sub_051d8729[stor37] = sub_6b44b919
                    else:
                        type[stor37] = 2
                        mem[mem[64] + 32] = 2
                        emit 0xf1c9c524: sub_d3f4f1e0, 2
                        if 1 > !sub_cf0c3ef4:
                            revert with 0, 17
                        sub_cf0c3ef4++
                        mem[0] = sub_d3f4f1e0
                        sub_9b1b585a[stor37] = 0
                        mem[32] = 26
                        sub_9e2bf7ef[stor37] = sub_cf0c3ef4
            else:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = sub_d3f4f1e0
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 164] = mem[s + _437 + 32]
                    s = s + 32
                    continue 
                call address(arg2).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, sub_d3f4f1e0, 128, 0
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
                _878 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_878] == Mask(32, 224, mem[_878])
                if Mask(32, 224, mem[_878]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                mem[mem[64] + 4] = tx.origin
                call sub_3bc9c8dcAddress.0x662bb8f4 with:
                     gas gas_remaining wei
                    args tx.origin
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _968 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[0] = sub_d3f4f1e0
                if type[stor37]:
                    revert with 0, 'that token's type has already been set'
                if mem[_968] % 19:
                    type[stor37] = 1
                    mem[mem[64] + 32] = 1
                    emit 0xf1c9c524: sub_d3f4f1e0, 1
                    if 1 > !sub_6b44b919:
                        revert with 0, 17
                    sub_6b44b919++
                    mem[0] = sub_d3f4f1e0
                    sub_9b1b585a[stor37] = 0
                    mem[32] = 28
                    sub_051d8729[stor37] = sub_6b44b919
                else:
                    if sub_cf0c3ef4 >= 600:
                        type[stor37] = 1
                        mem[mem[64] + 32] = 1
                        emit 0xf1c9c524: sub_d3f4f1e0, 1
                        if 1 > !sub_6b44b919:
                            revert with 0, 17
                        sub_6b44b919++
                        mem[0] = sub_d3f4f1e0
                        sub_9b1b585a[stor37] = 0
                        mem[32] = 28
                        sub_051d8729[stor37] = sub_6b44b919
                    else:
                        type[stor37] = 2
                        mem[mem[64] + 32] = 2
                        emit 0xf1c9c524: sub_d3f4f1e0, 2
                        if 1 > !sub_cf0c3ef4:
                            revert with 0, 17
                        sub_cf0c3ef4++
                        mem[0] = sub_d3f4f1e0
                        sub_9b1b585a[stor37] = 0
                        mem[32] = 26
                        sub_9e2bf7ef[stor37] = sub_cf0c3ef4
        mem[mem[64]] = sub_d3f4f1e0
        emit 0xceb9ce42: sub_d3f4f1e0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_b33c690c(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if stor10:
        revert with 0, 'Pausable: paused'
    if 0 == sub_a682f862:
        revert with 0, 'cannot mint right now'
    if block.timestamp < sub_a682f862:
        revert with 0, 'cannot mint right now'
    if not uint8(stor22.field_8):
        revert with 0, 'cannot mint right now'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'quantity must be between 1 and 10'
    if arg1 > 10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'quantity must be between 1 and 10'
    if 12000 < sub_3cccac37:
        revert with 0, 17
    if -sub_3cccac37 + 12000 < 200:
        revert with 0, 17
    if sub_9c1fda59 > !arg1:
        revert with 0, 17
    if sub_9c1fda59 + arg1 > -sub_3cccac37 + 11800:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'you can't mint that many right now'
    if sub_c7c4c301 and arg1 > -1 / sub_c7c4c301:
        revert with 0, 17
    if msg.value < sub_c7c4c301 * arg1:
        revert with 0, 'not enough AVAX'
    if sub_9c1fda59 > !arg1:
        revert with 0, 17
    sub_9c1fda59 += arg1
    call splitterAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96] = 0xdbceb00500000000000000000000000000000000000000000000000000000000
    mem[100] = msg.value
    require ext_code.size(splitterAddress)
    call splitterAddress.0xdbceb005 with:
         gas gas_remaining wei
        args msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    while idx < arg1:
        if sub_2dbdbbe8 > -2:
            revert with 0, 17
        sub_2dbdbbe8++
        if sub_2dbdbbe8 > 22000:
            revert with 0, 'cannot mint anymore Farmers'
        _450 = mem[64]
        mem[64] = mem[64] + 32
        mem[_450] = 0
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor38]:
            revert with 0, 'ERC721: token already minted'
        stor9[stor38] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = sub_2dbdbbe8
        if msg.sender:
            if not msg.sender:
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = sub_2dbdbbe8
                mem[32] = 2
                ownerOf[stor38] = msg.sender
                emit Transfer(0, msg.sender, sub_2dbdbbe8);
                if not ext_code.size(msg.sender):
                    mem[mem[64] + 4] = tx.origin
                    call sub_3bc9c8dcAddress.0x662bb8f4 with:
                         gas gas_remaining wei
                        args tx.origin
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _483 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[0] = sub_2dbdbbe8
                    if type[stor38]:
                        revert with 0, 'that token's type has already been set'
                    if mem[_483] % 19:
                        type[stor38] = 1
                        mem[mem[64] + 32] = 1
                        emit 0xf1c9c524: sub_2dbdbbe8, 1
                        if 1 > !sub_6b44b919:
                            revert with 0, 17
                        sub_6b44b919++
                        mem[0] = sub_2dbdbbe8
                        sub_9b1b585a[stor38] = 0
                        mem[32] = 28
                        sub_051d8729[stor38] = sub_6b44b919
                    else:
                        if sub_cf0c3ef4 >= 600:
                            type[stor38] = 1
                            mem[mem[64] + 32] = 1
                            emit 0xf1c9c524: sub_2dbdbbe8, 1
                            if 1 > !sub_6b44b919:
                                revert with 0, 17
                            sub_6b44b919++
                            mem[0] = sub_2dbdbbe8
                            sub_9b1b585a[stor38] = 0
                            mem[32] = 28
                            sub_051d8729[stor38] = sub_6b44b919
                        else:
                            type[stor38] = 2
                            mem[mem[64] + 32] = 2
                            emit 0xf1c9c524: sub_2dbdbbe8, 2
                            if 1 > !sub_cf0c3ef4:
                                revert with 0, 17
                            sub_cf0c3ef4++
                            mem[0] = sub_2dbdbbe8
                            sub_9b1b585a[stor38] = 0
                            mem[32] = 26
                            sub_9e2bf7ef[stor38] = sub_cf0c3ef4
                else:
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = sub_2dbdbbe8
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _450 + 32]
                        s = s + 32
                        continue 
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, sub_2dbdbbe8, 128, 0
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
                    _887 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_887] == Mask(32, 224, mem[_887])
                    if Mask(32, 224, mem[_887]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    mem[mem[64] + 4] = tx.origin
                    call sub_3bc9c8dcAddress.0x662bb8f4 with:
                         gas gas_remaining wei
                        args tx.origin
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _977 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[0] = sub_2dbdbbe8
                    if type[stor38]:
                        revert with 0, 'that token's type has already been set'
                    if mem[_977] % 19:
                        type[stor38] = 1
                        mem[mem[64] + 32] = 1
                        emit 0xf1c9c524: sub_2dbdbbe8, 1
                        if 1 > !sub_6b44b919:
                            revert with 0, 17
                        sub_6b44b919++
                        mem[0] = sub_2dbdbbe8
                        sub_9b1b585a[stor38] = 0
                        mem[32] = 28
                        sub_051d8729[stor38] = sub_6b44b919
                    else:
                        if sub_cf0c3ef4 >= 600:
                            type[stor38] = 1
                            mem[mem[64] + 32] = 1
                            emit 0xf1c9c524: sub_2dbdbbe8, 1
                            if 1 > !sub_6b44b919:
                                revert with 0, 17
                            sub_6b44b919++
                            mem[0] = sub_2dbdbbe8
                            sub_9b1b585a[stor38] = 0
                            mem[32] = 28
                            sub_051d8729[stor38] = sub_6b44b919
                        else:
                            type[stor38] = 2
                            mem[mem[64] + 32] = 2
                            emit 0xf1c9c524: sub_2dbdbbe8, 2
                            if 1 > !sub_cf0c3ef4:
                                revert with 0, 17
                            sub_cf0c3ef4++
                            mem[0] = sub_2dbdbbe8
                            sub_9b1b585a[stor38] = 0
                            mem[32] = 26
                            sub_9e2bf7ef[stor38] = sub_cf0c3ef4
            else:
                if not msg.sender:
                    revert with 0, 'ERC721: balance query for the zero address'
                tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = sub_2dbdbbe8
                stor7[stor38] = balanceOf[address(msg.sender)]
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = sub_2dbdbbe8
                mem[32] = 2
                ownerOf[stor38] = msg.sender
                emit Transfer(0, msg.sender, sub_2dbdbbe8);
                if not ext_code.size(msg.sender):
                    mem[mem[64] + 4] = tx.origin
                    call sub_3bc9c8dcAddress.0x662bb8f4 with:
                         gas gas_remaining wei
                        args tx.origin
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _496 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[0] = sub_2dbdbbe8
                    if type[stor38]:
                        revert with 0, 'that token's type has already been set'
                    if mem[_496] % 19:
                        type[stor38] = 1
                        mem[mem[64] + 32] = 1
                        emit 0xf1c9c524: sub_2dbdbbe8, 1
                        if 1 > !sub_6b44b919:
                            revert with 0, 17
                        sub_6b44b919++
                        mem[0] = sub_2dbdbbe8
                        sub_9b1b585a[stor38] = 0
                        mem[32] = 28
                        sub_051d8729[stor38] = sub_6b44b919
                    else:
                        if sub_cf0c3ef4 >= 600:
                            type[stor38] = 1
                            mem[mem[64] + 32] = 1
                            emit 0xf1c9c524: sub_2dbdbbe8, 1
                            if 1 > !sub_6b44b919:
                                revert with 0, 17
                            sub_6b44b919++
                            mem[0] = sub_2dbdbbe8
                            sub_9b1b585a[stor38] = 0
                            mem[32] = 28
                            sub_051d8729[stor38] = sub_6b44b919
                        else:
                            type[stor38] = 2
                            mem[mem[64] + 32] = 2
                            emit 0xf1c9c524: sub_2dbdbbe8, 2
                            if 1 > !sub_cf0c3ef4:
                                revert with 0, 17
                            sub_cf0c3ef4++
                            mem[0] = sub_2dbdbbe8
                            sub_9b1b585a[stor38] = 0
                            mem[32] = 26
                            sub_9e2bf7ef[stor38] = sub_cf0c3ef4
                else:
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = sub_2dbdbbe8
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _450 + 32]
                        s = s + 32
                        continue 
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, sub_2dbdbbe8, 128, 0
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
                    _889 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_889] == Mask(32, 224, mem[_889])
                    if Mask(32, 224, mem[_889]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    mem[mem[64] + 4] = tx.origin
                    call sub_3bc9c8dcAddress.0x662bb8f4 with:
                         gas gas_remaining wei
                        args tx.origin
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _979 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[0] = sub_2dbdbbe8
                    if type[stor38]:
                        revert with 0, 'that token's type has already been set'
                    if mem[_979] % 19:
                        type[stor38] = 1
                        mem[mem[64] + 32] = 1
                        emit 0xf1c9c524: sub_2dbdbbe8, 1
                        if 1 > !sub_6b44b919:
                            revert with 0, 17
                        sub_6b44b919++
                        mem[0] = sub_2dbdbbe8
                        sub_9b1b585a[stor38] = 0
                        mem[32] = 28
                        sub_051d8729[stor38] = sub_6b44b919
                    else:
                        if sub_cf0c3ef4 >= 600:
                            type[stor38] = 1
                            mem[mem[64] + 32] = 1
                            emit 0xf1c9c524: sub_2dbdbbe8, 1
                            if 1 > !sub_6b44b919:
                                revert with 0, 17
                            sub_6b44b919++
                            mem[0] = sub_2dbdbbe8
                            sub_9b1b585a[stor38] = 0
                            mem[32] = 28
                            sub_051d8729[stor38] = sub_6b44b919
                        else:
                            type[stor38] = 2
                            mem[mem[64] + 32] = 2
                            emit 0xf1c9c524: sub_2dbdbbe8, 2
                            if 1 > !sub_cf0c3ef4:
                                revert with 0, 17
                            sub_cf0c3ef4++
                            mem[0] = sub_2dbdbbe8
                            sub_9b1b585a[stor38] = 0
                            mem[32] = 26
                            sub_9e2bf7ef[stor38] = sub_cf0c3ef4
        else:
            if tokenByIndex.length < 1:
                revert with 0, 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 0, 50
            if stor9[stor38] >= tokenByIndex.length:
                revert with 0, 50
            tokenByIndex[stor9[stor38]] = tokenByIndex[tokenByIndex.length]
            stor9[stor8[stor8.length]] = stor9[stor38]
            stor9[stor38] = 0
            if not tokenByIndex.length:
                revert with 0, 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
            if balanceOf[address(msg.sender)] > -2:
                revert with 0, 17
            balanceOf[address(msg.sender)]++
            mem[0] = sub_2dbdbbe8
            mem[32] = 2
            ownerOf[stor38] = msg.sender
            emit Transfer(0, msg.sender, sub_2dbdbbe8);
            if not ext_code.size(msg.sender):
                mem[mem[64] + 4] = tx.origin
                call sub_3bc9c8dcAddress.0x662bb8f4 with:
                     gas gas_remaining wei
                    args tx.origin
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _505 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[0] = sub_2dbdbbe8
                if type[stor38]:
                    revert with 0, 'that token's type has already been set'
                if mem[_505] % 19:
                    type[stor38] = 1
                    mem[mem[64] + 32] = 1
                    emit 0xf1c9c524: sub_2dbdbbe8, 1
                    if 1 > !sub_6b44b919:
                        revert with 0, 17
                    sub_6b44b919++
                    mem[0] = sub_2dbdbbe8
                    sub_9b1b585a[stor38] = 0
                    mem[32] = 28
                    sub_051d8729[stor38] = sub_6b44b919
                else:
                    if sub_cf0c3ef4 >= 600:
                        type[stor38] = 1
                        mem[mem[64] + 32] = 1
                        emit 0xf1c9c524: sub_2dbdbbe8, 1
                        if 1 > !sub_6b44b919:
                            revert with 0, 17
                        sub_6b44b919++
                        mem[0] = sub_2dbdbbe8
                        sub_9b1b585a[stor38] = 0
                        mem[32] = 28
                        sub_051d8729[stor38] = sub_6b44b919
                    else:
                        type[stor38] = 2
                        mem[mem[64] + 32] = 2
                        emit 0xf1c9c524: sub_2dbdbbe8, 2
                        if 1 > !sub_cf0c3ef4:
                            revert with 0, 17
                        sub_cf0c3ef4++
                        mem[0] = sub_2dbdbbe8
                        sub_9b1b585a[stor38] = 0
                        mem[32] = 26
                        sub_9e2bf7ef[stor38] = sub_cf0c3ef4
            else:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = sub_2dbdbbe8
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 164] = mem[s + _450 + 32]
                    s = s + 32
                    continue 
                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, sub_2dbdbbe8, 128, 0
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
                _891 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_891] == Mask(32, 224, mem[_891])
                if Mask(32, 224, mem[_891]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                mem[mem[64] + 4] = tx.origin
                call sub_3bc9c8dcAddress.0x662bb8f4 with:
                     gas gas_remaining wei
                    args tx.origin
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _981 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[0] = sub_2dbdbbe8
                if type[stor38]:
                    revert with 0, 'that token's type has already been set'
                if mem[_981] % 19:
                    type[stor38] = 1
                    mem[mem[64] + 32] = 1
                    emit 0xf1c9c524: sub_2dbdbbe8, 1
                    if 1 > !sub_6b44b919:
                        revert with 0, 17
                    sub_6b44b919++
                    mem[0] = sub_2dbdbbe8
                    sub_9b1b585a[stor38] = 0
                    mem[32] = 28
                    sub_051d8729[stor38] = sub_6b44b919
                else:
                    if sub_cf0c3ef4 >= 600:
                        type[stor38] = 1
                        mem[mem[64] + 32] = 1
                        emit 0xf1c9c524: sub_2dbdbbe8, 1
                        if 1 > !sub_6b44b919:
                            revert with 0, 17
                        sub_6b44b919++
                        mem[0] = sub_2dbdbbe8
                        sub_9b1b585a[stor38] = 0
                        mem[32] = 28
                        sub_051d8729[stor38] = sub_6b44b919
                    else:
                        type[stor38] = 2
                        mem[mem[64] + 32] = 2
                        emit 0xf1c9c524: sub_2dbdbbe8, 2
                        if 1 > !sub_cf0c3ef4:
                            revert with 0, 17
                        sub_cf0c3ef4++
                        mem[0] = sub_2dbdbbe8
                        sub_9b1b585a[stor38] = 0
                        mem[32] = 26
                        sub_9e2bf7ef[stor38] = sub_cf0c3ef4
        mem[mem[64]] = sub_2dbdbbe8
        emit 0xceb9ce42: sub_2dbdbbe8
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_3136fb54(?) {
    require calldata.size - 4 >= 32
    if stor10:
        revert with 0, 'Pausable: paused'
    if 0 == sub_7c77fda2:
        revert with 0, 'cannot mint right now'
    if block.timestamp < sub_7c77fda2:
        revert with 0, 'cannot mint right now'
    if not uint8(stor22.field_16):
        revert with 0, 'cannot mint right now'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'quantity must be between 1 and 10'
    if arg1 > 10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'quantity must be between 1 and 10'
    if sub_5786feb5 > !arg1:
        revert with 0, 17
    if sub_5786feb5 + arg1 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'you can't mint that many right now'
    if sub_1a279ccf and arg1 > -1 / sub_1a279ccf:
        revert with 0, 17
    mem[100] = msg.sender
    staticcall cropAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_1a279ccf * arg1:
        revert with 0, 'not enough CROP'
    if sub_5786feb5 > !arg1:
        revert with 0, 17
    if sub_5786feb5 > 5000:
        sub_5786feb5 += arg1
        mem[ceil32(return_data.size) + 96] = 0x9dc29fac00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 100] = msg.sender
        mem[ceil32(return_data.size) + 132] = sub_1a279ccf * arg1
        require ext_code.size(cropAddress)
        call cropAddress.0x9dc29fac with:
             gas gas_remaining wei
            args msg.sender, sub_1a279ccf * arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = 0
        while idx < arg1:
            if sub_2dbdbbe8 > -2:
                revert with 0, 17
            sub_2dbdbbe8++
            if sub_2dbdbbe8 > 22000:
                revert with 0, 'cannot mint anymore Farmers'
            _1317 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1317] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor38]:
                revert with 0, 'ERC721: token already minted'
            stor9[stor38] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = sub_2dbdbbe8
            if msg.sender:
                if not msg.sender:
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = sub_2dbdbbe8
                    mem[32] = 2
                    ownerOf[stor38] = msg.sender
                    emit Transfer(0, msg.sender, sub_2dbdbbe8);
                    if not ext_code.size(msg.sender):
                        mem[mem[64] + 4] = tx.origin
                        call sub_3bc9c8dcAddress.0x662bb8f4 with:
                             gas gas_remaining wei
                            args tx.origin
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1416 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[0] = sub_2dbdbbe8
                        if type[stor38]:
                            revert with 0, 'that token's type has already been set'
                        if mem[_1416] % 19:
                            type[stor38] = 1
                            mem[mem[64] + 32] = 1
                            emit 0xf1c9c524: sub_2dbdbbe8, 1
                            if 1 > !sub_fd666de7:
                                revert with 0, 17
                            sub_fd666de7++
                            mem[0] = sub_2dbdbbe8
                            sub_9b1b585a[stor38] = 1
                            mem[32] = 29
                            sub_2cc978b9[stor38] = sub_fd666de7
                        else:
                            if sub_cee8fc59 >= 500:
                                type[stor38] = 1
                                mem[mem[64] + 32] = 1
                                emit 0xf1c9c524: sub_2dbdbbe8, 1
                                if 1 > !sub_fd666de7:
                                    revert with 0, 17
                                sub_fd666de7++
                                mem[0] = sub_2dbdbbe8
                                sub_9b1b585a[stor38] = 1
                                mem[32] = 29
                                sub_2cc978b9[stor38] = sub_fd666de7
                            else:
                                type[stor38] = 2
                                mem[mem[64] + 32] = 2
                                emit 0xf1c9c524: sub_2dbdbbe8, 2
                                if 1 > !sub_cee8fc59:
                                    revert with 0, 17
                                sub_cee8fc59++
                                mem[0] = sub_2dbdbbe8
                                sub_9b1b585a[stor38] = 1
                                mem[32] = 27
                                sub_e595c18f[stor38] = sub_cee8fc59
                    else:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = sub_2dbdbbe8
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _1317 + 32]
                            s = s + 32
                            continue 
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, sub_2dbdbbe8, 128, 0
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
                        _2628 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2628] == Mask(32, 224, mem[_2628])
                        if Mask(32, 224, mem[_2628]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        mem[mem[64] + 4] = tx.origin
                        call sub_3bc9c8dcAddress.0x662bb8f4 with:
                             gas gas_remaining wei
                            args tx.origin
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2898 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[0] = sub_2dbdbbe8
                        if type[stor38]:
                            revert with 0, 'that token's type has already been set'
                        if mem[_2898] % 19:
                            type[stor38] = 1
                            mem[mem[64] + 32] = 1
                            emit 0xf1c9c524: sub_2dbdbbe8, 1
                            if 1 > !sub_fd666de7:
                                revert with 0, 17
                            sub_fd666de7++
                            mem[0] = sub_2dbdbbe8
                            sub_9b1b585a[stor38] = 1
                            mem[32] = 29
                            sub_2cc978b9[stor38] = sub_fd666de7
                        else:
                            if sub_cee8fc59 >= 500:
                                type[stor38] = 1
                                mem[mem[64] + 32] = 1
                                emit 0xf1c9c524: sub_2dbdbbe8, 1
                                if 1 > !sub_fd666de7:
                                    revert with 0, 17
                                sub_fd666de7++
                                mem[0] = sub_2dbdbbe8
                                sub_9b1b585a[stor38] = 1
                                mem[32] = 29
                                sub_2cc978b9[stor38] = sub_fd666de7
                            else:
                                type[stor38] = 2
                                mem[mem[64] + 32] = 2
                                emit 0xf1c9c524: sub_2dbdbbe8, 2
                                if 1 > !sub_cee8fc59:
                                    revert with 0, 17
                                sub_cee8fc59++
                                mem[0] = sub_2dbdbbe8
                                sub_9b1b585a[stor38] = 1
                                mem[32] = 27
                                sub_e595c18f[stor38] = sub_cee8fc59
                else:
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = sub_2dbdbbe8
                    stor7[stor38] = balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = sub_2dbdbbe8
                    mem[32] = 2
                    ownerOf[stor38] = msg.sender
                    emit Transfer(0, msg.sender, sub_2dbdbbe8);
                    if not ext_code.size(msg.sender):
                        mem[mem[64] + 4] = tx.origin
                        call sub_3bc9c8dcAddress.0x662bb8f4 with:
                             gas gas_remaining wei
                            args tx.origin
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1451 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[0] = sub_2dbdbbe8
                        if type[stor38]:
                            revert with 0, 'that token's type has already been set'
                        if mem[_1451] % 19:
                            type[stor38] = 1
                            mem[mem[64] + 32] = 1
                            emit 0xf1c9c524: sub_2dbdbbe8, 1
                            if 1 > !sub_fd666de7:
                                revert with 0, 17
                            sub_fd666de7++
                            mem[0] = sub_2dbdbbe8
                            sub_9b1b585a[stor38] = 1
                            mem[32] = 29
                            sub_2cc978b9[stor38] = sub_fd666de7
                        else:
                            if sub_cee8fc59 >= 500:
                                type[stor38] = 1
                                mem[mem[64] + 32] = 1
                                emit 0xf1c9c524: sub_2dbdbbe8, 1
                                if 1 > !sub_fd666de7:
                                    revert with 0, 17
                                sub_fd666de7++
                                mem[0] = sub_2dbdbbe8
                                sub_9b1b585a[stor38] = 1
                                mem[32] = 29
                                sub_2cc978b9[stor38] = sub_fd666de7
                            else:
                                type[stor38] = 2
                                mem[mem[64] + 32] = 2
                                emit 0xf1c9c524: sub_2dbdbbe8, 2
                                if 1 > !sub_cee8fc59:
                                    revert with 0, 17
                                sub_cee8fc59++
                                mem[0] = sub_2dbdbbe8
                                sub_9b1b585a[stor38] = 1
                                mem[32] = 27
                                sub_e595c18f[stor38] = sub_cee8fc59
                    else:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = sub_2dbdbbe8
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _1317 + 32]
                            s = s + 32
                            continue 
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, sub_2dbdbbe8, 128, 0
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
                        _2630 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2630] == Mask(32, 224, mem[_2630])
                        if Mask(32, 224, mem[_2630]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        mem[mem[64] + 4] = tx.origin
                        call sub_3bc9c8dcAddress.0x662bb8f4 with:
                             gas gas_remaining wei
                            args tx.origin
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2900 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[0] = sub_2dbdbbe8
                        if type[stor38]:
                            revert with 0, 'that token's type has already been set'
                        if mem[_2900] % 19:
                            type[stor38] = 1
                            mem[mem[64] + 32] = 1
                            emit 0xf1c9c524: sub_2dbdbbe8, 1
                            if 1 > !sub_fd666de7:
                                revert with 0, 17
                            sub_fd666de7++
                            mem[0] = sub_2dbdbbe8
                            sub_9b1b585a[stor38] = 1
                            mem[32] = 29
                            sub_2cc978b9[stor38] = sub_fd666de7
                        else:
                            if sub_cee8fc59 >= 500:
                                type[stor38] = 1
                                mem[mem[64] + 32] = 1
                                emit 0xf1c9c524: sub_2dbdbbe8, 1
                                if 1 > !sub_fd666de7:
                                    revert with 0, 17
                                sub_fd666de7++
                                mem[0] = sub_2dbdbbe8
                                sub_9b1b585a[stor38] = 1
                                mem[32] = 29
                                sub_2cc978b9[stor38] = sub_fd666de7
                            else:
                                type[stor38] = 2
                                mem[mem[64] + 32] = 2
                                emit 0xf1c9c524: sub_2dbdbbe8, 2
                                if 1 > !sub_cee8fc59:
                                    revert with 0, 17
                                sub_cee8fc59++
                                mem[0] = sub_2dbdbbe8
                                sub_9b1b585a[stor38] = 1
                                mem[32] = 27
                                sub_e595c18f[stor38] = sub_cee8fc59
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor9[stor38] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor9[stor38]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[stor38]
                stor9[stor38] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = sub_2dbdbbe8
                mem[32] = 2
                ownerOf[stor38] = msg.sender
                emit Transfer(0, msg.sender, sub_2dbdbbe8);
                if not ext_code.size(msg.sender):
                    mem[mem[64] + 4] = tx.origin
                    call sub_3bc9c8dcAddress.0x662bb8f4 with:
                         gas gas_remaining wei
                        args tx.origin
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1472 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[0] = sub_2dbdbbe8
                    if type[stor38]:
                        revert with 0, 'that token's type has already been set'
                    if mem[_1472] % 19:
                        type[stor38] = 1
                        mem[mem[64] + 32] = 1
                        emit 0xf1c9c524: sub_2dbdbbe8, 1
                        if 1 > !sub_fd666de7:
                            revert with 0, 17
                        sub_fd666de7++
                        mem[0] = sub_2dbdbbe8
                        sub_9b1b585a[stor38] = 1
                        mem[32] = 29
                        sub_2cc978b9[stor38] = sub_fd666de7
                    else:
                        if sub_cee8fc59 >= 500:
                            type[stor38] = 1
                            mem[mem[64] + 32] = 1
                            emit 0xf1c9c524: sub_2dbdbbe8, 1
                            if 1 > !sub_fd666de7:
                                revert with 0, 17
                            sub_fd666de7++
                            mem[0] = sub_2dbdbbe8
                            sub_9b1b585a[stor38] = 1
                            mem[32] = 29
                            sub_2cc978b9[stor38] = sub_fd666de7
                        else:
                            type[stor38] = 2
                            mem[mem[64] + 32] = 2
                            emit 0xf1c9c524: sub_2dbdbbe8, 2
                            if 1 > !sub_cee8fc59:
                                revert with 0, 17
                            sub_cee8fc59++
                            mem[0] = sub_2dbdbbe8
                            sub_9b1b585a[stor38] = 1
                            mem[32] = 27
                            sub_e595c18f[stor38] = sub_cee8fc59
                else:
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = sub_2dbdbbe8
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _1317 + 32]
                        s = s + 32
                        continue 
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, sub_2dbdbbe8, 128, 0
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
                    _2632 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2632] == Mask(32, 224, mem[_2632])
                    if Mask(32, 224, mem[_2632]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    mem[mem[64] + 4] = tx.origin
                    call sub_3bc9c8dcAddress.0x662bb8f4 with:
                         gas gas_remaining wei
                        args tx.origin
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2902 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[0] = sub_2dbdbbe8
                    if type[stor38]:
                        revert with 0, 'that token's type has already been set'
                    if mem[_2902] % 19:
                        type[stor38] = 1
                        mem[mem[64] + 32] = 1
                        emit 0xf1c9c524: sub_2dbdbbe8, 1
                        if 1 > !sub_fd666de7:
                            revert with 0, 17
                        sub_fd666de7++
                        mem[0] = sub_2dbdbbe8
                        sub_9b1b585a[stor38] = 1
                        mem[32] = 29
                        sub_2cc978b9[stor38] = sub_fd666de7
                    else:
                        if sub_cee8fc59 >= 500:
                            type[stor38] = 1
                            mem[mem[64] + 32] = 1
                            emit 0xf1c9c524: sub_2dbdbbe8, 1
                            if 1 > !sub_fd666de7:
                                revert with 0, 17
                            sub_fd666de7++
                            mem[0] = sub_2dbdbbe8
                            sub_9b1b585a[stor38] = 1
                            mem[32] = 29
                            sub_2cc978b9[stor38] = sub_fd666de7
                        else:
                            type[stor38] = 2
                            mem[mem[64] + 32] = 2
                            emit 0xf1c9c524: sub_2dbdbbe8, 2
                            if 1 > !sub_cee8fc59:
                                revert with 0, 17
                            sub_cee8fc59++
                            mem[0] = sub_2dbdbbe8
                            sub_9b1b585a[stor38] = 1
                            mem[32] = 27
                            sub_e595c18f[stor38] = sub_cee8fc59
            mem[mem[64]] = sub_2dbdbbe8
            emit 0xceb9ce42: sub_2dbdbbe8
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if sub_5786feb5 + arg1 <= 5000:
            if sub_5786feb5 > !arg1:
                revert with 0, 17
            sub_5786feb5 += arg1
            mem[ceil32(return_data.size) + 96] = 0x9dc29fac00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 100] = msg.sender
            mem[ceil32(return_data.size) + 132] = sub_1a279ccf * arg1
            require ext_code.size(cropAddress)
            call cropAddress.0x9dc29fac with:
                 gas gas_remaining wei
                args msg.sender, sub_1a279ccf * arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = 0
            while idx < arg1:
                if sub_2dbdbbe8 > -2:
                    revert with 0, 17
                sub_2dbdbbe8++
                if sub_2dbdbbe8 > 22000:
                    revert with 0, 'cannot mint anymore Farmers'
                _1319 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1319] = 0
                if not msg.sender:
                    revert with 0, 'ERC721: mint to the zero address'
                if ownerOf[stor38]:
                    revert with 0, 'ERC721: token already minted'
                stor9[stor38] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = sub_2dbdbbe8
                if msg.sender:
                    if not msg.sender:
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)]++
                        mem[0] = sub_2dbdbbe8
                        mem[32] = 2
                        ownerOf[stor38] = msg.sender
                        emit Transfer(0, msg.sender, sub_2dbdbbe8);
                        if not ext_code.size(msg.sender):
                            mem[mem[64] + 4] = tx.origin
                            call sub_3bc9c8dcAddress.0x662bb8f4 with:
                                 gas gas_remaining wei
                                args tx.origin
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1419 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[0] = sub_2dbdbbe8
                            if type[stor38]:
                                revert with 0, 'that token's type has already been set'
                            if mem[_1419] % 19:
                                type[stor38] = 1
                                mem[mem[64] + 32] = 1
                                emit 0xf1c9c524: sub_2dbdbbe8, 1
                                if 1 > !sub_fd666de7:
                                    revert with 0, 17
                                sub_fd666de7++
                                mem[0] = sub_2dbdbbe8
                                sub_9b1b585a[stor38] = 1
                                mem[32] = 29
                                sub_2cc978b9[stor38] = sub_fd666de7
                            else:
                                if sub_cee8fc59 >= 500:
                                    type[stor38] = 1
                                    mem[mem[64] + 32] = 1
                                    emit 0xf1c9c524: sub_2dbdbbe8, 1
                                    if 1 > !sub_fd666de7:
                                        revert with 0, 17
                                    sub_fd666de7++
                                    mem[0] = sub_2dbdbbe8
                                    sub_9b1b585a[stor38] = 1
                                    mem[32] = 29
                                    sub_2cc978b9[stor38] = sub_fd666de7
                                else:
                                    type[stor38] = 2
                                    mem[mem[64] + 32] = 2
                                    emit 0xf1c9c524: sub_2dbdbbe8, 2
                                    if 1 > !sub_cee8fc59:
                                        revert with 0, 17
                                    sub_cee8fc59++
                                    mem[0] = sub_2dbdbbe8
                                    sub_9b1b585a[stor38] = 1
                                    mem[32] = 27
                                    sub_e595c18f[stor38] = sub_cee8fc59
                        else:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = sub_2dbdbbe8
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _1319 + 32]
                                s = s + 32
                                continue 
                            call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, sub_2dbdbbe8, 128, 0
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
                            _2634 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2634] == Mask(32, 224, mem[_2634])
                            if Mask(32, 224, mem[_2634]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            mem[mem[64] + 4] = tx.origin
                            call sub_3bc9c8dcAddress.0x662bb8f4 with:
                                 gas gas_remaining wei
                                args tx.origin
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2904 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[0] = sub_2dbdbbe8
                            if type[stor38]:
                                revert with 0, 'that token's type has already been set'
                            if mem[_2904] % 19:
                                type[stor38] = 1
                                mem[mem[64] + 32] = 1
                                emit 0xf1c9c524: sub_2dbdbbe8, 1
                                if 1 > !sub_fd666de7:
                                    revert with 0, 17
                                sub_fd666de7++
                                mem[0] = sub_2dbdbbe8
                                sub_9b1b585a[stor38] = 1
                                mem[32] = 29
                                sub_2cc978b9[stor38] = sub_fd666de7
                            else:
                                if sub_cee8fc59 >= 500:
                                    type[stor38] = 1
                                    mem[mem[64] + 32] = 1
                                    emit 0xf1c9c524: sub_2dbdbbe8, 1
                                    if 1 > !sub_fd666de7:
                                        revert with 0, 17
                                    sub_fd666de7++
                                    mem[0] = sub_2dbdbbe8
                                    sub_9b1b585a[stor38] = 1
                                    mem[32] = 29
                                    sub_2cc978b9[stor38] = sub_fd666de7
                                else:
                                    type[stor38] = 2
                                    mem[mem[64] + 32] = 2
                                    emit 0xf1c9c524: sub_2dbdbbe8, 2
                                    if 1 > !sub_cee8fc59:
                                        revert with 0, 17
                                    sub_cee8fc59++
                                    mem[0] = sub_2dbdbbe8
                                    sub_9b1b585a[stor38] = 1
                                    mem[32] = 27
                                    sub_e595c18f[stor38] = sub_cee8fc59
                    else:
                        if not msg.sender:
                            revert with 0, 'ERC721: balance query for the zero address'
                        tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = sub_2dbdbbe8
                        stor7[stor38] = balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)]++
                        mem[0] = sub_2dbdbbe8
                        mem[32] = 2
                        ownerOf[stor38] = msg.sender
                        emit Transfer(0, msg.sender, sub_2dbdbbe8);
                        if not ext_code.size(msg.sender):
                            mem[mem[64] + 4] = tx.origin
                            call sub_3bc9c8dcAddress.0x662bb8f4 with:
                                 gas gas_remaining wei
                                args tx.origin
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1455 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[0] = sub_2dbdbbe8
                            if type[stor38]:
                                revert with 0, 'that token's type has already been set'
                            if mem[_1455] % 19:
                                type[stor38] = 1
                                mem[mem[64] + 32] = 1
                                emit 0xf1c9c524: sub_2dbdbbe8, 1
                                if 1 > !sub_fd666de7:
                                    revert with 0, 17
                                sub_fd666de7++
                                mem[0] = sub_2dbdbbe8
                                sub_9b1b585a[stor38] = 1
                                mem[32] = 29
                                sub_2cc978b9[stor38] = sub_fd666de7
                            else:
                                if sub_cee8fc59 >= 500:
                                    type[stor38] = 1
                                    mem[mem[64] + 32] = 1
                                    emit 0xf1c9c524: sub_2dbdbbe8, 1
                                    if 1 > !sub_fd666de7:
                                        revert with 0, 17
                                    sub_fd666de7++
                                    mem[0] = sub_2dbdbbe8
                                    sub_9b1b585a[stor38] = 1
                                    mem[32] = 29
                                    sub_2cc978b9[stor38] = sub_fd666de7
                                else:
                                    type[stor38] = 2
                                    mem[mem[64] + 32] = 2
                                    emit 0xf1c9c524: sub_2dbdbbe8, 2
                                    if 1 > !sub_cee8fc59:
                                        revert with 0, 17
                                    sub_cee8fc59++
                                    mem[0] = sub_2dbdbbe8
                                    sub_9b1b585a[stor38] = 1
                                    mem[32] = 27
                                    sub_e595c18f[stor38] = sub_cee8fc59
                        else:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = sub_2dbdbbe8
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _1319 + 32]
                                s = s + 32
                                continue 
                            call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, sub_2dbdbbe8, 128, 0
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
                            _2636 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2636] == Mask(32, 224, mem[_2636])
                            if Mask(32, 224, mem[_2636]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            mem[mem[64] + 4] = tx.origin
                            call sub_3bc9c8dcAddress.0x662bb8f4 with:
                                 gas gas_remaining wei
                                args tx.origin
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2906 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[0] = sub_2dbdbbe8
                            if type[stor38]:
                                revert with 0, 'that token's type has already been set'
                            if mem[_2906] % 19:
                                type[stor38] = 1
                                mem[mem[64] + 32] = 1
                                emit 0xf1c9c524: sub_2dbdbbe8, 1
                                if 1 > !sub_fd666de7:
                                    revert with 0, 17
                                sub_fd666de7++
                                mem[0] = sub_2dbdbbe8
                                sub_9b1b585a[stor38] = 1
                                mem[32] = 29
                                sub_2cc978b9[stor38] = sub_fd666de7
                            else:
                                if sub_cee8fc59 >= 500:
                                    type[stor38] = 1
                                    mem[mem[64] + 32] = 1
                                    emit 0xf1c9c524: sub_2dbdbbe8, 1
                                    if 1 > !sub_fd666de7:
                                        revert with 0, 17
                                    sub_fd666de7++
                                    mem[0] = sub_2dbdbbe8
                                    sub_9b1b585a[stor38] = 1
                                    mem[32] = 29
                                    sub_2cc978b9[stor38] = sub_fd666de7
                                else:
                                    type[stor38] = 2
                                    mem[mem[64] + 32] = 2
                                    emit 0xf1c9c524: sub_2dbdbbe8, 2
                                    if 1 > !sub_cee8fc59:
                                        revert with 0, 17
                                    sub_cee8fc59++
                                    mem[0] = sub_2dbdbbe8
                                    sub_9b1b585a[stor38] = 1
                                    mem[32] = 27
                                    sub_e595c18f[stor38] = sub_cee8fc59
                else:
                    if tokenByIndex.length < 1:
                        revert with 0, 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 0, 50
                    if stor9[stor38] >= tokenByIndex.length:
                        revert with 0, 50
                    tokenByIndex[stor9[stor38]] = tokenByIndex[tokenByIndex.length]
                    stor9[stor8[stor8.length]] = stor9[stor38]
                    stor9[stor38] = 0
                    if not tokenByIndex.length:
                        revert with 0, 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = sub_2dbdbbe8
                    mem[32] = 2
                    ownerOf[stor38] = msg.sender
                    emit Transfer(0, msg.sender, sub_2dbdbbe8);
                    if not ext_code.size(msg.sender):
                        mem[mem[64] + 4] = tx.origin
                        call sub_3bc9c8dcAddress.0x662bb8f4 with:
                             gas gas_remaining wei
                            args tx.origin
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1479 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[0] = sub_2dbdbbe8
                        if type[stor38]:
                            revert with 0, 'that token's type has already been set'
                        if mem[_1479] % 19:
                            type[stor38] = 1
                            mem[mem[64] + 32] = 1
                            emit 0xf1c9c524: sub_2dbdbbe8, 1
                            if 1 > !sub_fd666de7:
                                revert with 0, 17
                            sub_fd666de7++
                            mem[0] = sub_2dbdbbe8
                            sub_9b1b585a[stor38] = 1
                            mem[32] = 29
                            sub_2cc978b9[stor38] = sub_fd666de7
                        else:
                            if sub_cee8fc59 >= 500:
                                type[stor38] = 1
                                mem[mem[64] + 32] = 1
                                emit 0xf1c9c524: sub_2dbdbbe8, 1
                                if 1 > !sub_fd666de7:
                                    revert with 0, 17
                                sub_fd666de7++
                                mem[0] = sub_2dbdbbe8
                                sub_9b1b585a[stor38] = 1
                                mem[32] = 29
                                sub_2cc978b9[stor38] = sub_fd666de7
                            else:
                                type[stor38] = 2
                                mem[mem[64] + 32] = 2
                                emit 0xf1c9c524: sub_2dbdbbe8, 2
                                if 1 > !sub_cee8fc59:
                                    revert with 0, 17
                                sub_cee8fc59++
                                mem[0] = sub_2dbdbbe8
                                sub_9b1b585a[stor38] = 1
                                mem[32] = 27
                                sub_e595c18f[stor38] = sub_cee8fc59
                    else:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = sub_2dbdbbe8
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _1319 + 32]
                            s = s + 32
                            continue 
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, sub_2dbdbbe8, 128, 0
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
                        _2638 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2638] == Mask(32, 224, mem[_2638])
                        if Mask(32, 224, mem[_2638]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        mem[mem[64] + 4] = tx.origin
                        call sub_3bc9c8dcAddress.0x662bb8f4 with:
                             gas gas_remaining wei
                            args tx.origin
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2908 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[0] = sub_2dbdbbe8
                        if type[stor38]:
                            revert with 0, 'that token's type has already been set'
                        if mem[_2908] % 19:
                            type[stor38] = 1
                            mem[mem[64] + 32] = 1
                            emit 0xf1c9c524: sub_2dbdbbe8, 1
                            if 1 > !sub_fd666de7:
                                revert with 0, 17
                            sub_fd666de7++
                            mem[0] = sub_2dbdbbe8
                            sub_9b1b585a[stor38] = 1
                            mem[32] = 29
                            sub_2cc978b9[stor38] = sub_fd666de7
                        else:
                            if sub_cee8fc59 >= 500:
                                type[stor38] = 1
                                mem[mem[64] + 32] = 1
                                emit 0xf1c9c524: sub_2dbdbbe8, 1
                                if 1 > !sub_fd666de7:
                                    revert with 0, 17
                                sub_fd666de7++
                                mem[0] = sub_2dbdbbe8
                                sub_9b1b585a[stor38] = 1
                                mem[32] = 29
                                sub_2cc978b9[stor38] = sub_fd666de7
                            else:
                                type[stor38] = 2
                                mem[mem[64] + 32] = 2
                                emit 0xf1c9c524: sub_2dbdbbe8, 2
                                if 1 > !sub_cee8fc59:
                                    revert with 0, 17
                                sub_cee8fc59++
                                mem[0] = sub_2dbdbbe8
                                sub_9b1b585a[stor38] = 1
                                mem[32] = 27
                                sub_e595c18f[stor38] = sub_cee8fc59
                mem[mem[64]] = sub_2dbdbbe8
                emit 0xceb9ce42: sub_2dbdbbe8
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if 5000 * 10^18 > !sub_1a279ccf:
                revert with 0, 17
            sub_1a279ccf += 5000 * 10^18
            if sub_5786feb5 > !arg1:
                revert with 0, 17
            sub_5786feb5 += arg1
            mem[ceil32(return_data.size) + 96] = 0x9dc29fac00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 100] = msg.sender
            mem[ceil32(return_data.size) + 132] = sub_1a279ccf * arg1
            require ext_code.size(cropAddress)
            call cropAddress.0x9dc29fac with:
                 gas gas_remaining wei
                args msg.sender, sub_1a279ccf * arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = 0
            while idx < arg1:
                if sub_2dbdbbe8 > -2:
                    revert with 0, 17
                sub_2dbdbbe8++
                if sub_2dbdbbe8 > 22000:
                    revert with 0, 'cannot mint anymore Farmers'
                _1321 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1321] = 0
                if not msg.sender:
                    revert with 0, 'ERC721: mint to the zero address'
                if ownerOf[stor38]:
                    revert with 0, 'ERC721: token already minted'
                stor9[stor38] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = sub_2dbdbbe8
                if msg.sender:
                    if not msg.sender:
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)]++
                        mem[0] = sub_2dbdbbe8
                        mem[32] = 2
                        ownerOf[stor38] = msg.sender
                        emit Transfer(0, msg.sender, sub_2dbdbbe8);
                        if not ext_code.size(msg.sender):
                            mem[mem[64] + 4] = tx.origin
                            call sub_3bc9c8dcAddress.0x662bb8f4 with:
                                 gas gas_remaining wei
                                args tx.origin
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1422 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[0] = sub_2dbdbbe8
                            if type[stor38]:
                                revert with 0, 'that token's type has already been set'
                            if mem[_1422] % 19:
                                type[stor38] = 1
                                mem[mem[64] + 32] = 1
                                emit 0xf1c9c524: sub_2dbdbbe8, 1
                                if 1 > !sub_fd666de7:
                                    revert with 0, 17
                                sub_fd666de7++
                                mem[0] = sub_2dbdbbe8
                                sub_9b1b585a[stor38] = 1
                                mem[32] = 29
                                sub_2cc978b9[stor38] = sub_fd666de7
                            else:
                                if sub_cee8fc59 >= 500:
                                    type[stor38] = 1
                                    mem[mem[64] + 32] = 1
                                    emit 0xf1c9c524: sub_2dbdbbe8, 1
                                    if 1 > !sub_fd666de7:
                                        revert with 0, 17
                                    sub_fd666de7++
                                    mem[0] = sub_2dbdbbe8
                                    sub_9b1b585a[stor38] = 1
                                    mem[32] = 29
                                    sub_2cc978b9[stor38] = sub_fd666de7
                                else:
                                    type[stor38] = 2
                                    mem[mem[64] + 32] = 2
                                    emit 0xf1c9c524: sub_2dbdbbe8, 2
                                    if 1 > !sub_cee8fc59:
                                        revert with 0, 17
                                    sub_cee8fc59++
                                    mem[0] = sub_2dbdbbe8
                                    sub_9b1b585a[stor38] = 1
                                    mem[32] = 27
                                    sub_e595c18f[stor38] = sub_cee8fc59
                        else:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = sub_2dbdbbe8
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _1321 + 32]
                                s = s + 32
                                continue 
                            call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, sub_2dbdbbe8, 128, 0
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
                            _2640 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2640] == Mask(32, 224, mem[_2640])
                            if Mask(32, 224, mem[_2640]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            mem[mem[64] + 4] = tx.origin
                            call sub_3bc9c8dcAddress.0x662bb8f4 with:
                                 gas gas_remaining wei
                                args tx.origin
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2910 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[0] = sub_2dbdbbe8
                            if type[stor38]:
                                revert with 0, 'that token's type has already been set'
                            if mem[_2910] % 19:
                                type[stor38] = 1
                                mem[mem[64] + 32] = 1
                                emit 0xf1c9c524: sub_2dbdbbe8, 1
                                if 1 > !sub_fd666de7:
                                    revert with 0, 17
                                sub_fd666de7++
                                mem[0] = sub_2dbdbbe8
                                sub_9b1b585a[stor38] = 1
                                mem[32] = 29
                                sub_2cc978b9[stor38] = sub_fd666de7
                            else:
                                if sub_cee8fc59 >= 500:
                                    type[stor38] = 1
                                    mem[mem[64] + 32] = 1
                                    emit 0xf1c9c524: sub_2dbdbbe8, 1
                                    if 1 > !sub_fd666de7:
                                        revert with 0, 17
                                    sub_fd666de7++
                                    mem[0] = sub_2dbdbbe8
                                    sub_9b1b585a[stor38] = 1
                                    mem[32] = 29
                                    sub_2cc978b9[stor38] = sub_fd666de7
                                else:
                                    type[stor38] = 2
                                    mem[mem[64] + 32] = 2
                                    emit 0xf1c9c524: sub_2dbdbbe8, 2
                                    if 1 > !sub_cee8fc59:
                                        revert with 0, 17
                                    sub_cee8fc59++
                                    mem[0] = sub_2dbdbbe8
                                    sub_9b1b585a[stor38] = 1
                                    mem[32] = 27
                                    sub_e595c18f[stor38] = sub_cee8fc59
                    else:
                        if not msg.sender:
                            revert with 0, 'ERC721: balance query for the zero address'
                        tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = sub_2dbdbbe8
                        stor7[stor38] = balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)]++
                        mem[0] = sub_2dbdbbe8
                        mem[32] = 2
                        ownerOf[stor38] = msg.sender
                        emit Transfer(0, msg.sender, sub_2dbdbbe8);
                        if not ext_code.size(msg.sender):
                            mem[mem[64] + 4] = tx.origin
                            call sub_3bc9c8dcAddress.0x662bb8f4 with:
                                 gas gas_remaining wei
                                args tx.origin
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1459 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[0] = sub_2dbdbbe8
                            if type[stor38]:
                                revert with 0, 'that token's type has already been set'
                            if mem[_1459] % 19:
                                type[stor38] = 1
                                mem[mem[64] + 32] = 1
                                emit 0xf1c9c524: sub_2dbdbbe8, 1
                                if 1 > !sub_fd666de7:
                                    revert with 0, 17
                                sub_fd666de7++
                                mem[0] = sub_2dbdbbe8
                                sub_9b1b585a[stor38] = 1
                                mem[32] = 29
                                sub_2cc978b9[stor38] = sub_fd666de7
                            else:
                                if sub_cee8fc59 >= 500:
                                    type[stor38] = 1
                                    mem[mem[64] + 32] = 1
                                    emit 0xf1c9c524: sub_2dbdbbe8, 1
                                    if 1 > !sub_fd666de7:
                                        revert with 0, 17
                                    sub_fd666de7++
                                    mem[0] = sub_2dbdbbe8
                                    sub_9b1b585a[stor38] = 1
                                    mem[32] = 29
                                    sub_2cc978b9[stor38] = sub_fd666de7
                                else:
                                    type[stor38] = 2
                                    mem[mem[64] + 32] = 2
                                    emit 0xf1c9c524: sub_2dbdbbe8, 2
                                    if 1 > !sub_cee8fc59:
                                        revert with 0, 17
                                    sub_cee8fc59++
                                    mem[0] = sub_2dbdbbe8
                                    sub_9b1b585a[stor38] = 1
                                    mem[32] = 27
                                    sub_e595c18f[stor38] = sub_cee8fc59
                        else:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = sub_2dbdbbe8
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _1321 + 32]
                                s = s + 32
                                continue 
                            call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, sub_2dbdbbe8, 128, 0
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
                            _2642 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2642] == Mask(32, 224, mem[_2642])
                            if Mask(32, 224, mem[_2642]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            mem[mem[64] + 4] = tx.origin
                            call sub_3bc9c8dcAddress.0x662bb8f4 with:
                                 gas gas_remaining wei
                                args tx.origin
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2912 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[0] = sub_2dbdbbe8
                            if type[stor38]:
                                revert with 0, 'that token's type has already been set'
                            if mem[_2912] % 19:
                                type[stor38] = 1
                                mem[mem[64] + 32] = 1
                                emit 0xf1c9c524: sub_2dbdbbe8, 1
                                if 1 > !sub_fd666de7:
                                    revert with 0, 17
                                sub_fd666de7++
                                mem[0] = sub_2dbdbbe8
                                sub_9b1b585a[stor38] = 1
                                mem[32] = 29
                                sub_2cc978b9[stor38] = sub_fd666de7
                            else:
                                if sub_cee8fc59 >= 500:
                                    type[stor38] = 1
                                    mem[mem[64] + 32] = 1
                                    emit 0xf1c9c524: sub_2dbdbbe8, 1
                                    if 1 > !sub_fd666de7:
                                        revert with 0, 17
                                    sub_fd666de7++
                                    mem[0] = sub_2dbdbbe8
                                    sub_9b1b585a[stor38] = 1
                                    mem[32] = 29
                                    sub_2cc978b9[stor38] = sub_fd666de7
                                else:
                                    type[stor38] = 2
                                    mem[mem[64] + 32] = 2
                                    emit 0xf1c9c524: sub_2dbdbbe8, 2
                                    if 1 > !sub_cee8fc59:
                                        revert with 0, 17
                                    sub_cee8fc59++
                                    mem[0] = sub_2dbdbbe8
                                    sub_9b1b585a[stor38] = 1
                                    mem[32] = 27
                                    sub_e595c18f[stor38] = sub_cee8fc59
                else:
                    if tokenByIndex.length < 1:
                        revert with 0, 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 0, 50
                    if stor9[stor38] >= tokenByIndex.length:
                        revert with 0, 50
                    tokenByIndex[stor9[stor38]] = tokenByIndex[tokenByIndex.length]
                    stor9[stor8[stor8.length]] = stor9[stor38]
                    stor9[stor38] = 0
                    if not tokenByIndex.length:
                        revert with 0, 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = sub_2dbdbbe8
                    mem[32] = 2
                    ownerOf[stor38] = msg.sender
                    emit Transfer(0, msg.sender, sub_2dbdbbe8);
                    if not ext_code.size(msg.sender):
                        mem[mem[64] + 4] = tx.origin
                        call sub_3bc9c8dcAddress.0x662bb8f4 with:
                             gas gas_remaining wei
                            args tx.origin
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1486 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[0] = sub_2dbdbbe8
                        if type[stor38]:
                            revert with 0, 'that token's type has already been set'
                        if mem[_1486] % 19:
                            type[stor38] = 1
                            mem[mem[64] + 32] = 1
                            emit 0xf1c9c524: sub_2dbdbbe8, 1
                            if 1 > !sub_fd666de7:
                                revert with 0, 17
                            sub_fd666de7++
                            mem[0] = sub_2dbdbbe8
                            sub_9b1b585a[stor38] = 1
                            mem[32] = 29
                            sub_2cc978b9[stor38] = sub_fd666de7
                        else:
                            if sub_cee8fc59 >= 500:
                                type[stor38] = 1
                                mem[mem[64] + 32] = 1
                                emit 0xf1c9c524: sub_2dbdbbe8, 1
                                if 1 > !sub_fd666de7:
                                    revert with 0, 17
                                sub_fd666de7++
                                mem[0] = sub_2dbdbbe8
                                sub_9b1b585a[stor38] = 1
                                mem[32] = 29
                                sub_2cc978b9[stor38] = sub_fd666de7
                            else:
                                type[stor38] = 2
                                mem[mem[64] + 32] = 2
                                emit 0xf1c9c524: sub_2dbdbbe8, 2
                                if 1 > !sub_cee8fc59:
                                    revert with 0, 17
                                sub_cee8fc59++
                                mem[0] = sub_2dbdbbe8
                                sub_9b1b585a[stor38] = 1
                                mem[32] = 27
                                sub_e595c18f[stor38] = sub_cee8fc59
                    else:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = sub_2dbdbbe8
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _1321 + 32]
                            s = s + 32
                            continue 
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, sub_2dbdbbe8, 128, 0
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
                        _2644 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2644] == Mask(32, 224, mem[_2644])
                        if Mask(32, 224, mem[_2644]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        mem[mem[64] + 4] = tx.origin
                        call sub_3bc9c8dcAddress.0x662bb8f4 with:
                             gas gas_remaining wei
                            args tx.origin
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2914 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[0] = sub_2dbdbbe8
                        if type[stor38]:
                            revert with 0, 'that token's type has already been set'
                        if mem[_2914] % 19:
                            type[stor38] = 1
                            mem[mem[64] + 32] = 1
                            emit 0xf1c9c524: sub_2dbdbbe8, 1
                            if 1 > !sub_fd666de7:
                                revert with 0, 17
                            sub_fd666de7++
                            mem[0] = sub_2dbdbbe8
                            sub_9b1b585a[stor38] = 1
                            mem[32] = 29
                            sub_2cc978b9[stor38] = sub_fd666de7
                        else:
                            if sub_cee8fc59 >= 500:
                                type[stor38] = 1
                                mem[mem[64] + 32] = 1
                                emit 0xf1c9c524: sub_2dbdbbe8, 1
                                if 1 > !sub_fd666de7:
                                    revert with 0, 17
                                sub_fd666de7++
                                mem[0] = sub_2dbdbbe8
                                sub_9b1b585a[stor38] = 1
                                mem[32] = 29
                                sub_2cc978b9[stor38] = sub_fd666de7
                            else:
                                type[stor38] = 2
                                mem[mem[64] + 32] = 2
                                emit 0xf1c9c524: sub_2dbdbbe8, 2
                                if 1 > !sub_cee8fc59:
                                    revert with 0, 17
                                sub_cee8fc59++
                                mem[0] = sub_2dbdbbe8
                                sub_9b1b585a[stor38] = 1
                                mem[32] = 27
                                sub_e595c18f[stor38] = sub_cee8fc59
                mem[mem[64]] = sub_2dbdbbe8
                emit 0xceb9ce42: sub_2dbdbbe8
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    mem[0] = arg1
    if sub_9b1b585a[arg1]:
        if type[arg1] != 1:
            mem[32] = 27
            if not sub_e595c18f[arg1]:
                mem[96] = 1
                mem[128] = 0x3000000000000000000000000000000000000000000000000000000000000000
                if bool(stor21.length):
                    if bool(stor21.length) == uint255(stor21.length) * 0.5 < 32:
                        revert with 0, 34
                    if not bool(stor21.length):
                        mem[192] = Mask(248, 8, stor21.length)
                    else:
                        if bool(stor21.length) != 1:
                            mem[64] = 7
                            _474 = mem[160]
                            mem[39] = mem[160]
                            mem[71 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                            if ceil32(_474) > _474:
                                mem[_474 + 71] = 0
                            return memory
                              from mem[64]
                               len ceil32(_474) + -mem[64] + 71
                        idx = 0
                        s = 0
                        while idx < uint255(stor21.length) * 0.5:
                            mem[idx + 192] = stor21[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[(uint255(stor21.length) * 0.5) + 192] = 0x2f00000000000000000000000000000000000000000000000000000000000000
                    mem[(uint255(stor21.length) * 0.5) + 193] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[(uint255(stor21.length) * 0.5) + 194] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    mem[(uint255(stor21.length) * 0.5) + 199] = 32
                    mem[(uint255(stor21.length) * 0.5) + 231] = mem[160]
                    mem[(uint255(stor21.length) * 0.5) + 263 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(mem[160]) > mem[160]:
                        mem[mem[160] + (uint255(stor21.length) * 0.5) + 263] = 0
                    return Array(len=mem[160], data=mem[(uint255(stor21.length) * 0.5) + 263 len ceil32(mem[160])])
                if bool(stor21.length) == stor21.length.field_1 < 32:
                    revert with 0, 34
                if not bool(stor21.length):
                    mem[192] = Mask(248, 8, stor21.length)
                else:
                    if bool(stor21.length) != 1:
                        mem[64] = 7
                        _478 = mem[160]
                        mem[39] = mem[160]
                        mem[71 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                        if ceil32(_478) > _478:
                            mem[_478 + 71] = 0
                        return memory
                          from mem[64]
                           len ceil32(_478) + -mem[64] + 71
                    idx = 0
                    s = 0
                    while idx < stor21.length.field_1:
                        mem[idx + 192] = stor21[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[stor21.length.field_1 + 192] = 0x2f00000000000000000000000000000000000000000000000000000000000000
                mem[stor21.length.field_1 + 193] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[stor21.length.field_1 + 194] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                mem[stor21.length.field_1 + 199] = 32
                mem[stor21.length.field_1 + 231] = mem[160]
                mem[stor21.length.field_1 + 263 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(mem[160]) > mem[160]:
                    mem[mem[160] + stor21.length.field_1 + 263] = 0
                return Array(len=mem[160], data=mem[stor21.length.field_1 + 263 len ceil32(mem[160])])
            s = 0
            idx = sub_e595c18f[arg1]
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            mem[96] = s
            mem[64] = ceil32(s) + 128
            if not s:
                t = s
                idx = sub_e595c18f[arg1]
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[96]:
                        revert with 0, 50
                    mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _1431 = mem[64]
                if bool(stor21.length):
                    if bool(stor21.length) == uint255(stor21.length) * 0.5 < 32:
                        revert with 0, 34
                    if not bool(stor21.length):
                        mem[mem[64] + 32] = Mask(248, 8, stor21.length)
                        mem[mem[64] + (uint255(stor21.length) * 0.5) + 32] = 0x2f00000000000000000000000000000000000000000000000000000000000000
                        _1551 = mem[96]
                        mem[mem[64] + (uint255(stor21.length) * 0.5) + 33 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        mem[mem[96] + mem[64] + (uint255(stor21.length) * 0.5) + 33] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                        if ceil32(mem[96]) <= mem[96]:
                            _2391 = mem[64]
                            mem[64] = mem[96] + mem[64] + (uint255(stor21.length) * 0.5) + 38
                            mem[mem[96] + _1431 + (uint255(stor21.length) * 0.5) + 38] = 32
                            _2535 = mem[_2391]
                            mem[_1551 + _1431 + (uint255(stor21.length) * 0.5) + 70] = mem[_2391]
                            mem[_1551 + _1431 + (uint255(stor21.length) * 0.5) + 102 len ceil32(_2535)] = mem[_2391 + 32 len ceil32(_2535)]
                            if ceil32(_2535) > _2535:
                                mem[_2535 + _1551 + _1431 + (uint255(stor21.length) * 0.5) + 102] = 0
                            return 32, mem[_1551 + _1431 + (uint255(stor21.length) * 0.5) + 70 len ceil32(_2535) + 32]
                        _2392 = mem[64]
                        mem[64] = mem[96] + mem[64] + (uint255(stor21.length) * 0.5) + 38
                        mem[mem[96] + _1431 + (uint255(stor21.length) * 0.5) + 38] = 32
                        _2536 = mem[_2392]
                        mem[_1551 + _1431 + (uint255(stor21.length) * 0.5) + 70] = mem[_2392]
                        mem[_1551 + _1431 + (uint255(stor21.length) * 0.5) + 102 len ceil32(_2536)] = mem[_2392 + 32 len ceil32(_2536)]
                        if ceil32(_2536) > _2536:
                            mem[_2536 + _1551 + _1431 + (uint255(stor21.length) * 0.5) + 102] = 0
                        return 32, mem[_1551 + _1431 + (uint255(stor21.length) * 0.5) + 70 len ceil32(_2536) + 32]
                    if bool(stor21.length) != 1:
                        mem[0] = 0x2f00000000000000000000000000000000000000000000000000000000000000
                        _1575 = mem[96]
                        mem[1 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        mem[_1575 + 1] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                        if ceil32(_1575) <= _1575:
                            _2393 = mem[64]
                            mem[64] = _1575 + 6
                            mem[_1575 + 6] = 32
                            _2537 = mem[_2393]
                            mem[_1575 + 38] = mem[_2393]
                            mem[_1575 + 70 len ceil32(_2537)] = mem[_2393 + 32 len ceil32(_2537)]
                            if ceil32(_2537) > _2537:
                                mem[_2537 + _1575 + 70] = 0
                            return 32, mem[_1575 + 38 len ceil32(_2537) + 32]
                        _2394 = mem[64]
                        mem[64] = _1575 + 6
                        mem[_1575 + 6] = 32
                        _2538 = mem[_2394]
                        mem[_1575 + 38] = mem[_2394]
                        mem[_1575 + 70 len ceil32(_2538)] = mem[_2394 + 32 len ceil32(_2538)]
                        if ceil32(_2538) > _2538:
                            mem[_2538 + _1575 + 70] = 0
                        return 32, mem[_1575 + 38 len ceil32(_2538) + 32]
                    mem[0] = 21
                    idx = 0
                    s = 0
                    while idx < uint255(stor21.length) * 0.5:
                        mem[idx + _1431 + 32] = stor21[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[_1431 + (uint255(stor21.length) * 0.5) + 32] = 0x2f00000000000000000000000000000000000000000000000000000000000000
                    _2343 = mem[96]
                    mem[_1431 + (uint255(stor21.length) * 0.5) + 33 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    mem[_2343 + _1431 + (uint255(stor21.length) * 0.5) + 33] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    if ceil32(_2343) <= _2343:
                        _3191 = mem[64]
                        mem[64] = _2343 + _1431 + (uint255(stor21.length) * 0.5) + 38
                        mem[_2343 + _1431 + (uint255(stor21.length) * 0.5) + 38] = 32
                        _3255 = mem[_3191]
                        mem[_2343 + _1431 + (uint255(stor21.length) * 0.5) + 70] = mem[_3191]
                        mem[_2343 + _1431 + (uint255(stor21.length) * 0.5) + 102 len ceil32(_3255)] = mem[_3191 + 32 len ceil32(_3255)]
                        if ceil32(_3255) > _3255:
                            mem[_3255 + _2343 + _1431 + (uint255(stor21.length) * 0.5) + 102] = 0
                        return 32, mem[_2343 + _1431 + (uint255(stor21.length) * 0.5) + 70 len ceil32(_3255) + 32]
                    _3192 = mem[64]
                    mem[64] = _2343 + _1431 + (uint255(stor21.length) * 0.5) + 38
                    mem[_2343 + _1431 + (uint255(stor21.length) * 0.5) + 38] = 32
                    _3256 = mem[_3192]
                    mem[_2343 + _1431 + (uint255(stor21.length) * 0.5) + 70] = mem[_3192]
                    mem[_2343 + _1431 + (uint255(stor21.length) * 0.5) + 102 len ceil32(_3256)] = mem[_3192 + 32 len ceil32(_3256)]
                    if ceil32(_3256) > _3256:
                        mem[_3256 + _2343 + _1431 + (uint255(stor21.length) * 0.5) + 102] = 0
                    return 32, mem[_2343 + _1431 + (uint255(stor21.length) * 0.5) + 70 len ceil32(_3256) + 32]
                if bool(stor21.length) == stor21.length.field_1 < 32:
                    revert with 0, 34
                if not bool(stor21.length):
                    mem[mem[64] + 32] = Mask(248, 8, stor21.length)
                    mem[mem[64] + stor21.length.field_1 + 32] = 0x2f00000000000000000000000000000000000000000000000000000000000000
                    _1576 = mem[96]
                    mem[mem[64] + stor21.length.field_1 + 33 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    mem[mem[96] + mem[64] + stor21.length.field_1 + 33] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    if ceil32(mem[96]) <= mem[96]:
                        _2395 = mem[64]
                        mem[64] = mem[96] + mem[64] + stor21.length.field_1 + 38
                        mem[mem[96] + _1431 + stor21.length.field_1 + 38] = 32
                        _2539 = mem[_2395]
                        mem[_1576 + _1431 + stor21.length.field_1 + 70] = mem[_2395]
                        mem[_1576 + _1431 + stor21.length.field_1 + 102 len ceil32(_2539)] = mem[_2395 + 32 len ceil32(_2539)]
                        if ceil32(_2539) > _2539:
                            mem[_2539 + _1576 + _1431 + stor21.length.field_1 + 102] = 0
                        return 32, mem[_1576 + _1431 + stor21.length.field_1 + 70 len ceil32(_2539) + 32]
                    _2396 = mem[64]
                    mem[64] = mem[96] + mem[64] + stor21.length.field_1 + 38
                    mem[mem[96] + _1431 + stor21.length.field_1 + 38] = 32
                    _2540 = mem[_2396]
                    mem[_1576 + _1431 + stor21.length.field_1 + 70] = mem[_2396]
                    mem[_1576 + _1431 + stor21.length.field_1 + 102 len ceil32(_2540)] = mem[_2396 + 32 len ceil32(_2540)]
                    if ceil32(_2540) > _2540:
                        mem[_2540 + _1576 + _1431 + stor21.length.field_1 + 102] = 0
                    return 32, mem[_1576 + _1431 + stor21.length.field_1 + 70 len ceil32(_2540) + 32]
                if bool(stor21.length) != 1:
                    mem[0] = 0x2f00000000000000000000000000000000000000000000000000000000000000
                    _1599 = mem[96]
                    mem[1 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    mem[_1599 + 1] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    if ceil32(_1599) <= _1599:
                        _2397 = mem[64]
                        mem[64] = _1599 + 6
                        mem[_1599 + 6] = 32
                        _2541 = mem[_2397]
                        mem[_1599 + 38] = mem[_2397]
                        mem[_1599 + 70 len ceil32(_2541)] = mem[_2397 + 32 len ceil32(_2541)]
                        if ceil32(_2541) > _2541:
                            mem[_2541 + _1599 + 70] = 0
                        return 32, mem[_1599 + 38 len ceil32(_2541) + 32]
                    _2398 = mem[64]
                    mem[64] = _1599 + 6
                    mem[_1599 + 6] = 32
                    _2542 = mem[_2398]
                    mem[_1599 + 38] = mem[_2398]
                    mem[_1599 + 70 len ceil32(_2542)] = mem[_2398 + 32 len ceil32(_2542)]
                    if ceil32(_2542) > _2542:
                        mem[_2542 + _1599 + 70] = 0
                    return 32, mem[_1599 + 38 len ceil32(_2542) + 32]
                mem[0] = 21
                idx = 0
                s = 0
                while idx < stor21.length.field_1:
                    mem[idx + _1431 + 32] = stor21[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[_1431 + stor21.length.field_1 + 32] = 0x2f00000000000000000000000000000000000000000000000000000000000000
                _2344 = mem[96]
                mem[_1431 + stor21.length.field_1 + 33 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_2344 + _1431 + stor21.length.field_1 + 33] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(_2344) <= _2344:
                    _3193 = mem[64]
                    mem[64] = _2344 + _1431 + stor21.length.field_1 + 38
                    mem[_2344 + _1431 + stor21.length.field_1 + 38] = 32
                    _3257 = mem[_3193]
                    mem[_2344 + _1431 + stor21.length.field_1 + 70] = mem[_3193]
                    mem[_2344 + _1431 + stor21.length.field_1 + 102 len ceil32(_3257)] = mem[_3193 + 32 len ceil32(_3257)]
                    if ceil32(_3257) > _3257:
                        mem[_3257 + _2344 + _1431 + stor21.length.field_1 + 102] = 0
                    return 32, mem[_2344 + _1431 + stor21.length.field_1 + 70 len ceil32(_3257) + 32]
                _3194 = mem[64]
                mem[64] = _2344 + _1431 + stor21.length.field_1 + 38
                mem[_2344 + _1431 + stor21.length.field_1 + 38] = 32
                _3258 = mem[_3194]
                mem[_2344 + _1431 + stor21.length.field_1 + 70] = mem[_3194]
                mem[_2344 + _1431 + stor21.length.field_1 + 102 len ceil32(_3258)] = mem[_3194 + 32 len ceil32(_3258)]
                if ceil32(_3258) > _3258:
                    mem[_3258 + _2344 + _1431 + stor21.length.field_1 + 102] = 0
                return 32, mem[_2344 + _1431 + stor21.length.field_1 + 70 len ceil32(_3258) + 32]
            mem[128 len s] = call.data[calldata.size len s]
            t = s
            idx = sub_e595c18f[arg1]
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[96]:
                    revert with 0, 50
                mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _1432 = mem[64]
            if bool(stor21.length):
                if bool(stor21.length) == uint255(stor21.length) * 0.5 < 32:
                    revert with 0, 34
                if not bool(stor21.length):
                    mem[mem[64] + 32] = Mask(248, 8, stor21.length)
                    mem[mem[64] + (uint255(stor21.length) * 0.5) + 32] = 0x2f00000000000000000000000000000000000000000000000000000000000000
                    _1552 = mem[96]
                    mem[mem[64] + (uint255(stor21.length) * 0.5) + 33 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    mem[mem[96] + mem[64] + (uint255(stor21.length) * 0.5) + 33] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    if ceil32(mem[96]) <= mem[96]:
                        _2399 = mem[64]
                        mem[64] = mem[96] + mem[64] + (uint255(stor21.length) * 0.5) + 38
                        mem[mem[96] + _1432 + (uint255(stor21.length) * 0.5) + 38] = 32
                        _2543 = mem[_2399]
                        mem[_1552 + _1432 + (uint255(stor21.length) * 0.5) + 70] = mem[_2399]
                        mem[_1552 + _1432 + (uint255(stor21.length) * 0.5) + 102 len ceil32(_2543)] = mem[_2399 + 32 len ceil32(_2543)]
                        if ceil32(_2543) > _2543:
                            mem[_2543 + _1552 + _1432 + (uint255(stor21.length) * 0.5) + 102] = 0
                        return 32, mem[_1552 + _1432 + (uint255(stor21.length) * 0.5) + 70 len ceil32(_2543) + 32]
                    _2400 = mem[64]
                    mem[64] = mem[96] + mem[64] + (uint255(stor21.length) * 0.5) + 38
                    mem[mem[96] + _1432 + (uint255(stor21.length) * 0.5) + 38] = 32
                    _2544 = mem[_2400]
                    mem[_1552 + _1432 + (uint255(stor21.length) * 0.5) + 70] = mem[_2400]
                    mem[_1552 + _1432 + (uint255(stor21.length) * 0.5) + 102 len ceil32(_2544)] = mem[_2400 + 32 len ceil32(_2544)]
                    if ceil32(_2544) > _2544:
                        mem[_2544 + _1552 + _1432 + (uint255(stor21.length) * 0.5) + 102] = 0
                    return 32, mem[_1552 + _1432 + (uint255(stor21.length) * 0.5) + 70 len ceil32(_2544) + 32]
                if bool(stor21.length) != 1:
                    mem[0] = 0x2f00000000000000000000000000000000000000000000000000000000000000
                    _1578 = mem[96]
                    mem[1 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    mem[_1578 + 1] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    if ceil32(_1578) <= _1578:
                        _2401 = mem[64]
                        mem[64] = _1578 + 6
                        mem[_1578 + 6] = 32
                        _2545 = mem[_2401]
                        mem[_1578 + 38] = mem[_2401]
                        mem[_1578 + 70 len ceil32(_2545)] = mem[_2401 + 32 len ceil32(_2545)]
                        if ceil32(_2545) > _2545:
                            mem[_2545 + _1578 + 70] = 0
                        return 32, mem[_1578 + 38 len ceil32(_2545) + 32]
                    _2402 = mem[64]
                    mem[64] = _1578 + 6
                    mem[_1578 + 6] = 32
                    _2546 = mem[_2402]
                    mem[_1578 + 38] = mem[_2402]
                    mem[_1578 + 70 len ceil32(_2546)] = mem[_2402 + 32 len ceil32(_2546)]
                    if ceil32(_2546) > _2546:
                        mem[_2546 + _1578 + 70] = 0
                    return 32, mem[_1578 + 38 len ceil32(_2546) + 32]
                mem[0] = 21
                idx = 0
                s = 0
                while idx < uint255(stor21.length) * 0.5:
                    mem[idx + _1432 + 32] = stor21[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[_1432 + (uint255(stor21.length) * 0.5) + 32] = 0x2f00000000000000000000000000000000000000000000000000000000000000
                _2345 = mem[96]
                mem[_1432 + (uint255(stor21.length) * 0.5) + 33 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_2345 + _1432 + (uint255(stor21.length) * 0.5) + 33] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(_2345) <= _2345:
                    _3195 = mem[64]
                    mem[64] = _2345 + _1432 + (uint255(stor21.length) * 0.5) + 38
                    mem[_2345 + _1432 + (uint255(stor21.length) * 0.5) + 38] = 32
                    _3259 = mem[_3195]
                    mem[_2345 + _1432 + (uint255(stor21.length) * 0.5) + 70] = mem[_3195]
                    mem[_2345 + _1432 + (uint255(stor21.length) * 0.5) + 102 len ceil32(_3259)] = mem[_3195 + 32 len ceil32(_3259)]
                    if ceil32(_3259) > _3259:
                        mem[_3259 + _2345 + _1432 + (uint255(stor21.length) * 0.5) + 102] = 0
                    return 32, mem[_2345 + _1432 + (uint255(stor21.length) * 0.5) + 70 len ceil32(_3259) + 32]
                _3196 = mem[64]
                mem[64] = _2345 + _1432 + (uint255(stor21.length) * 0.5) + 38
                mem[_2345 + _1432 + (uint255(stor21.length) * 0.5) + 38] = 32
                _3260 = mem[_3196]
                mem[_2345 + _1432 + (uint255(stor21.length) * 0.5) + 70] = mem[_3196]
                mem[_2345 + _1432 + (uint255(stor21.length) * 0.5) + 102 len ceil32(_3260)] = mem[_3196 + 32 len ceil32(_3260)]
                if ceil32(_3260) > _3260:
                    mem[_3260 + _2345 + _1432 + (uint255(stor21.length) * 0.5) + 102] = 0
                return 32, mem[_2345 + _1432 + (uint255(stor21.length) * 0.5) + 70 len ceil32(_3260) + 32]
            if bool(stor21.length) == stor21.length.field_1 < 32:
                revert with 0, 34
            if not bool(stor21.length):
                mem[mem[64] + 32] = Mask(248, 8, stor21.length)
                mem[mem[64] + stor21.length.field_1 + 32] = 0x2f00000000000000000000000000000000000000000000000000000000000000
                _1579 = mem[96]
                mem[mem[64] + stor21.length.field_1 + 33 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[mem[96] + mem[64] + stor21.length.field_1 + 33] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(mem[96]) <= mem[96]:
                    _2403 = mem[64]
                    mem[64] = mem[96] + mem[64] + stor21.length.field_1 + 38
                    mem[mem[96] + _1432 + stor21.length.field_1 + 38] = 32
                    _2547 = mem[_2403]
                    mem[_1579 + _1432 + stor21.length.field_1 + 70] = mem[_2403]
                    mem[_1579 + _1432 + stor21.length.field_1 + 102 len ceil32(_2547)] = mem[_2403 + 32 len ceil32(_2547)]
                    if ceil32(_2547) > _2547:
                        mem[_2547 + _1579 + _1432 + stor21.length.field_1 + 102] = 0
                    return 32, mem[_1579 + _1432 + stor21.length.field_1 + 70 len ceil32(_2547) + 32]
                _2404 = mem[64]
                mem[64] = mem[96] + mem[64] + stor21.length.field_1 + 38
                mem[mem[96] + _1432 + stor21.length.field_1 + 38] = 32
                _2548 = mem[_2404]
                mem[_1579 + _1432 + stor21.length.field_1 + 70] = mem[_2404]
                mem[_1579 + _1432 + stor21.length.field_1 + 102 len ceil32(_2548)] = mem[_2404 + 32 len ceil32(_2548)]
                if ceil32(_2548) > _2548:
                    mem[_2548 + _1579 + _1432 + stor21.length.field_1 + 102] = 0
                return 32, mem[_1579 + _1432 + stor21.length.field_1 + 70 len ceil32(_2548) + 32]
            if bool(stor21.length) != 1:
                mem[0] = 0x2f00000000000000000000000000000000000000000000000000000000000000
                _1600 = mem[96]
                mem[1 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_1600 + 1] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(_1600) <= _1600:
                    _2405 = mem[64]
                    mem[64] = _1600 + 6
                    mem[_1600 + 6] = 32
                    _2549 = mem[_2405]
                    mem[_1600 + 38] = mem[_2405]
                    mem[_1600 + 70 len ceil32(_2549)] = mem[_2405 + 32 len ceil32(_2549)]
                    if ceil32(_2549) > _2549:
                        mem[_2549 + _1600 + 70] = 0
                    return 32, mem[_1600 + 38 len ceil32(_2549) + 32]
                _2406 = mem[64]
                mem[64] = _1600 + 6
                mem[_1600 + 6] = 32
                _2550 = mem[_2406]
                mem[_1600 + 38] = mem[_2406]
                mem[_1600 + 70 len ceil32(_2550)] = mem[_2406 + 32 len ceil32(_2550)]
                if ceil32(_2550) > _2550:
                    mem[_2550 + _1600 + 70] = 0
                return 32, mem[_1600 + 38 len ceil32(_2550) + 32]
            mem[0] = 21
            idx = 0
            s = 0
            while idx < stor21.length.field_1:
                mem[idx + _1432 + 32] = stor21[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            mem[_1432 + stor21.length.field_1 + 32] = 0x2f00000000000000000000000000000000000000000000000000000000000000
            _2346 = mem[96]
            mem[_1432 + stor21.length.field_1 + 33 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_2346 + _1432 + stor21.length.field_1 + 33] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_2346) <= _2346:
                _3197 = mem[64]
                mem[64] = _2346 + _1432 + stor21.length.field_1 + 38
                mem[_2346 + _1432 + stor21.length.field_1 + 38] = 32
                _3261 = mem[_3197]
                mem[_2346 + _1432 + stor21.length.field_1 + 70] = mem[_3197]
                mem[_2346 + _1432 + stor21.length.field_1 + 102 len ceil32(_3261)] = mem[_3197 + 32 len ceil32(_3261)]
                if ceil32(_3261) > _3261:
                    mem[_3261 + _2346 + _1432 + stor21.length.field_1 + 102] = 0
                return 32, mem[_2346 + _1432 + stor21.length.field_1 + 70 len ceil32(_3261) + 32]
            _3198 = mem[64]
            mem[64] = _2346 + _1432 + stor21.length.field_1 + 38
            mem[_2346 + _1432 + stor21.length.field_1 + 38] = 32
            _3262 = mem[_3198]
            mem[_2346 + _1432 + stor21.length.field_1 + 70] = mem[_3198]
            mem[_2346 + _1432 + stor21.length.field_1 + 102 len ceil32(_3262)] = mem[_3198 + 32 len ceil32(_3262)]
            if ceil32(_3262) > _3262:
                mem[_3262 + _2346 + _1432 + stor21.length.field_1 + 102] = 0
            return 32, mem[_2346 + _1432 + stor21.length.field_1 + 70 len ceil32(_3262) + 32]
        mem[32] = 29
        if not sub_2cc978b9[arg1]:
            mem[96] = 1
            mem[128] = 0x3000000000000000000000000000000000000000000000000000000000000000
            if bool(stor19.length):
                if bool(stor19.length) == uint255(stor19.length) * 0.5 < 32:
                    revert with 0, 34
                if not bool(stor19.length):
                    mem[192] = Mask(248, 8, stor19.length)
                else:
                    if bool(stor19.length) != 1:
                        mem[64] = 7
                        _482 = mem[160]
                        mem[39] = mem[160]
                        mem[71 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                        if ceil32(_482) > _482:
                            mem[_482 + 71] = 0
                        return memory
                          from mem[64]
                           len ceil32(_482) + -mem[64] + 71
                    idx = 0
                    s = 0
                    while idx < uint255(stor19.length) * 0.5:
                        mem[idx + 192] = stor19[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[(uint255(stor19.length) * 0.5) + 192] = 0x2f00000000000000000000000000000000000000000000000000000000000000
                mem[(uint255(stor19.length) * 0.5) + 193] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[(uint255(stor19.length) * 0.5) + 194] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                mem[(uint255(stor19.length) * 0.5) + 199] = 32
                mem[(uint255(stor19.length) * 0.5) + 231] = mem[160]
                mem[(uint255(stor19.length) * 0.5) + 263 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(mem[160]) > mem[160]:
                    mem[mem[160] + (uint255(stor19.length) * 0.5) + 263] = 0
                return Array(len=mem[160], data=mem[(uint255(stor19.length) * 0.5) + 263 len ceil32(mem[160])])
            if bool(stor19.length) == stor19.length.field_1 < 32:
                revert with 0, 34
            if not bool(stor19.length):
                mem[192] = Mask(248, 8, stor19.length)
            else:
                if bool(stor19.length) != 1:
                    mem[64] = 7
                    _486 = mem[160]
                    mem[39] = mem[160]
                    mem[71 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(_486) > _486:
                        mem[_486 + 71] = 0
                    return memory
                      from mem[64]
                       len ceil32(_486) + -mem[64] + 71
                idx = 0
                s = 0
                while idx < stor19.length.field_1:
                    mem[idx + 192] = stor19[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[stor19.length.field_1 + 192] = 0x2f00000000000000000000000000000000000000000000000000000000000000
            mem[stor19.length.field_1 + 193] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[stor19.length.field_1 + 194] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            mem[stor19.length.field_1 + 199] = 32
            mem[stor19.length.field_1 + 231] = mem[160]
            mem[stor19.length.field_1 + 263 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(mem[160]) > mem[160]:
                mem[mem[160] + stor19.length.field_1 + 263] = 0
            return Array(len=mem[160], data=mem[stor19.length.field_1 + 263 len ceil32(mem[160])])
        s = 0
        idx = sub_2cc978b9[arg1]
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        mem[96] = s
        mem[64] = ceil32(s) + 128
        if not s:
            t = s
            idx = sub_2cc978b9[arg1]
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[96]:
                    revert with 0, 50
                mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _1433 = mem[64]
            if bool(stor19.length):
                if bool(stor19.length) == uint255(stor19.length) * 0.5 < 32:
                    revert with 0, 34
                if not bool(stor19.length):
                    mem[mem[64] + 32] = Mask(248, 8, stor19.length)
                    mem[mem[64] + (uint255(stor19.length) * 0.5) + 32] = 0x2f00000000000000000000000000000000000000000000000000000000000000
                    _1557 = mem[96]
                    mem[mem[64] + (uint255(stor19.length) * 0.5) + 33 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    mem[mem[96] + mem[64] + (uint255(stor19.length) * 0.5) + 33] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    if ceil32(mem[96]) <= mem[96]:
                        _2407 = mem[64]
                        mem[64] = mem[96] + mem[64] + (uint255(stor19.length) * 0.5) + 38
                        mem[mem[96] + _1433 + (uint255(stor19.length) * 0.5) + 38] = 32
                        _2551 = mem[_2407]
                        mem[_1557 + _1433 + (uint255(stor19.length) * 0.5) + 70] = mem[_2407]
                        mem[_1557 + _1433 + (uint255(stor19.length) * 0.5) + 102 len ceil32(_2551)] = mem[_2407 + 32 len ceil32(_2551)]
                        if ceil32(_2551) > _2551:
                            mem[_2551 + _1557 + _1433 + (uint255(stor19.length) * 0.5) + 102] = 0
                        return 32, mem[_1557 + _1433 + (uint255(stor19.length) * 0.5) + 70 len ceil32(_2551) + 32]
                    _2408 = mem[64]
                    mem[64] = mem[96] + mem[64] + (uint255(stor19.length) * 0.5) + 38
                    mem[mem[96] + _1433 + (uint255(stor19.length) * 0.5) + 38] = 32
                    _2552 = mem[_2408]
                    mem[_1557 + _1433 + (uint255(stor19.length) * 0.5) + 70] = mem[_2408]
                    mem[_1557 + _1433 + (uint255(stor19.length) * 0.5) + 102 len ceil32(_2552)] = mem[_2408 + 32 len ceil32(_2552)]
                    if ceil32(_2552) > _2552:
                        mem[_2552 + _1557 + _1433 + (uint255(stor19.length) * 0.5) + 102] = 0
                    return 32, mem[_1557 + _1433 + (uint255(stor19.length) * 0.5) + 70 len ceil32(_2552) + 32]
                if bool(stor19.length) != 1:
                    mem[0] = 0x2f00000000000000000000000000000000000000000000000000000000000000
                    _1581 = mem[96]
                    mem[1 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    mem[_1581 + 1] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    if ceil32(_1581) <= _1581:
                        _2409 = mem[64]
                        mem[64] = _1581 + 6
                        mem[_1581 + 6] = 32
                        _2553 = mem[_2409]
                        mem[_1581 + 38] = mem[_2409]
                        mem[_1581 + 70 len ceil32(_2553)] = mem[_2409 + 32 len ceil32(_2553)]
                        if ceil32(_2553) > _2553:
                            mem[_2553 + _1581 + 70] = 0
                        return 32, mem[_1581 + 38 len ceil32(_2553) + 32]
                    _2410 = mem[64]
                    mem[64] = _1581 + 6
                    mem[_1581 + 6] = 32
                    _2554 = mem[_2410]
                    mem[_1581 + 38] = mem[_2410]
                    mem[_1581 + 70 len ceil32(_2554)] = mem[_2410 + 32 len ceil32(_2554)]
                    if ceil32(_2554) > _2554:
                        mem[_2554 + _1581 + 70] = 0
                    return 32, mem[_1581 + 38 len ceil32(_2554) + 32]
                mem[0] = 19
                idx = 0
                s = 0
                while idx < uint255(stor19.length) * 0.5:
                    mem[idx + _1433 + 32] = stor19[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[_1433 + (uint255(stor19.length) * 0.5) + 32] = 0x2f00000000000000000000000000000000000000000000000000000000000000
                _2347 = mem[96]
                mem[_1433 + (uint255(stor19.length) * 0.5) + 33 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_2347 + _1433 + (uint255(stor19.length) * 0.5) + 33] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(_2347) <= _2347:
                    _3199 = mem[64]
                    mem[64] = _2347 + _1433 + (uint255(stor19.length) * 0.5) + 38
                    mem[_2347 + _1433 + (uint255(stor19.length) * 0.5) + 38] = 32
                    _3263 = mem[_3199]
                    mem[_2347 + _1433 + (uint255(stor19.length) * 0.5) + 70] = mem[_3199]
                    mem[_2347 + _1433 + (uint255(stor19.length) * 0.5) + 102 len ceil32(_3263)] = mem[_3199 + 32 len ceil32(_3263)]
                    if ceil32(_3263) > _3263:
                        mem[_3263 + _2347 + _1433 + (uint255(stor19.length) * 0.5) + 102] = 0
                    return 32, mem[_2347 + _1433 + (uint255(stor19.length) * 0.5) + 70 len ceil32(_3263) + 32]
                _3200 = mem[64]
                mem[64] = _2347 + _1433 + (uint255(stor19.length) * 0.5) + 38
                mem[_2347 + _1433 + (uint255(stor19.length) * 0.5) + 38] = 32
                _3264 = mem[_3200]
                mem[_2347 + _1433 + (uint255(stor19.length) * 0.5) + 70] = mem[_3200]
                mem[_2347 + _1433 + (uint255(stor19.length) * 0.5) + 102 len ceil32(_3264)] = mem[_3200 + 32 len ceil32(_3264)]
                if ceil32(_3264) > _3264:
                    mem[_3264 + _2347 + _1433 + (uint255(stor19.length) * 0.5) + 102] = 0
                return 32, mem[_2347 + _1433 + (uint255(stor19.length) * 0.5) + 70 len ceil32(_3264) + 32]
            if bool(stor19.length) == stor19.length.field_1 < 32:
                revert with 0, 34
            if not bool(stor19.length):
                mem[mem[64] + 32] = Mask(248, 8, stor19.length)
                mem[mem[64] + stor19.length.field_1 + 32] = 0x2f00000000000000000000000000000000000000000000000000000000000000
                _1582 = mem[96]
                mem[mem[64] + stor19.length.field_1 + 33 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[mem[96] + mem[64] + stor19.length.field_1 + 33] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(mem[96]) <= mem[96]:
                    _2411 = mem[64]
                    mem[64] = mem[96] + mem[64] + stor19.length.field_1 + 38
                    mem[mem[96] + _1433 + stor19.length.field_1 + 38] = 32
                    _2555 = mem[_2411]
                    mem[_1582 + _1433 + stor19.length.field_1 + 70] = mem[_2411]
                    mem[_1582 + _1433 + stor19.length.field_1 + 102 len ceil32(_2555)] = mem[_2411 + 32 len ceil32(_2555)]
                    if ceil32(_2555) > _2555:
                        mem[_2555 + _1582 + _1433 + stor19.length.field_1 + 102] = 0
                    return 32, mem[_1582 + _1433 + stor19.length.field_1 + 70 len ceil32(_2555) + 32]
                _2412 = mem[64]
                mem[64] = mem[96] + mem[64] + stor19.length.field_1 + 38
                mem[mem[96] + _1433 + stor19.length.field_1 + 38] = 32
                _2556 = mem[_2412]
                mem[_1582 + _1433 + stor19.length.field_1 + 70] = mem[_2412]
                mem[_1582 + _1433 + stor19.length.field_1 + 102 len ceil32(_2556)] = mem[_2412 + 32 len ceil32(_2556)]
                if ceil32(_2556) > _2556:
                    mem[_2556 + _1582 + _1433 + stor19.length.field_1 + 102] = 0
                return 32, mem[_1582 + _1433 + stor19.length.field_1 + 70 len ceil32(_2556) + 32]
            if bool(stor19.length) != 1:
                mem[0] = 0x2f00000000000000000000000000000000000000000000000000000000000000
                _1601 = mem[96]
                mem[1 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_1601 + 1] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(_1601) <= _1601:
                    _2413 = mem[64]
                    mem[64] = _1601 + 6
                    mem[_1601 + 6] = 32
                    _2557 = mem[_2413]
                    mem[_1601 + 38] = mem[_2413]
                    mem[_1601 + 70 len ceil32(_2557)] = mem[_2413 + 32 len ceil32(_2557)]
                    if ceil32(_2557) > _2557:
                        mem[_2557 + _1601 + 70] = 0
                    return 32, mem[_1601 + 38 len ceil32(_2557) + 32]
                _2414 = mem[64]
                mem[64] = _1601 + 6
                mem[_1601 + 6] = 32
                _2558 = mem[_2414]
                mem[_1601 + 38] = mem[_2414]
                mem[_1601 + 70 len ceil32(_2558)] = mem[_2414 + 32 len ceil32(_2558)]
                if ceil32(_2558) > _2558:
                    mem[_2558 + _1601 + 70] = 0
                return 32, mem[_1601 + 38 len ceil32(_2558) + 32]
            mem[0] = 19
            idx = 0
            s = 0
            while idx < stor19.length.field_1:
                mem[idx + _1433 + 32] = stor19[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            mem[_1433 + stor19.length.field_1 + 32] = 0x2f00000000000000000000000000000000000000000000000000000000000000
            _2348 = mem[96]
            mem[_1433 + stor19.length.field_1 + 33 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_2348 + _1433 + stor19.length.field_1 + 33] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_2348) <= _2348:
                _3201 = mem[64]
                mem[64] = _2348 + _1433 + stor19.length.field_1 + 38
                mem[_2348 + _1433 + stor19.length.field_1 + 38] = 32
                _3265 = mem[_3201]
                mem[_2348 + _1433 + stor19.length.field_1 + 70] = mem[_3201]
                mem[_2348 + _1433 + stor19.length.field_1 + 102 len ceil32(_3265)] = mem[_3201 + 32 len ceil32(_3265)]
                if ceil32(_3265) > _3265:
                    mem[_3265 + _2348 + _1433 + stor19.length.field_1 + 102] = 0
                return 32, mem[_2348 + _1433 + stor19.length.field_1 + 70 len ceil32(_3265) + 32]
            _3202 = mem[64]
            mem[64] = _2348 + _1433 + stor19.length.field_1 + 38
            mem[_2348 + _1433 + stor19.length.field_1 + 38] = 32
            _3266 = mem[_3202]
            mem[_2348 + _1433 + stor19.length.field_1 + 70] = mem[_3202]
            mem[_2348 + _1433 + stor19.length.field_1 + 102 len ceil32(_3266)] = mem[_3202 + 32 len ceil32(_3266)]
            if ceil32(_3266) > _3266:
                mem[_3266 + _2348 + _1433 + stor19.length.field_1 + 102] = 0
            return 32, mem[_2348 + _1433 + stor19.length.field_1 + 70 len ceil32(_3266) + 32]
        mem[128 len s] = call.data[calldata.size len s]
        t = s
        idx = sub_2cc978b9[arg1]
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[96]:
                revert with 0, 50
            mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _1434 = mem[64]
        if bool(stor19.length):
            if bool(stor19.length) == uint255(stor19.length) * 0.5 < 32:
                revert with 0, 34
            if not bool(stor19.length):
                mem[mem[64] + 32] = Mask(248, 8, stor19.length)
                mem[mem[64] + (uint255(stor19.length) * 0.5) + 32] = 0x2f00000000000000000000000000000000000000000000000000000000000000
                _1558 = mem[96]
                mem[mem[64] + (uint255(stor19.length) * 0.5) + 33 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[mem[96] + mem[64] + (uint255(stor19.length) * 0.5) + 33] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(mem[96]) <= mem[96]:
                    _2415 = mem[64]
                    mem[64] = mem[96] + mem[64] + (uint255(stor19.length) * 0.5) + 38
                    mem[mem[96] + _1434 + (uint255(stor19.length) * 0.5) + 38] = 32
                    _2559 = mem[_2415]
                    mem[_1558 + _1434 + (uint255(stor19.length) * 0.5) + 70] = mem[_2415]
                    mem[_1558 + _1434 + (uint255(stor19.length) * 0.5) + 102 len ceil32(_2559)] = mem[_2415 + 32 len ceil32(_2559)]
                    if ceil32(_2559) > _2559:
                        mem[_2559 + _1558 + _1434 + (uint255(stor19.length) * 0.5) + 102] = 0
                    return 32, mem[_1558 + _1434 + (uint255(stor19.length) * 0.5) + 70 len ceil32(_2559) + 32]
                _2416 = mem[64]
                mem[64] = mem[96] + mem[64] + (uint255(stor19.length) * 0.5) + 38
                mem[mem[96] + _1434 + (uint255(stor19.length) * 0.5) + 38] = 32
                _2560 = mem[_2416]
                mem[_1558 + _1434 + (uint255(stor19.length) * 0.5) + 70] = mem[_2416]
                mem[_1558 + _1434 + (uint255(stor19.length) * 0.5) + 102 len ceil32(_2560)] = mem[_2416 + 32 len ceil32(_2560)]
                if ceil32(_2560) > _2560:
                    mem[_2560 + _1558 + _1434 + (uint255(stor19.length) * 0.5) + 102] = 0
                return 32, mem[_1558 + _1434 + (uint255(stor19.length) * 0.5) + 70 len ceil32(_2560) + 32]
            if bool(stor19.length) != 1:
                mem[0] = 0x2f00000000000000000000000000000000000000000000000000000000000000
                _1584 = mem[96]
                mem[1 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_1584 + 1] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(_1584) <= _1584:
                    _2417 = mem[64]
                    mem[64] = _1584 + 6
                    mem[_1584 + 6] = 32
                    _2561 = mem[_2417]
                    mem[_1584 + 38] = mem[_2417]
                    mem[_1584 + 70 len ceil32(_2561)] = mem[_2417 + 32 len ceil32(_2561)]
                    if ceil32(_2561) > _2561:
                        mem[_2561 + _1584 + 70] = 0
                    return 32, mem[_1584 + 38 len ceil32(_2561) + 32]
                _2418 = mem[64]
                mem[64] = _1584 + 6
                mem[_1584 + 6] = 32
                _2562 = mem[_2418]
                mem[_1584 + 38] = mem[_2418]
                mem[_1584 + 70 len ceil32(_2562)] = mem[_2418 + 32 len ceil32(_2562)]
                if ceil32(_2562) > _2562:
                    mem[_2562 + _1584 + 70] = 0
                return 32, mem[_1584 + 38 len ceil32(_2562) + 32]
            mem[0] = 19
            idx = 0
            s = 0
            while idx < uint255(stor19.length) * 0.5:
                mem[idx + _1434 + 32] = stor19[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            mem[_1434 + (uint255(stor19.length) * 0.5) + 32] = 0x2f00000000000000000000000000000000000000000000000000000000000000
            _2349 = mem[96]
            mem[_1434 + (uint255(stor19.length) * 0.5) + 33 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_2349 + _1434 + (uint255(stor19.length) * 0.5) + 33] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_2349) <= _2349:
                _3203 = mem[64]
                mem[64] = _2349 + _1434 + (uint255(stor19.length) * 0.5) + 38
                mem[_2349 + _1434 + (uint255(stor19.length) * 0.5) + 38] = 32
                _3267 = mem[_3203]
                mem[_2349 + _1434 + (uint255(stor19.length) * 0.5) + 70] = mem[_3203]
                mem[_2349 + _1434 + (uint255(stor19.length) * 0.5) + 102 len ceil32(_3267)] = mem[_3203 + 32 len ceil32(_3267)]
                if ceil32(_3267) > _3267:
                    mem[_3267 + _2349 + _1434 + (uint255(stor19.length) * 0.5) + 102] = 0
                return 32, mem[_2349 + _1434 + (uint255(stor19.length) * 0.5) + 70 len ceil32(_3267) + 32]
            _3204 = mem[64]
            mem[64] = _2349 + _1434 + (uint255(stor19.length) * 0.5) + 38
            mem[_2349 + _1434 + (uint255(stor19.length) * 0.5) + 38] = 32
            _3268 = mem[_3204]
            mem[_2349 + _1434 + (uint255(stor19.length) * 0.5) + 70] = mem[_3204]
            mem[_2349 + _1434 + (uint255(stor19.length) * 0.5) + 102 len ceil32(_3268)] = mem[_3204 + 32 len ceil32(_3268)]
            if ceil32(_3268) > _3268:
                mem[_3268 + _2349 + _1434 + (uint255(stor19.length) * 0.5) + 102] = 0
            return 32, mem[_2349 + _1434 + (uint255(stor19.length) * 0.5) + 70 len ceil32(_3268) + 32]
        if bool(stor19.length) == stor19.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor19.length):
            mem[mem[64] + 32] = Mask(248, 8, stor19.length)
            mem[mem[64] + stor19.length.field_1 + 32] = 0x2f00000000000000000000000000000000000000000000000000000000000000
            _1585 = mem[96]
            mem[mem[64] + stor19.length.field_1 + 33 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[mem[96] + mem[64] + stor19.length.field_1 + 33] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(mem[96]) <= mem[96]:
                _2419 = mem[64]
                mem[64] = mem[96] + mem[64] + stor19.length.field_1 + 38
                mem[mem[96] + _1434 + stor19.length.field_1 + 38] = 32
                _2563 = mem[_2419]
                mem[_1585 + _1434 + stor19.length.field_1 + 70] = mem[_2419]
                mem[_1585 + _1434 + stor19.length.field_1 + 102 len ceil32(_2563)] = mem[_2419 + 32 len ceil32(_2563)]
                if ceil32(_2563) > _2563:
                    mem[_2563 + _1585 + _1434 + stor19.length.field_1 + 102] = 0
                return 32, mem[_1585 + _1434 + stor19.length.field_1 + 70 len ceil32(_2563) + 32]
            _2420 = mem[64]
            mem[64] = mem[96] + mem[64] + stor19.length.field_1 + 38
            mem[mem[96] + _1434 + stor19.length.field_1 + 38] = 32
            _2564 = mem[_2420]
            mem[_1585 + _1434 + stor19.length.field_1 + 70] = mem[_2420]
            mem[_1585 + _1434 + stor19.length.field_1 + 102 len ceil32(_2564)] = mem[_2420 + 32 len ceil32(_2564)]
            if ceil32(_2564) > _2564:
                mem[_2564 + _1585 + _1434 + stor19.length.field_1 + 102] = 0
            return 32, mem[_1585 + _1434 + stor19.length.field_1 + 70 len ceil32(_2564) + 32]
        if bool(stor19.length) != 1:
            mem[0] = 0x2f00000000000000000000000000000000000000000000000000000000000000
            _1602 = mem[96]
            mem[1 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_1602 + 1] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_1602) <= _1602:
                _2421 = mem[64]
                mem[64] = _1602 + 6
                mem[_1602 + 6] = 32
                _2565 = mem[_2421]
                mem[_1602 + 38] = mem[_2421]
                mem[_1602 + 70 len ceil32(_2565)] = mem[_2421 + 32 len ceil32(_2565)]
                if ceil32(_2565) > _2565:
                    mem[_2565 + _1602 + 70] = 0
                return 32, mem[_1602 + 38 len ceil32(_2565) + 32]
            _2422 = mem[64]
            mem[64] = _1602 + 6
            mem[_1602 + 6] = 32
            _2566 = mem[_2422]
            mem[_1602 + 38] = mem[_2422]
            mem[_1602 + 70 len ceil32(_2566)] = mem[_2422 + 32 len ceil32(_2566)]
            if ceil32(_2566) > _2566:
                mem[_2566 + _1602 + 70] = 0
            return 32, mem[_1602 + 38 len ceil32(_2566) + 32]
        mem[0] = 19
        idx = 0
        s = 0
        while idx < stor19.length.field_1:
            mem[idx + _1434 + 32] = stor19[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        mem[_1434 + stor19.length.field_1 + 32] = 0x2f00000000000000000000000000000000000000000000000000000000000000
        _2350 = mem[96]
        mem[_1434 + stor19.length.field_1 + 33 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_2350 + _1434 + stor19.length.field_1 + 33] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        if ceil32(_2350) <= _2350:
            _3205 = mem[64]
            mem[64] = _2350 + _1434 + stor19.length.field_1 + 38
            mem[_2350 + _1434 + stor19.length.field_1 + 38] = 32
            _3269 = mem[_3205]
            mem[_2350 + _1434 + stor19.length.field_1 + 70] = mem[_3205]
            mem[_2350 + _1434 + stor19.length.field_1 + 102 len ceil32(_3269)] = mem[_3205 + 32 len ceil32(_3269)]
            if ceil32(_3269) > _3269:
                mem[_3269 + _2350 + _1434 + stor19.length.field_1 + 102] = 0
            return 32, mem[_2350 + _1434 + stor19.length.field_1 + 70 len ceil32(_3269) + 32]
        _3206 = mem[64]
        mem[64] = _2350 + _1434 + stor19.length.field_1 + 38
        mem[_2350 + _1434 + stor19.length.field_1 + 38] = 32
        _3270 = mem[_3206]
        mem[_2350 + _1434 + stor19.length.field_1 + 70] = mem[_3206]
        mem[_2350 + _1434 + stor19.length.field_1 + 102 len ceil32(_3270)] = mem[_3206 + 32 len ceil32(_3270)]
        if ceil32(_3270) > _3270:
            mem[_3270 + _2350 + _1434 + stor19.length.field_1 + 102] = 0
        return 32, mem[_2350 + _1434 + stor19.length.field_1 + 70 len ceil32(_3270) + 32]
    if type[arg1] != 1:
        mem[32] = 26
        if not sub_9e2bf7ef[arg1]:
            mem[96] = 1
            mem[128] = 0x3000000000000000000000000000000000000000000000000000000000000000
            if bool(stor20.length):
                if bool(stor20.length) == uint255(stor20.length) * 0.5 < 32:
                    revert with 0, 34
                if not bool(stor20.length):
                    mem[192] = Mask(248, 8, stor20.length)
                else:
                    if bool(stor20.length) != 1:
                        mem[64] = 7
                        _490 = mem[160]
                        mem[39] = mem[160]
                        mem[71 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                        if ceil32(_490) > _490:
                            mem[_490 + 71] = 0
                        return memory
                          from mem[64]
                           len ceil32(_490) + -mem[64] + 71
                    idx = 0
                    s = 0
                    while idx < uint255(stor20.length) * 0.5:
                        mem[idx + 192] = stor20[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[(uint255(stor20.length) * 0.5) + 192] = 0x2f00000000000000000000000000000000000000000000000000000000000000
                mem[(uint255(stor20.length) * 0.5) + 193] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[(uint255(stor20.length) * 0.5) + 194] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                mem[(uint255(stor20.length) * 0.5) + 199] = 32
                mem[(uint255(stor20.length) * 0.5) + 231] = mem[160]
                mem[(uint255(stor20.length) * 0.5) + 263 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(mem[160]) > mem[160]:
                    mem[mem[160] + (uint255(stor20.length) * 0.5) + 263] = 0
                return Array(len=mem[160], data=mem[(uint255(stor20.length) * 0.5) + 263 len ceil32(mem[160])])
            if bool(stor20.length) == stor20.length.field_1 < 32:
                revert with 0, 34
            if not bool(stor20.length):
                mem[192] = Mask(248, 8, stor20.length)
            else:
                if bool(stor20.length) != 1:
                    mem[64] = 7
                    _494 = mem[160]
                    mem[39] = mem[160]
                    mem[71 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(_494) > _494:
                        mem[_494 + 71] = 0
                    return memory
                      from mem[64]
                       len ceil32(_494) + -mem[64] + 71
                idx = 0
                s = 0
                while idx < stor20.length.field_1:
                    mem[idx + 192] = stor20[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[stor20.length.field_1 + 192] = 0x2f00000000000000000000000000000000000000000000000000000000000000
            mem[stor20.length.field_1 + 193] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[stor20.length.field_1 + 194] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            mem[stor20.length.field_1 + 199] = 32
            mem[stor20.length.field_1 + 231] = mem[160]
            mem[stor20.length.field_1 + 263 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(mem[160]) > mem[160]:
                mem[mem[160] + stor20.length.field_1 + 263] = 0
            return Array(len=mem[160], data=mem[stor20.length.field_1 + 263 len ceil32(mem[160])])
        s = 0
        idx = sub_9e2bf7ef[arg1]
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        mem[96] = s
        mem[64] = ceil32(s) + 128
        if not s:
            t = s
            idx = sub_9e2bf7ef[arg1]
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[96]:
                    revert with 0, 50
                mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _1435 = mem[64]
            if bool(stor20.length):
                if bool(stor20.length) == uint255(stor20.length) * 0.5 < 32:
                    revert with 0, 34
                if not bool(stor20.length):
                    mem[mem[64] + 32] = Mask(248, 8, stor20.length)
                    mem[mem[64] + (uint255(stor20.length) * 0.5) + 32] = 0x2f00000000000000000000000000000000000000000000000000000000000000
                    _1563 = mem[96]
                    mem[mem[64] + (uint255(stor20.length) * 0.5) + 33 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    mem[mem[96] + mem[64] + (uint255(stor20.length) * 0.5) + 33] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    if ceil32(mem[96]) <= mem[96]:
                        _2423 = mem[64]
                        mem[64] = mem[96] + mem[64] + (uint255(stor20.length) * 0.5) + 38
                        mem[mem[96] + _1435 + (uint255(stor20.length) * 0.5) + 38] = 32
                        _2567 = mem[_2423]
                        mem[_1563 + _1435 + (uint255(stor20.length) * 0.5) + 70] = mem[_2423]
                        mem[_1563 + _1435 + (uint255(stor20.length) * 0.5) + 102 len ceil32(_2567)] = mem[_2423 + 32 len ceil32(_2567)]
                        if ceil32(_2567) > _2567:
                            mem[_2567 + _1563 + _1435 + (uint255(stor20.length) * 0.5) + 102] = 0
                        return 32, mem[_1563 + _1435 + (uint255(stor20.length) * 0.5) + 70 len ceil32(_2567) + 32]
                    _2424 = mem[64]
                    mem[64] = mem[96] + mem[64] + (uint255(stor20.length) * 0.5) + 38
                    mem[mem[96] + _1435 + (uint255(stor20.length) * 0.5) + 38] = 32
                    _2568 = mem[_2424]
                    mem[_1563 + _1435 + (uint255(stor20.length) * 0.5) + 70] = mem[_2424]
                    mem[_1563 + _1435 + (uint255(stor20.length) * 0.5) + 102 len ceil32(_2568)] = mem[_2424 + 32 len ceil32(_2568)]
                    if ceil32(_2568) > _2568:
                        mem[_2568 + _1563 + _1435 + (uint255(stor20.length) * 0.5) + 102] = 0
                    return 32, mem[_1563 + _1435 + (uint255(stor20.length) * 0.5) + 70 len ceil32(_2568) + 32]
                if bool(stor20.length) != 1:
                    mem[0] = 0x2f00000000000000000000000000000000000000000000000000000000000000
                    _1587 = mem[96]
                    mem[1 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    mem[_1587 + 1] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    if ceil32(_1587) <= _1587:
                        _2425 = mem[64]
                        mem[64] = _1587 + 6
                        mem[_1587 + 6] = 32
                        _2569 = mem[_2425]
                        mem[_1587 + 38] = mem[_2425]
                        mem[_1587 + 70 len ceil32(_2569)] = mem[_2425 + 32 len ceil32(_2569)]
                        if ceil32(_2569) > _2569:
                            mem[_2569 + _1587 + 70] = 0
                        return 32, mem[_1587 + 38 len ceil32(_2569) + 32]
                    _2426 = mem[64]
                    mem[64] = _1587 + 6
                    mem[_1587 + 6] = 32
                    _2570 = mem[_2426]
                    mem[_1587 + 38] = mem[_2426]
                    mem[_1587 + 70 len ceil32(_2570)] = mem[_2426 + 32 len ceil32(_2570)]
                    if ceil32(_2570) > _2570:
                        mem[_2570 + _1587 + 70] = 0
                    return 32, mem[_1587 + 38 len ceil32(_2570) + 32]
                mem[0] = 20
                idx = 0
                s = 0
                while idx < uint255(stor20.length) * 0.5:
                    mem[idx + _1435 + 32] = stor20[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[_1435 + (uint255(stor20.length) * 0.5) + 32] = 0x2f00000000000000000000000000000000000000000000000000000000000000
                _2351 = mem[96]
                mem[_1435 + (uint255(stor20.length) * 0.5) + 33 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_2351 + _1435 + (uint255(stor20.length) * 0.5) + 33] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(_2351) <= _2351:
                    _3207 = mem[64]
                    mem[64] = _2351 + _1435 + (uint255(stor20.length) * 0.5) + 38
                    mem[_2351 + _1435 + (uint255(stor20.length) * 0.5) + 38] = 32
                    _3271 = mem[_3207]
                    mem[_2351 + _1435 + (uint255(stor20.length) * 0.5) + 70] = mem[_3207]
                    mem[_2351 + _1435 + (uint255(stor20.length) * 0.5) + 102 len ceil32(_3271)] = mem[_3207 + 32 len ceil32(_3271)]
                    if ceil32(_3271) > _3271:
                        mem[_3271 + _2351 + _1435 + (uint255(stor20.length) * 0.5) + 102] = 0
                    return 32, mem[_2351 + _1435 + (uint255(stor20.length) * 0.5) + 70 len ceil32(_3271) + 32]
                _3208 = mem[64]
                mem[64] = _2351 + _1435 + (uint255(stor20.length) * 0.5) + 38
                mem[_2351 + _1435 + (uint255(stor20.length) * 0.5) + 38] = 32
                _3272 = mem[_3208]
                mem[_2351 + _1435 + (uint255(stor20.length) * 0.5) + 70] = mem[_3208]
                mem[_2351 + _1435 + (uint255(stor20.length) * 0.5) + 102 len ceil32(_3272)] = mem[_3208 + 32 len ceil32(_3272)]
                if ceil32(_3272) > _3272:
                    mem[_3272 + _2351 + _1435 + (uint255(stor20.length) * 0.5) + 102] = 0
                return 32, mem[_2351 + _1435 + (uint255(stor20.length) * 0.5) + 70 len ceil32(_3272) + 32]
            if bool(stor20.length) == stor20.length.field_1 < 32:
                revert with 0, 34
            if not bool(stor20.length):
                mem[mem[64] + 32] = Mask(248, 8, stor20.length)
                mem[mem[64] + stor20.length.field_1 + 32] = 0x2f00000000000000000000000000000000000000000000000000000000000000
                _1588 = mem[96]
                mem[mem[64] + stor20.length.field_1 + 33 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[mem[96] + mem[64] + stor20.length.field_1 + 33] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(mem[96]) <= mem[96]:
                    _2427 = mem[64]
                    mem[64] = mem[96] + mem[64] + stor20.length.field_1 + 38
                    mem[mem[96] + _1435 + stor20.length.field_1 + 38] = 32
                    _2571 = mem[_2427]
                    mem[_1588 + _1435 + stor20.length.field_1 + 70] = mem[_2427]
                    mem[_1588 + _1435 + stor20.length.field_1 + 102 len ceil32(_2571)] = mem[_2427 + 32 len ceil32(_2571)]
                    if ceil32(_2571) > _2571:
                        mem[_2571 + _1588 + _1435 + stor20.length.field_1 + 102] = 0
                    return 32, mem[_1588 + _1435 + stor20.length.field_1 + 70 len ceil32(_2571) + 32]
                _2428 = mem[64]
                mem[64] = mem[96] + mem[64] + stor20.length.field_1 + 38
                mem[mem[96] + _1435 + stor20.length.field_1 + 38] = 32
                _2572 = mem[_2428]
                mem[_1588 + _1435 + stor20.length.field_1 + 70] = mem[_2428]
                mem[_1588 + _1435 + stor20.length.field_1 + 102 len ceil32(_2572)] = mem[_2428 + 32 len ceil32(_2572)]
                if ceil32(_2572) > _2572:
                    mem[_2572 + _1588 + _1435 + stor20.length.field_1 + 102] = 0
                return 32, mem[_1588 + _1435 + stor20.length.field_1 + 70 len ceil32(_2572) + 32]
            if bool(stor20.length) != 1:
                mem[0] = 0x2f00000000000000000000000000000000000000000000000000000000000000
                _1603 = mem[96]
                mem[1 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_1603 + 1] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(_1603) <= _1603:
                    _2429 = mem[64]
                    mem[64] = _1603 + 6
                    mem[_1603 + 6] = 32
                    _2573 = mem[_2429]
                    mem[_1603 + 38] = mem[_2429]
                    mem[_1603 + 70 len ceil32(_2573)] = mem[_2429 + 32 len ceil32(_2573)]
                    if ceil32(_2573) > _2573:
                        mem[_2573 + _1603 + 70] = 0
                    return 32, mem[_1603 + 38 len ceil32(_2573) + 32]
                _2430 = mem[64]
                mem[64] = _1603 + 6
                mem[_1603 + 6] = 32
                _2574 = mem[_2430]
                mem[_1603 + 38] = mem[_2430]
                mem[_1603 + 70 len ceil32(_2574)] = mem[_2430 + 32 len ceil32(_2574)]
                if ceil32(_2574) > _2574:
                    mem[_2574 + _1603 + 70] = 0
                return 32, mem[_1603 + 38 len ceil32(_2574) + 32]
            mem[0] = 20
            idx = 0
            s = 0
            while idx < stor20.length.field_1:
                mem[idx + _1435 + 32] = stor20[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            mem[_1435 + stor20.length.field_1 + 32] = 0x2f00000000000000000000000000000000000000000000000000000000000000
            _2352 = mem[96]
            mem[_1435 + stor20.length.field_1 + 33 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_2352 + _1435 + stor20.length.field_1 + 33] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_2352) <= _2352:
                _3209 = mem[64]
                mem[64] = _2352 + _1435 + stor20.length.field_1 + 38
                mem[_2352 + _1435 + stor20.length.field_1 + 38] = 32
                _3273 = mem[_3209]
                mem[_2352 + _1435 + stor20.length.field_1 + 70] = mem[_3209]
                mem[_2352 + _1435 + stor20.length.field_1 + 102 len ceil32(_3273)] = mem[_3209 + 32 len ceil32(_3273)]
                if ceil32(_3273) > _3273:
                    mem[_3273 + _2352 + _1435 + stor20.length.field_1 + 102] = 0
                return 32, mem[_2352 + _1435 + stor20.length.field_1 + 70 len ceil32(_3273) + 32]
            _3210 = mem[64]
            mem[64] = _2352 + _1435 + stor20.length.field_1 + 38
            mem[_2352 + _1435 + stor20.length.field_1 + 38] = 32
            _3274 = mem[_3210]
            mem[_2352 + _1435 + stor20.length.field_1 + 70] = mem[_3210]
            mem[_2352 + _1435 + stor20.length.field_1 + 102 len ceil32(_3274)] = mem[_3210 + 32 len ceil32(_3274)]
            if ceil32(_3274) > _3274:
                mem[_3274 + _2352 + _1435 + stor20.length.field_1 + 102] = 0
            return 32, mem[_2352 + _1435 + stor20.length.field_1 + 70 len ceil32(_3274) + 32]
        mem[128 len s] = call.data[calldata.size len s]
        t = s
        idx = sub_9e2bf7ef[arg1]
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[96]:
                revert with 0, 50
            mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _1436 = mem[64]
        if bool(stor20.length):
            if bool(stor20.length) == uint255(stor20.length) * 0.5 < 32:
                revert with 0, 34
            if not bool(stor20.length):
                mem[mem[64] + 32] = Mask(248, 8, stor20.length)
                mem[mem[64] + (uint255(stor20.length) * 0.5) + 32] = 0x2f00000000000000000000000000000000000000000000000000000000000000
                _1564 = mem[96]
                mem[mem[64] + (uint255(stor20.length) * 0.5) + 33 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[mem[96] + mem[64] + (uint255(stor20.length) * 0.5) + 33] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(mem[96]) <= mem[96]:
                    _2431 = mem[64]
                    mem[64] = mem[96] + mem[64] + (uint255(stor20.length) * 0.5) + 38
                    mem[mem[96] + _1436 + (uint255(stor20.length) * 0.5) + 38] = 32
                    _2575 = mem[_2431]
                    mem[_1564 + _1436 + (uint255(stor20.length) * 0.5) + 70] = mem[_2431]
                    mem[_1564 + _1436 + (uint255(stor20.length) * 0.5) + 102 len ceil32(_2575)] = mem[_2431 + 32 len ceil32(_2575)]
                    if ceil32(_2575) > _2575:
                        mem[_2575 + _1564 + _1436 + (uint255(stor20.length) * 0.5) + 102] = 0
                    return 32, mem[_1564 + _1436 + (uint255(stor20.length) * 0.5) + 70 len ceil32(_2575) + 32]
                _2432 = mem[64]
                mem[64] = mem[96] + mem[64] + (uint255(stor20.length) * 0.5) + 38
                mem[mem[96] + _1436 + (uint255(stor20.length) * 0.5) + 38] = 32
                _2576 = mem[_2432]
                mem[_1564 + _1436 + (uint255(stor20.length) * 0.5) + 70] = mem[_2432]
                mem[_1564 + _1436 + (uint255(stor20.length) * 0.5) + 102 len ceil32(_2576)] = mem[_2432 + 32 len ceil32(_2576)]
                if ceil32(_2576) > _2576:
                    mem[_2576 + _1564 + _1436 + (uint255(stor20.length) * 0.5) + 102] = 0
                return 32, mem[_1564 + _1436 + (uint255(stor20.length) * 0.5) + 70 len ceil32(_2576) + 32]
            if bool(stor20.length) != 1:
                mem[0] = 0x2f00000000000000000000000000000000000000000000000000000000000000
                _1590 = mem[96]
                mem[1 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_1590 + 1] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(_1590) <= _1590:
                    _2433 = mem[64]
                    mem[64] = _1590 + 6
                    mem[_1590 + 6] = 32
                    _2577 = mem[_2433]
                    mem[_1590 + 38] = mem[_2433]
                    mem[_1590 + 70 len ceil32(_2577)] = mem[_2433 + 32 len ceil32(_2577)]
                    if ceil32(_2577) > _2577:
                        mem[_2577 + _1590 + 70] = 0
                    return 32, mem[_1590 + 38 len ceil32(_2577) + 32]
                _2434 = mem[64]
                mem[64] = _1590 + 6
                mem[_1590 + 6] = 32
                _2578 = mem[_2434]
                mem[_1590 + 38] = mem[_2434]
                mem[_1590 + 70 len ceil32(_2578)] = mem[_2434 + 32 len ceil32(_2578)]
                if ceil32(_2578) > _2578:
                    mem[_2578 + _1590 + 70] = 0
                return 32, mem[_1590 + 38 len ceil32(_2578) + 32]
            mem[0] = 20
            idx = 0
            s = 0
            while idx < uint255(stor20.length) * 0.5:
                mem[idx + _1436 + 32] = stor20[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            mem[_1436 + (uint255(stor20.length) * 0.5) + 32] = 0x2f00000000000000000000000000000000000000000000000000000000000000
            _2353 = mem[96]
            mem[_1436 + (uint255(stor20.length) * 0.5) + 33 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_2353 + _1436 + (uint255(stor20.length) * 0.5) + 33] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_2353) <= _2353:
                _3211 = mem[64]
                mem[64] = _2353 + _1436 + (uint255(stor20.length) * 0.5) + 38
                mem[_2353 + _1436 + (uint255(stor20.length) * 0.5) + 38] = 32
                _3275 = mem[_3211]
                mem[_2353 + _1436 + (uint255(stor20.length) * 0.5) + 70] = mem[_3211]
                mem[_2353 + _1436 + (uint255(stor20.length) * 0.5) + 102 len ceil32(_3275)] = mem[_3211 + 32 len ceil32(_3275)]
                if ceil32(_3275) > _3275:
                    mem[_3275 + _2353 + _1436 + (uint255(stor20.length) * 0.5) + 102] = 0
                return 32, mem[_2353 + _1436 + (uint255(stor20.length) * 0.5) + 70 len ceil32(_3275) + 32]
            _3212 = mem[64]
            mem[64] = _2353 + _1436 + (uint255(stor20.length) * 0.5) + 38
            mem[_2353 + _1436 + (uint255(stor20.length) * 0.5) + 38] = 32
            _3276 = mem[_3212]
            mem[_2353 + _1436 + (uint255(stor20.length) * 0.5) + 70] = mem[_3212]
            mem[_2353 + _1436 + (uint255(stor20.length) * 0.5) + 102 len ceil32(_3276)] = mem[_3212 + 32 len ceil32(_3276)]
            if ceil32(_3276) > _3276:
                mem[_3276 + _2353 + _1436 + (uint255(stor20.length) * 0.5) + 102] = 0
            return 32, mem[_2353 + _1436 + (uint255(stor20.length) * 0.5) + 70 len ceil32(_3276) + 32]
        if bool(stor20.length) == stor20.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor20.length):
            mem[mem[64] + 32] = Mask(248, 8, stor20.length)
            mem[mem[64] + stor20.length.field_1 + 32] = 0x2f00000000000000000000000000000000000000000000000000000000000000
            _1591 = mem[96]
            mem[mem[64] + stor20.length.field_1 + 33 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[mem[96] + mem[64] + stor20.length.field_1 + 33] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(mem[96]) <= mem[96]:
                _2435 = mem[64]
                mem[64] = mem[96] + mem[64] + stor20.length.field_1 + 38
                mem[mem[96] + _1436 + stor20.length.field_1 + 38] = 32
                _2579 = mem[_2435]
                mem[_1591 + _1436 + stor20.length.field_1 + 70] = mem[_2435]
                mem[_1591 + _1436 + stor20.length.field_1 + 102 len ceil32(_2579)] = mem[_2435 + 32 len ceil32(_2579)]
                if ceil32(_2579) > _2579:
                    mem[_2579 + _1591 + _1436 + stor20.length.field_1 + 102] = 0
                return 32, mem[_1591 + _1436 + stor20.length.field_1 + 70 len ceil32(_2579) + 32]
            _2436 = mem[64]
            mem[64] = mem[96] + mem[64] + stor20.length.field_1 + 38
            mem[mem[96] + _1436 + stor20.length.field_1 + 38] = 32
            _2580 = mem[_2436]
            mem[_1591 + _1436 + stor20.length.field_1 + 70] = mem[_2436]
            mem[_1591 + _1436 + stor20.length.field_1 + 102 len ceil32(_2580)] = mem[_2436 + 32 len ceil32(_2580)]
            if ceil32(_2580) > _2580:
                mem[_2580 + _1591 + _1436 + stor20.length.field_1 + 102] = 0
            return 32, mem[_1591 + _1436 + stor20.length.field_1 + 70 len ceil32(_2580) + 32]
        if bool(stor20.length) != 1:
            mem[0] = 0x2f00000000000000000000000000000000000000000000000000000000000000
            _1604 = mem[96]
            mem[1 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_1604 + 1] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_1604) <= _1604:
                _2437 = mem[64]
                mem[64] = _1604 + 6
                mem[_1604 + 6] = 32
                _2581 = mem[_2437]
                mem[_1604 + 38] = mem[_2437]
                mem[_1604 + 70 len ceil32(_2581)] = mem[_2437 + 32 len ceil32(_2581)]
                if ceil32(_2581) > _2581:
                    mem[_2581 + _1604 + 70] = 0
                return 32, mem[_1604 + 38 len ceil32(_2581) + 32]
            _2438 = mem[64]
            mem[64] = _1604 + 6
            mem[_1604 + 6] = 32
            _2582 = mem[_2438]
            mem[_1604 + 38] = mem[_2438]
            mem[_1604 + 70 len ceil32(_2582)] = mem[_2438 + 32 len ceil32(_2582)]
            if ceil32(_2582) > _2582:
                mem[_2582 + _1604 + 70] = 0
            return 32, mem[_1604 + 38 len ceil32(_2582) + 32]
        mem[0] = 20
        idx = 0
        s = 0
        while idx < stor20.length.field_1:
            mem[idx + _1436 + 32] = stor20[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        mem[_1436 + stor20.length.field_1 + 32] = 0x2f00000000000000000000000000000000000000000000000000000000000000
        _2354 = mem[96]
        mem[_1436 + stor20.length.field_1 + 33 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_2354 + _1436 + stor20.length.field_1 + 33] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        if ceil32(_2354) <= _2354:
            _3213 = mem[64]
            mem[64] = _2354 + _1436 + stor20.length.field_1 + 38
            mem[_2354 + _1436 + stor20.length.field_1 + 38] = 32
            _3277 = mem[_3213]
            mem[_2354 + _1436 + stor20.length.field_1 + 70] = mem[_3213]
            mem[_2354 + _1436 + stor20.length.field_1 + 102 len ceil32(_3277)] = mem[_3213 + 32 len ceil32(_3277)]
            if ceil32(_3277) > _3277:
                mem[_3277 + _2354 + _1436 + stor20.length.field_1 + 102] = 0
            return 32, mem[_2354 + _1436 + stor20.length.field_1 + 70 len ceil32(_3277) + 32]
        _3214 = mem[64]
        mem[64] = _2354 + _1436 + stor20.length.field_1 + 38
        mem[_2354 + _1436 + stor20.length.field_1 + 38] = 32
        _3278 = mem[_3214]
        mem[_2354 + _1436 + stor20.length.field_1 + 70] = mem[_3214]
        mem[_2354 + _1436 + stor20.length.field_1 + 102 len ceil32(_3278)] = mem[_3214 + 32 len ceil32(_3278)]
        if ceil32(_3278) > _3278:
            mem[_3278 + _2354 + _1436 + stor20.length.field_1 + 102] = 0
        return 32, mem[_2354 + _1436 + stor20.length.field_1 + 70 len ceil32(_3278) + 32]
    mem[32] = 28
    if not sub_051d8729[arg1]:
        mem[96] = 1
        mem[128] = 0x3000000000000000000000000000000000000000000000000000000000000000
        if bool(stor18.length):
            if bool(stor18.length) == uint255(stor18.length) * 0.5 < 32:
                revert with 0, 34
            if not bool(stor18.length):
                mem[192] = Mask(248, 8, stor18.length)
            else:
                if bool(stor18.length) != 1:
                    mem[64] = 7
                    _498 = mem[160]
                    mem[39] = mem[160]
                    mem[71 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(_498) > _498:
                        mem[_498 + 71] = 0
                    return memory
                      from mem[64]
                       len ceil32(_498) + -mem[64] + 71
                idx = 0
                s = 0
                while idx < uint255(stor18.length) * 0.5:
                    mem[idx + 192] = stor18[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[(uint255(stor18.length) * 0.5) + 192] = 0x2f00000000000000000000000000000000000000000000000000000000000000
            mem[(uint255(stor18.length) * 0.5) + 193] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[(uint255(stor18.length) * 0.5) + 194] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            mem[(uint255(stor18.length) * 0.5) + 199] = 32
            mem[(uint255(stor18.length) * 0.5) + 231] = mem[160]
            mem[(uint255(stor18.length) * 0.5) + 263 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(mem[160]) > mem[160]:
                mem[mem[160] + (uint255(stor18.length) * 0.5) + 263] = 0
            return Array(len=mem[160], data=mem[(uint255(stor18.length) * 0.5) + 263 len ceil32(mem[160])])
        if bool(stor18.length) == stor18.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor18.length):
            mem[192] = Mask(248, 8, stor18.length)
        else:
            if bool(stor18.length) != 1:
                mem[64] = 7
                _502 = mem[160]
                mem[39] = mem[160]
                mem[71 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(_502) > _502:
                    mem[_502 + 71] = 0
                return memory
                  from mem[64]
                   len ceil32(_502) + -mem[64] + 71
            idx = 0
            s = 0
            while idx < stor18.length.field_1:
                mem[idx + 192] = stor18[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
        mem[stor18.length.field_1 + 192] = 0x2f00000000000000000000000000000000000000000000000000000000000000
        mem[stor18.length.field_1 + 193] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[stor18.length.field_1 + 194] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        mem[stor18.length.field_1 + 199] = 32
        mem[stor18.length.field_1 + 231] = mem[160]
        mem[stor18.length.field_1 + 263 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if ceil32(mem[160]) > mem[160]:
            mem[mem[160] + stor18.length.field_1 + 263] = 0
        return Array(len=mem[160], data=mem[stor18.length.field_1 + 263 len ceil32(mem[160])])
    s = 0
    idx = sub_051d8729[arg1]
    while idx:
        if s == -1:
            revert with 0, 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[96] = s
    mem[64] = ceil32(s) + 128
    if not s:
        t = s
        idx = sub_051d8729[arg1]
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[96]:
                revert with 0, 50
            mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _1437 = mem[64]
        if bool(stor18.length):
            if bool(stor18.length) == uint255(stor18.length) * 0.5 < 32:
                revert with 0, 34
            if not bool(stor18.length):
                mem[mem[64] + 32] = Mask(248, 8, stor18.length)
                mem[mem[64] + (uint255(stor18.length) * 0.5) + 32] = 0x2f00000000000000000000000000000000000000000000000000000000000000
                _1569 = mem[96]
                mem[mem[64] + (uint255(stor18.length) * 0.5) + 33 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[mem[96] + mem[64] + (uint255(stor18.length) * 0.5) + 33] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(mem[96]) <= mem[96]:
                    _2439 = mem[64]
                    mem[64] = mem[96] + mem[64] + (uint255(stor18.length) * 0.5) + 38
                    mem[mem[96] + _1437 + (uint255(stor18.length) * 0.5) + 38] = 32
                    _2583 = mem[_2439]
                    mem[_1569 + _1437 + (uint255(stor18.length) * 0.5) + 70] = mem[_2439]
                    mem[_1569 + _1437 + (uint255(stor18.length) * 0.5) + 102 len ceil32(_2583)] = mem[_2439 + 32 len ceil32(_2583)]
                    if ceil32(_2583) > _2583:
                        mem[_2583 + _1569 + _1437 + (uint255(stor18.length) * 0.5) + 102] = 0
                    return 32, mem[_1569 + _1437 + (uint255(stor18.length) * 0.5) + 70 len ceil32(_2583) + 32]
                _2440 = mem[64]
                mem[64] = mem[96] + mem[64] + (uint255(stor18.length) * 0.5) + 38
                mem[mem[96] + _1437 + (uint255(stor18.length) * 0.5) + 38] = 32
                _2584 = mem[_2440]
                mem[_1569 + _1437 + (uint255(stor18.length) * 0.5) + 70] = mem[_2440]
                mem[_1569 + _1437 + (uint255(stor18.length) * 0.5) + 102 len ceil32(_2584)] = mem[_2440 + 32 len ceil32(_2584)]
                if ceil32(_2584) > _2584:
                    mem[_2584 + _1569 + _1437 + (uint255(stor18.length) * 0.5) + 102] = 0
                return 32, mem[_1569 + _1437 + (uint255(stor18.length) * 0.5) + 70 len ceil32(_2584) + 32]
            if bool(stor18.length) != 1:
                mem[0] = 0x2f00000000000000000000000000000000000000000000000000000000000000
                _1593 = mem[96]
                mem[1 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_1593 + 1] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(_1593) <= _1593:
                    _2441 = mem[64]
                    mem[64] = _1593 + 6
                    mem[_1593 + 6] = 32
                    _2585 = mem[_2441]
                    mem[_1593 + 38] = mem[_2441]
                    mem[_1593 + 70 len ceil32(_2585)] = mem[_2441 + 32 len ceil32(_2585)]
                    if ceil32(_2585) > _2585:
                        mem[_2585 + _1593 + 70] = 0
                    return 32, mem[_1593 + 38 len ceil32(_2585) + 32]
                _2442 = mem[64]
                mem[64] = _1593 + 6
                mem[_1593 + 6] = 32
                _2586 = mem[_2442]
                mem[_1593 + 38] = mem[_2442]
                mem[_1593 + 70 len ceil32(_2586)] = mem[_2442 + 32 len ceil32(_2586)]
                if ceil32(_2586) > _2586:
                    mem[_2586 + _1593 + 70] = 0
                return 32, mem[_1593 + 38 len ceil32(_2586) + 32]
            mem[0] = 18
            idx = 0
            s = 0
            while idx < uint255(stor18.length) * 0.5:
                mem[idx + _1437 + 32] = stor18[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            mem[_1437 + (uint255(stor18.length) * 0.5) + 32] = 0x2f00000000000000000000000000000000000000000000000000000000000000
            _2355 = mem[96]
            mem[_1437 + (uint255(stor18.length) * 0.5) + 33 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_2355 + _1437 + (uint255(stor18.length) * 0.5) + 33] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_2355) <= _2355:
                _3215 = mem[64]
                mem[64] = _2355 + _1437 + (uint255(stor18.length) * 0.5) + 38
                mem[_2355 + _1437 + (uint255(stor18.length) * 0.5) + 38] = 32
                _3279 = mem[_3215]
                mem[_2355 + _1437 + (uint255(stor18.length) * 0.5) + 70] = mem[_3215]
                mem[_2355 + _1437 + (uint255(stor18.length) * 0.5) + 102 len ceil32(_3279)] = mem[_3215 + 32 len ceil32(_3279)]
                if ceil32(_3279) > _3279:
                    mem[_3279 + _2355 + _1437 + (uint255(stor18.length) * 0.5) + 102] = 0
                return 32, mem[_2355 + _1437 + (uint255(stor18.length) * 0.5) + 70 len ceil32(_3279) + 32]
            _3216 = mem[64]
            mem[64] = _2355 + _1437 + (uint255(stor18.length) * 0.5) + 38
            mem[_2355 + _1437 + (uint255(stor18.length) * 0.5) + 38] = 32
            _3280 = mem[_3216]
            mem[_2355 + _1437 + (uint255(stor18.length) * 0.5) + 70] = mem[_3216]
            mem[_2355 + _1437 + (uint255(stor18.length) * 0.5) + 102 len ceil32(_3280)] = mem[_3216 + 32 len ceil32(_3280)]
            if ceil32(_3280) > _3280:
                mem[_3280 + _2355 + _1437 + (uint255(stor18.length) * 0.5) + 102] = 0
            return 32, mem[_2355 + _1437 + (uint255(stor18.length) * 0.5) + 70 len ceil32(_3280) + 32]
        if bool(stor18.length) == stor18.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor18.length):
            mem[mem[64] + 32] = Mask(248, 8, stor18.length)
            mem[mem[64] + stor18.length.field_1 + 32] = 0x2f00000000000000000000000000000000000000000000000000000000000000
            _1594 = mem[96]
            mem[mem[64] + stor18.length.field_1 + 33 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[mem[96] + mem[64] + stor18.length.field_1 + 33] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(mem[96]) <= mem[96]:
                _2443 = mem[64]
                mem[64] = mem[96] + mem[64] + stor18.length.field_1 + 38
                mem[mem[96] + _1437 + stor18.length.field_1 + 38] = 32
                _2587 = mem[_2443]
                mem[_1594 + _1437 + stor18.length.field_1 + 70] = mem[_2443]
                mem[_1594 + _1437 + stor18.length.field_1 + 102 len ceil32(_2587)] = mem[_2443 + 32 len ceil32(_2587)]
                if ceil32(_2587) > _2587:
                    mem[_2587 + _1594 + _1437 + stor18.length.field_1 + 102] = 0
                return 32, mem[_1594 + _1437 + stor18.length.field_1 + 70 len ceil32(_2587) + 32]
            _2444 = mem[64]
            mem[64] = mem[96] + mem[64] + stor18.length.field_1 + 38
            mem[mem[96] + _1437 + stor18.length.field_1 + 38] = 32
            _2588 = mem[_2444]
            mem[_1594 + _1437 + stor18.length.field_1 + 70] = mem[_2444]
            mem[_1594 + _1437 + stor18.length.field_1 + 102 len ceil32(_2588)] = mem[_2444 + 32 len ceil32(_2588)]
            if ceil32(_2588) > _2588:
                mem[_2588 + _1594 + _1437 + stor18.length.field_1 + 102] = 0
            return 32, mem[_1594 + _1437 + stor18.length.field_1 + 70 len ceil32(_2588) + 32]
        if bool(stor18.length) != 1:
            mem[0] = 0x2f00000000000000000000000000000000000000000000000000000000000000
            _1605 = mem[96]
            mem[1 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_1605 + 1] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_1605) <= _1605:
                _2445 = mem[64]
                mem[64] = _1605 + 6
                mem[_1605 + 6] = 32
                _2589 = mem[_2445]
                mem[_1605 + 38] = mem[_2445]
                mem[_1605 + 70 len ceil32(_2589)] = mem[_2445 + 32 len ceil32(_2589)]
                if ceil32(_2589) > _2589:
                    mem[_2589 + _1605 + 70] = 0
                return 32, mem[_1605 + 38 len ceil32(_2589) + 32]
            _2446 = mem[64]
            mem[64] = _1605 + 6
            mem[_1605 + 6] = 32
            _2590 = mem[_2446]
            mem[_1605 + 38] = mem[_2446]
            mem[_1605 + 70 len ceil32(_2590)] = mem[_2446 + 32 len ceil32(_2590)]
            if ceil32(_2590) > _2590:
                mem[_2590 + _1605 + 70] = 0
            return 32, mem[_1605 + 38 len ceil32(_2590) + 32]
        mem[0] = 18
        idx = 0
        s = 0
        while idx < stor18.length.field_1:
            mem[idx + _1437 + 32] = stor18[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        mem[_1437 + stor18.length.field_1 + 32] = 0x2f00000000000000000000000000000000000000000000000000000000000000
        _2356 = mem[96]
        mem[_1437 + stor18.length.field_1 + 33 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_2356 + _1437 + stor18.length.field_1 + 33] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        if ceil32(_2356) <= _2356:
            _3217 = mem[64]
            mem[64] = _2356 + _1437 + stor18.length.field_1 + 38
            mem[_2356 + _1437 + stor18.length.field_1 + 38] = 32
            _3281 = mem[_3217]
            mem[_2356 + _1437 + stor18.length.field_1 + 70] = mem[_3217]
            mem[_2356 + _1437 + stor18.length.field_1 + 102 len ceil32(_3281)] = mem[_3217 + 32 len ceil32(_3281)]
            if ceil32(_3281) > _3281:
                mem[_3281 + _2356 + _1437 + stor18.length.field_1 + 102] = 0
            return 32, mem[_2356 + _1437 + stor18.length.field_1 + 70 len ceil32(_3281) + 32]
        _3218 = mem[64]
        mem[64] = _2356 + _1437 + stor18.length.field_1 + 38
        mem[_2356 + _1437 + stor18.length.field_1 + 38] = 32
        _3282 = mem[_3218]
        mem[_2356 + _1437 + stor18.length.field_1 + 70] = mem[_3218]
        mem[_2356 + _1437 + stor18.length.field_1 + 102 len ceil32(_3282)] = mem[_3218 + 32 len ceil32(_3282)]
        if ceil32(_3282) > _3282:
            mem[_3282 + _2356 + _1437 + stor18.length.field_1 + 102] = 0
        return 32, mem[_2356 + _1437 + stor18.length.field_1 + 70 len ceil32(_3282) + 32]
    mem[128 len s] = call.data[calldata.size len s]
    t = s
    idx = sub_051d8729[arg1]
    while idx:
        if t < 1:
            revert with 0, 17
        if 48 > !(idx % 10):
            revert with 0, 17
        if t - 1 >= mem[96]:
            revert with 0, 50
        mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _1438 = mem[64]
    if bool(stor18.length):
        if bool(stor18.length) == uint255(stor18.length) * 0.5 < 32:
            revert with 0, 34
        if not bool(stor18.length):
            mem[mem[64] + 32] = Mask(248, 8, stor18.length)
            mem[mem[64] + (uint255(stor18.length) * 0.5) + 32] = 0x2f00000000000000000000000000000000000000000000000000000000000000
            _1570 = mem[96]
            mem[mem[64] + (uint255(stor18.length) * 0.5) + 33 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[mem[96] + mem[64] + (uint255(stor18.length) * 0.5) + 33] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(mem[96]) <= mem[96]:
                _2447 = mem[64]
                mem[64] = mem[96] + mem[64] + (uint255(stor18.length) * 0.5) + 38
                mem[mem[96] + _1438 + (uint255(stor18.length) * 0.5) + 38] = 32
                _2591 = mem[_2447]
                mem[_1570 + _1438 + (uint255(stor18.length) * 0.5) + 70] = mem[_2447]
                mem[_1570 + _1438 + (uint255(stor18.length) * 0.5) + 102 len ceil32(_2591)] = mem[_2447 + 32 len ceil32(_2591)]
                if ceil32(_2591) > _2591:
                    mem[_2591 + _1570 + _1438 + (uint255(stor18.length) * 0.5) + 102] = 0
                return 32, mem[_1570 + _1438 + (uint255(stor18.length) * 0.5) + 70 len ceil32(_2591) + 32]
            _2448 = mem[64]
            mem[64] = mem[96] + mem[64] + (uint255(stor18.length) * 0.5) + 38
            mem[mem[96] + _1438 + (uint255(stor18.length) * 0.5) + 38] = 32
            _2592 = mem[_2448]
            mem[_1570 + _1438 + (uint255(stor18.length) * 0.5) + 70] = mem[_2448]
            mem[_1570 + _1438 + (uint255(stor18.length) * 0.5) + 102 len ceil32(_2592)] = mem[_2448 + 32 len ceil32(_2592)]
            if ceil32(_2592) > _2592:
                mem[_2592 + _1570 + _1438 + (uint255(stor18.length) * 0.5) + 102] = 0
            return 32, mem[_1570 + _1438 + (uint255(stor18.length) * 0.5) + 70 len ceil32(_2592) + 32]
        if bool(stor18.length) != 1:
            mem[0] = 0x2f00000000000000000000000000000000000000000000000000000000000000
            _1596 = mem[96]
            mem[1 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_1596 + 1] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_1596) <= _1596:
                _2449 = mem[64]
                mem[64] = _1596 + 6
                mem[_1596 + 6] = 32
                _2593 = mem[_2449]
                mem[_1596 + 38] = mem[_2449]
                mem[_1596 + 70 len ceil32(_2593)] = mem[_2449 + 32 len ceil32(_2593)]
                if ceil32(_2593) > _2593:
                    mem[_2593 + _1596 + 70] = 0
                return 32, mem[_1596 + 38 len ceil32(_2593) + 32]
            _2450 = mem[64]
            mem[64] = _1596 + 6
            mem[_1596 + 6] = 32
            _2594 = mem[_2450]
            mem[_1596 + 38] = mem[_2450]
            mem[_1596 + 70 len ceil32(_2594)] = mem[_2450 + 32 len ceil32(_2594)]
            if ceil32(_2594) > _2594:
                mem[_2594 + _1596 + 70] = 0
            return 32, mem[_1596 + 38 len ceil32(_2594) + 32]
        mem[0] = 18
        idx = 0
        s = 0
        while idx < uint255(stor18.length) * 0.5:
            mem[idx + _1438 + 32] = stor18[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        mem[_1438 + (uint255(stor18.length) * 0.5) + 32] = 0x2f00000000000000000000000000000000000000000000000000000000000000
        _2357 = mem[96]
        mem[_1438 + (uint255(stor18.length) * 0.5) + 33 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_2357 + _1438 + (uint255(stor18.length) * 0.5) + 33] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        if ceil32(_2357) <= _2357:
            _3219 = mem[64]
            mem[64] = _2357 + _1438 + (uint255(stor18.length) * 0.5) + 38
            mem[_2357 + _1438 + (uint255(stor18.length) * 0.5) + 38] = 32
            _3283 = mem[_3219]
            mem[_2357 + _1438 + (uint255(stor18.length) * 0.5) + 70] = mem[_3219]
            mem[_2357 + _1438 + (uint255(stor18.length) * 0.5) + 102 len ceil32(_3283)] = mem[_3219 + 32 len ceil32(_3283)]
            if ceil32(_3283) > _3283:
                mem[_3283 + _2357 + _1438 + (uint255(stor18.length) * 0.5) + 102] = 0
            return 32, mem[_2357 + _1438 + (uint255(stor18.length) * 0.5) + 70 len ceil32(_3283) + 32]
        _3220 = mem[64]
        mem[64] = _2357 + _1438 + (uint255(stor18.length) * 0.5) + 38
        mem[_2357 + _1438 + (uint255(stor18.length) * 0.5) + 38] = 32
        _3284 = mem[_3220]
        mem[_2357 + _1438 + (uint255(stor18.length) * 0.5) + 70] = mem[_3220]
        mem[_2357 + _1438 + (uint255(stor18.length) * 0.5) + 102 len ceil32(_3284)] = mem[_3220 + 32 len ceil32(_3284)]
        if ceil32(_3284) > _3284:
            mem[_3284 + _2357 + _1438 + (uint255(stor18.length) * 0.5) + 102] = 0
        return 32, mem[_2357 + _1438 + (uint255(stor18.length) * 0.5) + 70 len ceil32(_3284) + 32]
    if bool(stor18.length) == stor18.length.field_1 < 32:
        revert with 0, 34
    if not bool(stor18.length):
        mem[mem[64] + 32] = Mask(248, 8, stor18.length)
        mem[mem[64] + stor18.length.field_1 + 32] = 0x2f00000000000000000000000000000000000000000000000000000000000000
        _1597 = mem[96]
        mem[mem[64] + stor18.length.field_1 + 33 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[mem[96] + mem[64] + stor18.length.field_1 + 33] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        if ceil32(mem[96]) <= mem[96]:
            _2451 = mem[64]
            mem[64] = mem[96] + mem[64] + stor18.length.field_1 + 38
            mem[mem[96] + _1438 + stor18.length.field_1 + 38] = 32
            _2595 = mem[_2451]
            mem[_1597 + _1438 + stor18.length.field_1 + 70] = mem[_2451]
            mem[_1597 + _1438 + stor18.length.field_1 + 102 len ceil32(_2595)] = mem[_2451 + 32 len ceil32(_2595)]
            if ceil32(_2595) > _2595:
                mem[_2595 + _1597 + _1438 + stor18.length.field_1 + 102] = 0
            return 32, mem[_1597 + _1438 + stor18.length.field_1 + 70 len ceil32(_2595) + 32]
        _2452 = mem[64]
        mem[64] = mem[96] + mem[64] + stor18.length.field_1 + 38
        mem[mem[96] + _1438 + stor18.length.field_1 + 38] = 32
        _2596 = mem[_2452]
        mem[_1597 + _1438 + stor18.length.field_1 + 70] = mem[_2452]
        mem[_1597 + _1438 + stor18.length.field_1 + 102 len ceil32(_2596)] = mem[_2452 + 32 len ceil32(_2596)]
        if ceil32(_2596) > _2596:
            mem[_2596 + _1597 + _1438 + stor18.length.field_1 + 102] = 0
        return 32, mem[_1597 + _1438 + stor18.length.field_1 + 70 len ceil32(_2596) + 32]
    if bool(stor18.length) != 1:
        mem[0] = 0x2f00000000000000000000000000000000000000000000000000000000000000
        _1606 = mem[96]
        mem[1 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_1606 + 1] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        if ceil32(_1606) <= _1606:
            _2453 = mem[64]
            mem[64] = _1606 + 6
            mem[_1606 + 6] = 32
            _2597 = mem[_2453]
            mem[_1606 + 38] = mem[_2453]
            mem[_1606 + 70 len ceil32(_2597)] = mem[_2453 + 32 len ceil32(_2597)]
            if ceil32(_2597) > _2597:
                mem[_2597 + _1606 + 70] = 0
            return 32, mem[_1606 + 38 len ceil32(_2597) + 32]
        _2454 = mem[64]
        mem[64] = _1606 + 6
        mem[_1606 + 6] = 32
        _2598 = mem[_2454]
        mem[_1606 + 38] = mem[_2454]
        mem[_1606 + 70 len ceil32(_2598)] = mem[_2454 + 32 len ceil32(_2598)]
        if ceil32(_2598) > _2598:
            mem[_2598 + _1606 + 70] = 0
        return 32, mem[_1606 + 38 len ceil32(_2598) + 32]
    mem[0] = 18
    idx = 0
    s = 0
    while idx < stor18.length.field_1:
        mem[idx + _1438 + 32] = stor18[s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    mem[_1438 + stor18.length.field_1 + 32] = 0x2f00000000000000000000000000000000000000000000000000000000000000
    _2358 = mem[96]
    mem[_1438 + stor18.length.field_1 + 33 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    mem[_2358 + _1438 + stor18.length.field_1 + 33] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
    if ceil32(_2358) <= _2358:
        _3221 = mem[64]
        mem[64] = _2358 + _1438 + stor18.length.field_1 + 38
        mem[_2358 + _1438 + stor18.length.field_1 + 38] = 32
        _3285 = mem[_3221]
        mem[_2358 + _1438 + stor18.length.field_1 + 70] = mem[_3221]
        mem[_2358 + _1438 + stor18.length.field_1 + 102 len ceil32(_3285)] = mem[_3221 + 32 len ceil32(_3285)]
        if ceil32(_3285) > _3285:
            mem[_3285 + _2358 + _1438 + stor18.length.field_1 + 102] = 0
        return 32, mem[_2358 + _1438 + stor18.length.field_1 + 70 len ceil32(_3285) + 32]
    _3222 = mem[64]
    mem[64] = _2358 + _1438 + stor18.length.field_1 + 38
    mem[_2358 + _1438 + stor18.length.field_1 + 38] = 32
    _3286 = mem[_3222]
    mem[_2358 + _1438 + stor18.length.field_1 + 70] = mem[_3222]
    mem[_2358 + _1438 + stor18.length.field_1 + 102 len ceil32(_3286)] = mem[_3222 + 32 len ceil32(_3286)]
    if ceil32(_3286) > _3286:
        mem[_3286 + _2358 + _1438 + stor18.length.field_1 + 102] = 0
    return 32, mem[_2358 + _1438 + stor18.length.field_1 + 70 len ceil32(_3286) + 32]
}



}
