contract main {




// =====================  Runtime code  =====================


const name = 'Fisherman's Marketplace', 0


address owner;
array of struct listings;
mapping of uint8 stor2;
uint256 feePercent;

function feePercent() {
    return feePercent
}

function sub_87cac475(?) {
    return listings.length
}

function owner() {
    return owner
}

function listings(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < listings.length
    return listings[arg1].field_0, 
           listings[arg1].field_256,
           listings[arg1].field_512,
           listings[arg1].field_768,
           listings[arg1].field_1024,
           listings[arg1].field_1280,
           listings[arg1].field_1536,
           bool(listings[arg1].field_1792)
}

function tokens(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[arg1])
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

function addToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor2[address(arg1)]:
        revert with 0, 'Token Already Listed'
    stor2[address(arg1)] = 1
    emit TokenAdded(arg1);
}

function removeToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor2[address(arg1)]:
        revert with 0, 'Token Not Listed'
    stor2[address(arg1)] = 0
    emit TokenRemoved(arg1);
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) <= 0:
        revert with 0, 'Amount Insufficient'
    call owner with:
       value eth.balance(this.address) wei
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

function onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xf23a6e6100000000000000000000000000000000000000000000000000000000
}

function sub_edebf26a(?) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == arg3
    if arg1 >= listings.length:
        revert with 0, 'Invalid Listing'
    if listings[arg1].field_256 != msg.sender:
        revert with 0, 'Invalid User'
    if not stor2[address(arg2)]:
        revert with 0, 'Invalid Token'
    require arg1 < listings.length
    listings[arg1].field_1280 = address(arg2)
    listings[arg1].field_1536 = arg3
    emit 0xf3019509: listings[arg1].field_0, listings[arg1].field_256, listings[arg1].field_512, listings[arg1].field_768, listings[arg1].field_1024, listings[arg1].field_1280, listings[arg1].field_1536, bool(listings[arg1].field_1792)
}

function sub_d0bad18a(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x6352211e with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Invalid Token'
    require ext_code.size(address(arg1))
    call address(arg1).0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f2fea0d1(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Amount Insufficient'
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_d7096fee(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == address(arg3)
    require arg4 == arg4
    require ext_code.size(address(arg1))
    call address(arg1).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not stor2[address(arg3)]:
        revert with 0, 'Invalid Token'
    listings.length++
    listings[listings.length].field_0 = listings.length
    listings[listings.length].field_256 = msg.sender
    listings[listings.length].field_512 = address(arg1)
    listings[listings.length].field_768 = arg2
    listings[listings.length].field_1024 = 1
    listings[listings.length].field_1280 = address(arg3)
    listings[listings.length].field_1536 = arg4
    listings[listings.length].field_1792 = 1
    emit 0xe664ab50: listings.length, msg.sender, address(arg1), arg2, 1, address(arg3), arg4, 1
}

function sub_78d66fc0(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    staticcall address(arg1).balanceOf(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg3:
        revert with 0, 'Invalid Token'
    if arg3 <= 0:
        revert with 0, 'Amount Insufficient'
    require ext_code.size(address(arg1))
    call address(arg1).safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg2, arg3, Array(len=4, data='0x03')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_59dbd4d2(?) {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == address(arg4)
    require arg5 == arg5
    require ext_code.size(address(arg1))
    call address(arg1).safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), address(this.address), arg2, arg3, 160, 4, '0x00'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not stor2[address(arg4)]:
        revert with 0, 'Invalid Token'
    listings.length++
    listings[listings.length].field_0 = listings.length
    listings[listings.length].field_256 = msg.sender
    listings[listings.length].field_512 = address(arg1)
    listings[listings.length].field_768 = arg2
    listings[listings.length].field_1024 = arg3
    listings[listings.length].field_1280 = address(arg4)
    listings[listings.length].field_1536 = arg5
    listings[listings.length].field_1792 = 0
    emit 0xe664ab50: listings.length, msg.sender, address(arg1), arg2, arg3, address(arg4), arg5, 0
}

function cancelListing(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= listings.length:
        revert with 0, 'Invalid Listing'
    if listings[arg1].field_256 != msg.sender:
        revert with 0, 'Invalid User'
    require arg1 < listings.length
    if listings[arg1].field_1024 <= 0:
        revert with 0, 'Listing Fulfilled'
    require arg1 < listings.length
    require arg1 < listings.length
    listings[arg1].field_1024 = 0
    require ext_code.size(listings[arg1].field_512)
    if not listings[arg1].field_1792:
        call listings[arg1].field_512.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
             gas gas_remaining wei
            args 0, 0, msg.sender, listings[arg1].field_768, listings[arg1].field_1024, 160, 4, '0x02'
    else:
        call listings[arg1].field_512.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), msg.sender, listings[arg1].field_768
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg1 < listings.length
    emit 0xca150d47: listings[arg1].field_0, listings[arg1].field_256, listings[arg1].field_512, listings[arg1].field_768, listings[arg1].field_1024, listings[arg1].field_1280, listings[arg1].field_1536, bool(listings[arg1].field_1792)
}

function onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require (32 * arg3.length) + 128 <= test266151307() and (32 * arg3.length) + 128 >= 96
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = 128
    while idx < arg3.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require (32 * arg3.length) + (32 * arg4.length) + 160 <= test266151307() and (32 * arg4.length) + 160 >= 128
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    idx = 0
    s = arg4 + 36
    t = (32 * arg3.length) + 160
    while idx < arg4.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require (32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 192 <= test266151307() and ceil32(arg5.length) + 192 >= 160
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xf23a6e6100000000000000000000000000000000000000000000000000000000
}

function sub_4d292d57(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= listings.length:
        revert with 0, 'Invalid Listing'
    if listings[arg1].field_1024 <= 0:
        revert with 0, 'Amount Insufficient'
    require arg1 < listings.length
    if feePercent <= 0:
        if not listings[arg1].field_1280:
            if msg.value < listings[arg1].field_1536:
                revert with 0, 'Value Insufficient'
            require arg1 < listings.length
            call listings[arg1].field_256 with:
               value listings[arg1].field_1536 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require arg1 < listings.length
            require ext_code.size(listings[arg1].field_1280)
            call listings[arg1].field_1280.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, listings[arg1].field_256, listings[arg1].field_1536
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        if not listings[arg1].field_1280:
            if msg.value < (100 * listings[arg1].field_1536) - (feePercent * listings[arg1].field_1536):
                revert with 0, 'Value Insufficient'
            require arg1 < listings.length
            call listings[arg1].field_256 with:
               value (100 * listings[arg1].field_1536) - (feePercent * listings[arg1].field_1536) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require arg1 < listings.length
            require ext_code.size(listings[arg1].field_1280)
            call listings[arg1].field_1280.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, listings[arg1].field_256, (100 * listings[arg1].field_1536) - (feePercent * listings[arg1].field_1536)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require arg1 < listings.length
    require ext_code.size(listings[arg1].field_512)
    call listings[arg1].field_512.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, listings[arg1].field_768
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg1 < listings.length
    listings[arg1].field_1024--
    require arg1 < listings.length
    if listings[arg1].field_1024:
        emit 0xf3019509: listings[arg1].field_0, listings[arg1].field_256, listings[arg1].field_512, listings[arg1].field_768, listings[arg1].field_1024, listings[arg1].field_1280, listings[arg1].field_1536, bool(listings[arg1].field_1792)
    else:
        emit 0x1d2f65cb: listings[arg1].field_0, listings[arg1].field_256, listings[arg1].field_512, listings[arg1].field_768, listings[arg1].field_1024, listings[arg1].field_1280, listings[arg1].field_1536, bool(listings[arg1].field_1792)
}

function sub_094dabd4(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 >= listings.length:
        revert with 0, 'Invalid Listing'
    if listings[arg1].field_1024 < arg2:
        revert with 0, 'Amount Insufficient'
    require arg1 < listings.length
    if feePercent <= 0:
        if not listings[arg1].field_1280:
            if msg.value < listings[arg1].field_1536 * arg2:
                revert with 0, 'Value Insufficient'
            require arg1 < listings.length
            call listings[arg1].field_256 with:
               value listings[arg1].field_1536 * arg2 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require arg1 < listings.length
            require ext_code.size(listings[arg1].field_512)
            call listings[arg1].field_512.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                 gas gas_remaining wei
                args 0, 0, msg.sender, listings[arg1].field_768, arg2, 160, 4, '0x01'
        else:
            require arg1 < listings.length
            require ext_code.size(listings[arg1].field_1280)
            call listings[arg1].field_1280.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, listings[arg1].field_256, listings[arg1].field_1536 * arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require arg1 < listings.length
            require ext_code.size(listings[arg1].field_512)
            call listings[arg1].field_512.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                 gas gas_remaining wei
                args address(this.address), msg.sender, listings[arg1].field_768, arg2, Array(len=4, data='0x01')
    else:
        if not listings[arg1].field_1280:
            if msg.value < (100 * listings[arg1].field_1536 * arg2) - (feePercent * listings[arg1].field_1536 * arg2):
                revert with 0, 'Value Insufficient'
            require arg1 < listings.length
            call listings[arg1].field_256 with:
               value (100 * listings[arg1].field_1536 * arg2) - (feePercent * listings[arg1].field_1536 * arg2) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require arg1 < listings.length
            require ext_code.size(listings[arg1].field_512)
            call listings[arg1].field_512.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                 gas gas_remaining wei
                args 0, 0, msg.sender, listings[arg1].field_768, arg2, 160, 4, '0x01'
        else:
            require arg1 < listings.length
            require ext_code.size(listings[arg1].field_1280)
            call listings[arg1].field_1280.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, listings[arg1].field_256, (100 * listings[arg1].field_1536 * arg2) - (feePercent * listings[arg1].field_1536 * arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require arg1 < listings.length
            require ext_code.size(listings[arg1].field_512)
            call listings[arg1].field_512.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                 gas gas_remaining wei
                args address(this.address), msg.sender, listings[arg1].field_768, arg2, Array(len=4, data='0x01')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg1 < listings.length
    listings[arg1].field_1024 -= arg2
    require arg1 < listings.length
    if listings[arg1].field_1024:
        emit 0xf3019509: listings[arg1].field_0, listings[arg1].field_256, listings[arg1].field_512, listings[arg1].field_768, listings[arg1].field_1024, listings[arg1].field_1280, listings[arg1].field_1536, bool(listings[arg1].field_1792)
    else:
        emit 0x1d2f65cb: listings[arg1].field_0, listings[arg1].field_256, listings[arg1].field_512, listings[arg1].field_768, listings[arg1].field_1024, listings[arg1].field_1280, listings[arg1].field_1536, bool(listings[arg1].field_1792)
}



}
