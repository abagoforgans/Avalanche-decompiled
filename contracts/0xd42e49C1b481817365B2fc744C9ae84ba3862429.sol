contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
array of struct sub_e3b43677;
mapping of uint256 sub_76f819ac;
mapping of uint8 stor4;
mapping of struct sub_974af36d;
uint256 stor6;

function sub_5c9418c4(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if arg3 >= sub_e3b43677[address(arg1)][arg2].field_0:
        revert with 0, 50
    return sub_e3b43677[address(arg1)][arg2][arg3].field_0, 
           sub_e3b43677[address(arg1)][arg2][arg3].field_256,
           sub_e3b43677[address(arg1)][arg2][arg3].field_512,
           bool(sub_e3b43677[address(arg1)][arg2][arg3].field_768),
           sub_e3b43677[address(arg1)][arg2][arg3].field_1024,
           bool(sub_e3b43677[address(arg1)][arg2][arg3].field_1280),
           sub_e3b43677[address(arg1)][arg2][arg3].field_1280,
           sub_e3b43677[address(arg1)][arg2][arg3].field_1536,
           bool(sub_e3b43677[address(arg1)][arg2][arg3].field_1792)
}

function supportedTokens(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function sub_70dfaeca(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor1[address(arg1)])
}

function sub_76f819ac(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sub_76f819ac[arg1][arg2]
}

function getListing(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    return sub_974af36d[address(arg1)][arg2].field_0, 
           sub_974af36d[address(arg1)][arg2].field_256,
           sub_974af36d[address(arg1)][arg2].field_512,
           sub_974af36d[address(arg1)][arg2].field_768,
           bool(sub_974af36d[address(arg1)][arg2].field_928)
}

function owner() {
    return owner
}

function sub_974af36d(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_974af36d[arg1][arg2].field_0, 
           sub_974af36d[arg1][arg2].field_256,
           sub_974af36d[arg1][arg2].field_512,
           sub_974af36d[arg1][arg2].field_768,
           bool(sub_974af36d[arg1][arg2].field_928)
}

function sub_a6da0edc(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_e3b43677[address(arg1)][arg2].field_0
}

function sub_b99c4509(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return bool(stor4[arg1][arg2])
}

function isListed(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    return bool(sub_974af36d[address(arg1)][arg2].field_928)
}

function sub_e3b43677(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 < sub_e3b43677[arg1][arg2].field_0
    return sub_e3b43677[arg1][arg2][arg3].field_0, 
           sub_e3b43677[arg1][arg2][arg3].field_256,
           sub_e3b43677[arg1][arg2][arg3].field_512,
           bool(sub_e3b43677[arg1][arg2][arg3].field_768),
           sub_e3b43677[arg1][arg2][arg3].field_1024,
           bool(sub_e3b43677[arg1][arg2][arg3].field_1280),
           sub_e3b43677[arg1][arg2][arg3].field_1280,
           sub_e3b43677[arg1][arg2][arg3].field_1536,
           bool(sub_e3b43677[arg1][arg2][arg3].field_1792)
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    return (0x1ffc9a700000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1))
}

function setBaseFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'FEE CANNOT BE 0'
    stor6 = arg1
}

function getPrice(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not sub_974af36d[address(arg1)][arg2].field_928:
        return 0
    return sub_974af36d[address(arg1)][arg2].field_0
}

function addSupportedToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = 1
    emit 0xe0390a89: arg1
}

function removeSupportedToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = 0
    emit 0xa40d6911: arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_95b330af(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if bool(sub_974af36d[address(arg1)][arg2].field_928) != 1:
        revert with 0, 'NOT LISTED ANYMORE'
    if sub_974af36d[address(arg1)][arg2].field_512 != msg.sender:
        revert with 0, 'NFT IS NOT LISTED BY SNOWFLAKE'
    require ext_code.size(address(arg1))
    call address(arg1).safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor4[address(arg1)][arg2] = 0
    sub_974af36d[address(arg1)][arg2].field_928 = 0
    emit 0x8b0a052b: address(arg1), arg2
}

function sub_0e030d6a(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if arg3 >= sub_e3b43677[address(arg1)][arg2].field_0:
        revert with 0, 50
    if sub_e3b43677[address(arg1)][arg2][arg3].field_1288 != msg.sender:
        revert with 0, 'ONLY OFFERER'
    if arg3 >= sub_e3b43677[address(arg1)][arg2].field_0:
        revert with 0, 50
    if sub_e3b43677[address(arg1)][arg2][arg3].field_768:
        revert with 0, 'OFFER IS EXPIRED'
    if arg3 >= sub_e3b43677[address(arg1)][arg2].field_0:
        revert with 0, 50
    if not sub_e3b43677[address(arg1)][arg2][arg3].field_1280:
        call msg.sender with:
           value sub_e3b43677[address(arg1)][arg2][arg3].field_0 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(sub_e3b43677[address(arg1)][arg2][arg3].field_256)
        call sub_e3b43677[address(arg1)][arg2][arg3].field_256.0xa9059cbb with:
             gas gas_remaining wei
            args sub_e3b43677[address(arg1)][arg2][arg3].field_1280, sub_e3b43677[address(arg1)][arg2][arg3].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'CANNOT REFUND ERC20'
        if sub_76f819ac[stor2[address(arg1)][arg2][arg3].field_256][stor2[address(arg1)][arg2][arg3].field_1280] < sub_e3b43677[address(arg1)][arg2][arg3].field_0:
            revert with 0, 17
        sub_76f819ac[stor2[address(arg1)][arg2][arg3].field_256][stor2[address(arg1)][arg2][arg3].field_1280] -= sub_e3b43677[address(arg1)][arg2][arg3].field_0
    if arg3 >= sub_e3b43677[address(arg1)][arg2].field_0:
        revert with 0, 50
    sub_e3b43677[address(arg1)][arg2][arg3].field_768 = 1
    if arg3 >= sub_e3b43677[address(arg1)][arg2].field_0:
        revert with 0, 50
    sub_e3b43677[address(arg1)][arg2][arg3].field_1024 = block.timestamp
    emit OfferCancelled(address(arg1), arg2, arg3);
}

function sub_3692dea8(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg4 == address(arg4)
    require ext_code.size(address(arg1))
    staticcall address(arg1).supportsInterface(bytes4 rg1) with:
            gas gas_remaining wei
           args 0x1ffc9a700000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'TARGET CONTRACT DOES NOT SUPPORT ERC165-ERC721 INTERFACE'
    require ext_code.size(address(arg1))
    staticcall address(arg1).supportsInterface(bytes4 rg1) with:
            gas gas_remaining wei
           args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'TARGET CONTRACT DOES NOT SUPPORT ERC165-ERC721 INTERFACE'
    require ext_code.size(address(arg1))
    staticcall address(arg1).isApprovedForAll(address rg1, address rg2) with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'NOT APPROVED'
    require ext_code.size(address(arg1))
    staticcall address(arg1).ownerOf(uint256 rg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'TOKEN IS NOT OWNED BY SENDER'
    if arg3 <= 0:
        revert with 0, 'PRICE CANNOT BE 0'
    require ext_code.size(address(arg1))
    call address(arg1).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_974af36d[address(arg1)][arg2].field_0 = arg3
    sub_974af36d[address(arg1)][arg2].field_256 = block.timestamp
    sub_974af36d[address(arg1)][arg2].field_512 = msg.sender
    sub_974af36d[address(arg1)][arg2].field_768 = address(arg4)
    sub_974af36d[address(arg1)][arg2].field_928 = 1
    stor4[address(arg1)][arg2] = 1
    emit 0x4bcad84f: msg.sender, address(arg4), 1, address(arg1), arg2, arg3
}

function buyToken(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if bool(sub_974af36d[address(arg1)][arg2].field_928) != 1:
        revert with 0, 'NOT LISTED ANYMORE'
    if bool(stor4[address(arg1)][arg2]) != 1:
        revert with 0, 'NFT IS NOT OWNED BY SNOWFLAKE'
    if not sub_974af36d[address(arg1)][arg2].field_768:
        if msg.value < sub_974af36d[address(arg1)][arg2].field_0:
            revert with 0, 'DEPOSIT IS NOT ENOUGH'
        if sub_974af36d[address(arg1)][arg2].field_0 and stor6 > -1 / sub_974af36d[address(arg1)][arg2].field_0:
            revert with 0, 17
        if sub_974af36d[address(arg1)][arg2].field_0 < sub_974af36d[address(arg1)][arg2].field_0 * stor6 / 100:
            revert with 0, 17
        call sub_974af36d[address(arg1)][arg2].field_512 with:
           value sub_974af36d[address(arg1)][arg2].field_0 - (sub_974af36d[address(arg1)][arg2].field_0 * stor6 / 100) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call owner with:
           value sub_974af36d[address(arg1)][arg2].field_0 * stor6 / 100 wei
             gas 2300 * is_zero(value) wei
    else:
        if sub_974af36d[address(arg1)][arg2].field_0 and stor6 > -1 / sub_974af36d[address(arg1)][arg2].field_0:
            revert with 0, 17
        if sub_974af36d[address(arg1)][arg2].field_0 < sub_974af36d[address(arg1)][arg2].field_0 * stor6 / 100:
            revert with 0, 17
        require ext_code.size(sub_974af36d[address(arg1)][arg2].field_768)
        staticcall sub_974af36d[address(arg1)][arg2].field_768.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < sub_974af36d[address(arg1)][arg2].field_0:
            revert with 0, 'USER DOES NOT HAVE ENOUGH ERC20 TOKEN BALANCE'
        require ext_code.size(sub_974af36d[address(arg1)][arg2].field_768)
        call sub_974af36d[address(arg1)][arg2].field_768.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, sub_974af36d[address(arg1)][arg2].field_512, sub_974af36d[address(arg1)][arg2].field_0 - (sub_974af36d[address(arg1)][arg2].field_0 * stor6 / 100)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_call.return_data[0]
        require ext_code.size(sub_974af36d[address(arg1)][arg2].field_768)
        call sub_974af36d[address(arg1)][arg2].field_768.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, owner, sub_974af36d[address(arg1)][arg2].field_0 * stor6 / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor4[address(arg1)][arg2] = 0
    sub_974af36d[address(arg1)][arg2].field_928 = 0
    emit 0x8b0a052b: arg1, arg2
    emit 0xda87ba82: msg.sender, sub_974af36d[address(arg1)][arg2].field_768, sub_974af36d[address(arg1)][arg2].field_0, arg1, arg2
}

function acceptOffer(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if sub_974af36d[address(arg1)][arg2].field_512 != msg.sender:
        revert with 0, 'NFT IS NOT LISTED BY SNOWFLAKE'
    if arg3 >= sub_e3b43677[address(arg1)][arg2].field_0:
        revert with 0, 50
    if sub_e3b43677[address(arg1)][arg2][arg3].field_768:
        revert with 0, 'OFFER IS EXPIRED'
    if arg3 >= sub_e3b43677[address(arg1)][arg2].field_0:
        revert with 0, 50
    if sub_e3b43677[address(arg1)][arg2][arg3].field_0 and stor6 > -1 / sub_e3b43677[address(arg1)][arg2][arg3].field_0:
        revert with 0, 17
    if sub_e3b43677[address(arg1)][arg2][arg3].field_0 < sub_e3b43677[address(arg1)][arg2][arg3].field_0 * stor6 / 100:
        revert with 0, 17
    if not sub_e3b43677[address(arg1)][arg2][arg3].field_1280:
        if sub_e3b43677[address(arg1)][arg2][arg3].field_0 and stor6 > -1 / sub_e3b43677[address(arg1)][arg2][arg3].field_0:
            revert with 0, 17
        if sub_e3b43677[address(arg1)][arg2][arg3].field_0 < sub_e3b43677[address(arg1)][arg2][arg3].field_0 * stor6 / 100:
            revert with 0, 17
        call msg.sender with:
           value sub_e3b43677[address(arg1)][arg2][arg3].field_0 - (sub_e3b43677[address(arg1)][arg2][arg3].field_0 * stor6 / 100) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call owner with:
           value sub_e3b43677[address(arg1)][arg2][arg3].field_0 * stor6 / 100 wei
             gas 2300 * is_zero(value) wei
    else:
        if sub_76f819ac[stor2[address(arg1)][arg2][arg3].field_256][stor2[address(arg1)][arg2][arg3].field_1280] < sub_e3b43677[address(arg1)][arg2][arg3].field_0:
            revert with 0, 'ESCROW BALANCE IS NOT ENOUGH'
        require ext_code.size(sub_e3b43677[address(arg1)][arg2][arg3].field_256)
        call sub_e3b43677[address(arg1)][arg2][arg3].field_256.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, sub_e3b43677[address(arg1)][arg2][arg3].field_0 - (sub_e3b43677[address(arg1)][arg2][arg3].field_0 * stor6 / 100)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'CANNOT REFUND ERC20'
        require ext_code.size(sub_e3b43677[address(arg1)][arg2][arg3].field_256)
        call sub_e3b43677[address(arg1)][arg2][arg3].field_256.0xa9059cbb with:
             gas gas_remaining wei
            args owner, sub_e3b43677[address(arg1)][arg2][arg3].field_0 * stor6 / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'CANNOT REFUND ERC20'
        if sub_76f819ac[stor2[address(arg1)][arg2][arg3].field_256][stor2[address(arg1)][arg2][arg3].field_1280] < sub_e3b43677[address(arg1)][arg2][arg3].field_0:
            revert with 0, 17
        sub_76f819ac[stor2[address(arg1)][arg2][arg3].field_256][stor2[address(arg1)][arg2][arg3].field_1280] -= sub_e3b43677[address(arg1)][arg2][arg3].field_0
    if arg3 >= sub_e3b43677[address(arg1)][arg2].field_0:
        revert with 0, 50
    sub_e3b43677[address(arg1)][arg2][arg3].field_768 = 1
    if arg3 >= sub_e3b43677[address(arg1)][arg2].field_0:
        revert with 0, 50
    sub_e3b43677[address(arg1)][arg2][arg3].field_1792 = 1
    if arg3 >= sub_e3b43677[address(arg1)][arg2].field_0:
        revert with 0, 50
    sub_e3b43677[address(arg1)][arg2][arg3].field_1024 = block.timestamp
    require ext_code.size(arg1)
    call arg1.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args address(this.address), sub_e3b43677[address(arg1)][arg2][arg3].field_1280, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor4[address(arg1)][arg2] = 0
    sub_974af36d[address(arg1)][arg2].field_928 = 0
    emit 0x8b0a052b: arg1, arg2
    emit OfferAccepted(arg1, arg2, arg3);
    emit 0xda87ba82: msg.sender, sub_e3b43677[address(arg1)][arg2][arg3].field_256, sub_e3b43677[address(arg1)][arg2][arg3].field_0, arg1, arg2
}

function sub_666f4f16(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    require ext_code.size(address(arg1))
    staticcall address(arg1).supportsInterface(bytes4 rg1) with:
            gas gas_remaining wei
           args 0x1ffc9a700000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'TARGET CONTRACT DOES NOT SUPPORT ERC165-ERC721 INTERFACE'
    require ext_code.size(address(arg1))
    staticcall address(arg1).supportsInterface(bytes4 rg1) with:
            gas gas_remaining wei
           args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'TARGET CONTRACT DOES NOT SUPPORT ERC165-ERC721 INTERFACE'
    if bool(sub_974af36d[address(arg1)][arg2].field_928) != 1:
        revert with 0, 'NOT LISTED ANYMORE'
    if bool(stor1[address(arg3)]) != 1:
        revert with 0, 'THIS ERC20 TOKEN IS NOT SUPPORTED'
    if not address(arg3):
        if msg.value <= 0:
            revert with 0, 'CANNOT OFFER ZERO AVAX'
        if 1 > !sub_e3b43677[address(arg1)][arg2].field_0:
            revert with 0, 17
        sub_e3b43677[address(arg1)][arg2].field_0++
        sub_e3b43677[address(arg1)][arg2][sub_e3b43677[address(arg1)][arg2].field_0].field_0 = msg.value
        sub_e3b43677[address(arg1)][arg2][sub_e3b43677[address(arg1)][arg2].field_0].field_256 = 0
        sub_e3b43677[address(arg1)][arg2][sub_e3b43677[address(arg1)][arg2].field_0].field_512 = 0
        sub_e3b43677[address(arg1)][arg2][sub_e3b43677[address(arg1)][arg2].field_0].field_512 = block.timestamp
        sub_e3b43677[address(arg1)][arg2][sub_e3b43677[address(arg1)][arg2].field_0].field_768 = 0
        sub_e3b43677[address(arg1)][arg2][sub_e3b43677[address(arg1)][arg2].field_0].field_1024 = 0
        sub_e3b43677[address(arg1)][arg2][sub_e3b43677[address(arg1)][arg2].field_0].field_1280 = 0
        sub_e3b43677[address(arg1)][arg2][sub_e3b43677[address(arg1)][arg2].field_0].field_1288 = msg.sender
        sub_e3b43677[address(arg1)][arg2][sub_e3b43677[address(arg1)][arg2].field_0].field_1536 = sub_e3b43677[address(arg1)][arg2].field_0 + 1
        sub_e3b43677[address(arg1)][arg2][sub_e3b43677[address(arg1)][arg2].field_0].field_1792 = 0
        emit 0x3c379b7a: msg.value, 0, 0, 0, 0, msg.sender, address(arg1), arg2, sub_e3b43677[address(arg1)][arg2].field_0
    else:
        if arg4 <= 0:
            revert with 0, 'AMOUNT CANNOT BE 0'
        require ext_code.size(address(arg3))
        staticcall address(arg3).0xdd62ed3e with:
                gas gas_remaining wei
               args msg.sender, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg4:
            revert with 0, 'NOT ALLOWED TO MOVE TOKENS. PLEASE APPROVE FIRST.'
        require ext_code.size(address(arg3))
        call address(arg3).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'CANNOT TRANSFER ERC20 TOKENS.'
        if sub_76f819ac[address(arg3)][msg.sender] > !arg4:
            revert with 0, 17
        sub_76f819ac[address(arg3)][msg.sender] += arg4
        if 1 > !sub_e3b43677[address(arg1)][arg2].field_0:
            revert with 0, 17
        sub_e3b43677[address(arg1)][arg2].field_0++
        sub_e3b43677[address(arg1)][arg2][sub_e3b43677[address(arg1)][arg2].field_0].field_0 = arg4
        sub_e3b43677[address(arg1)][arg2][sub_e3b43677[address(arg1)][arg2].field_0].field_256 = address(arg3)
        sub_e3b43677[address(arg1)][arg2][sub_e3b43677[address(arg1)][arg2].field_0].field_512 = block.timestamp
        sub_e3b43677[address(arg1)][arg2][sub_e3b43677[address(arg1)][arg2].field_0].field_768 = 0
        sub_e3b43677[address(arg1)][arg2][sub_e3b43677[address(arg1)][arg2].field_0].field_1024 = 0
        sub_e3b43677[address(arg1)][arg2][sub_e3b43677[address(arg1)][arg2].field_0].field_1280 = 1
        sub_e3b43677[address(arg1)][arg2][sub_e3b43677[address(arg1)][arg2].field_0].field_1288 = msg.sender
        sub_e3b43677[address(arg1)][arg2][sub_e3b43677[address(arg1)][arg2].field_0].field_1536 = sub_e3b43677[address(arg1)][arg2].field_0 + 1
        sub_e3b43677[address(arg1)][arg2][sub_e3b43677[address(arg1)][arg2].field_0].field_1792 = 0
        emit 0x3c379b7a: arg4, address(arg3), 0, 0, 0, msg.sender, address(arg1), arg2, sub_e3b43677[address(arg1)][arg2].field_0
}

function getOffers(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    mem[0] = arg2
    mem[32] = sha3(address(arg1), 2)
    if sub_e3b43677[address(arg1)][arg2].field_0 > test266151307():
        revert with 0, 65
    mem[96] = sub_e3b43677[address(arg1)][arg2].field_0
    mem[64] = (32 * sub_e3b43677[address(arg1)][arg2].field_0) + 128
    if not sub_e3b43677[address(arg1)][arg2].field_0:
        idx = 0
        while idx < sub_e3b43677[address(arg1)][arg2].field_0:
            mem[32] = sha3(address(arg1), 2)
            if idx >= sub_e3b43677[address(arg1)][arg2].field_0:
                revert with 0, 50
            mem[0] = sha3(arg2, sha3(address(arg1), 2))
            _46 = mem[64]
            mem[64] = mem[64] + 288
            mem[_46] = sub_e3b43677[address(arg1)][arg2][idx].field_0
            mem[_46 + 32] = sub_e3b43677[address(arg1)][arg2][idx].field_256
            mem[_46 + 64] = sub_e3b43677[address(arg1)][arg2][idx].field_512
            mem[_46 + 96] = bool(sub_e3b43677[address(arg1)][arg2][idx].field_768)
            mem[_46 + 128] = sub_e3b43677[address(arg1)][arg2][idx].field_1024
            mem[_46 + 160] = bool(sub_e3b43677[address(arg1)][arg2][idx].field_1280)
            mem[_46 + 192] = sub_e3b43677[address(arg1)][arg2][idx].field_1288
            mem[_46 + 224] = sub_e3b43677[address(arg1)][arg2][idx].field_1536
            mem[_46 + 256] = bool(sub_e3b43677[address(arg1)][arg2][idx].field_1792)
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _46
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _44 = mem[64]
        mem[mem[64]] = 32
        _48 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _48:
            _79 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_79 + 44 len 20]
            mem[s + 64] = mem[_79 + 64]
            mem[s + 96] = bool(mem[_79 + 96])
            mem[s + 128] = mem[_79 + 128]
            mem[s + 160] = bool(mem[_79 + 160])
            mem[s + 192] = mem[_79 + 204 len 20]
            mem[s + 224] = mem[_79 + 224]
            mem[s + 256] = bool(mem[_79 + 256])
            idx = idx + 1
            s = s + 288
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _44 + (288 * _48) + -mem[64] + 64
    mem[64] = (32 * sub_e3b43677[address(arg1)][arg2].field_0) + 416
    mem[(32 * sub_e3b43677[address(arg1)][arg2].field_0) + 128] = 0
    mem[(32 * sub_e3b43677[address(arg1)][arg2].field_0) + 160] = 0
    mem[(32 * sub_e3b43677[address(arg1)][arg2].field_0) + 192] = 0
    mem[(32 * sub_e3b43677[address(arg1)][arg2].field_0) + 224] = 0
    mem[(32 * sub_e3b43677[address(arg1)][arg2].field_0) + 256] = 0
    mem[(32 * sub_e3b43677[address(arg1)][arg2].field_0) + 288] = 0
    mem[(32 * sub_e3b43677[address(arg1)][arg2].field_0) + 320] = 0
    mem[(32 * sub_e3b43677[address(arg1)][arg2].field_0) + 352] = 0
    mem[(32 * sub_e3b43677[address(arg1)][arg2].field_0) + 384] = 0
    mem[var17001] = (32 * sub_e3b43677[address(arg1)][arg2].field_0) + 128
    s = var17001
    idx = var17002
    while idx - 1:
        mem[64] = mem[64] + 288
        mem[(32 * sub_e3b43677[address(arg1)][arg2].field_0) + 128] = 0
        mem[(32 * sub_e3b43677[address(arg1)][arg2].field_0) + 160] = 0
        mem[(32 * sub_e3b43677[address(arg1)][arg2].field_0) + 192] = 0
        mem[(32 * sub_e3b43677[address(arg1)][arg2].field_0) + 224] = 0
        mem[(32 * sub_e3b43677[address(arg1)][arg2].field_0) + 256] = 0
        mem[(32 * sub_e3b43677[address(arg1)][arg2].field_0) + 288] = 0
        mem[(32 * sub_e3b43677[address(arg1)][arg2].field_0) + 320] = 0
        mem[(32 * sub_e3b43677[address(arg1)][arg2].field_0) + 352] = 0
        mem[(32 * sub_e3b43677[address(arg1)][arg2].field_0) + 384] = 0
        mem[s + 32] = (32 * sub_e3b43677[address(arg1)][arg2].field_0) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < sub_e3b43677[address(arg1)][arg2].field_0:
        mem[32] = sha3(address(arg1), 2)
        if idx >= sub_e3b43677[address(arg1)][arg2].field_0:
            revert with 0, 50
        mem[0] = sha3(arg2, sha3(address(arg1), 2))
        _112 = mem[64]
        mem[64] = mem[64] + 288
        mem[_112] = sub_e3b43677[address(arg1)][arg2][idx].field_0
        mem[_112 + 32] = sub_e3b43677[address(arg1)][arg2][idx].field_256
        mem[_112 + 64] = sub_e3b43677[address(arg1)][arg2][idx].field_512
        mem[_112 + 96] = bool(sub_e3b43677[address(arg1)][arg2][idx].field_768)
        mem[_112 + 128] = sub_e3b43677[address(arg1)][arg2][idx].field_1024
        mem[_112 + 160] = bool(sub_e3b43677[address(arg1)][arg2][idx].field_1280)
        mem[_112 + 192] = sub_e3b43677[address(arg1)][arg2][idx].field_1288
        mem[_112 + 224] = sub_e3b43677[address(arg1)][arg2][idx].field_1536
        mem[_112 + 256] = bool(sub_e3b43677[address(arg1)][arg2][idx].field_1792)
        if idx >= mem[96]:
            revert with 0, 50
        mem[(32 * idx) + 128] = _112
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _110 = mem[64]
    mem[mem[64]] = 32
    _114 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < _114:
        _126 = mem[t]
        mem[s] = mem[mem[t]]
        mem[s + 32] = mem[_126 + 44 len 20]
        mem[s + 64] = mem[_126 + 64]
        mem[s + 96] = bool(mem[_126 + 96])
        mem[s + 128] = mem[_126 + 128]
        mem[s + 160] = bool(mem[_126 + 160])
        mem[s + 192] = mem[_126 + 204 len 20]
        mem[s + 224] = mem[_126 + 224]
        mem[s + 256] = bool(mem[_126 + 256])
        idx = idx + 1
        s = s + 288
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _110 + (288 * _114) + -mem[64] + 64
}



}
