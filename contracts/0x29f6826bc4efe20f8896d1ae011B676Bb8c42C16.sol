contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 stor1;
address stor2;
address stor3;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_29608bb1(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function elkCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg4.length >= 32
    require ext_code.size(0x7f90122bf0700f9e7e1f688fe926940e8839f353)
    if not arg2:
        call 0x7f90122bf0700f9e7e1f688fe926940e8839f353.exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor1', 1)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor1', 1)))))), arg3, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= mem[128]:
            revert with 0, 'not enough to repay'
        require ext_code.size(stor2)
        call stor2.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, mem[128]
    else:
        call 0x7f90122bf0700f9e7e1f688fe926940e8839f353.exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor1', 1)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor1', 1)))))), arg2, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= mem[128]:
            revert with 0, 'not enough to repay'
        require ext_code.size(stor3)
        call stor3.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, mem[128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function apeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg4.length >= 32
    require ext_code.size(0x7f90122bf0700f9e7e1f688fe926940e8839f353)
    if not arg2:
        call 0x7f90122bf0700f9e7e1f688fe926940e8839f353.exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor1', 1)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor1', 1)))))), arg3, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= mem[128]:
            revert with 0, 'not enough to repay'
        require ext_code.size(stor2)
        call stor2.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, mem[128]
    else:
        call 0x7f90122bf0700f9e7e1f688fe926940e8839f353.exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor1', 1)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor1', 1)))))), arg2, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= mem[128]:
            revert with 0, 'not enough to repay'
        require ext_code.size(stor3)
        call stor3.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, mem[128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg4.length >= 32
    require ext_code.size(0x7f90122bf0700f9e7e1f688fe926940e8839f353)
    if not arg2:
        call 0x7f90122bf0700f9e7e1f688fe926940e8839f353.exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor1', 1)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor1', 1)))))), arg3, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= mem[128]:
            revert with 0, 'not enough to repay'
        require ext_code.size(stor2)
        call stor2.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, mem[128]
    else:
        call 0x7f90122bf0700f9e7e1f688fe926940e8839f353.exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor1', 1)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor1', 1)))))), arg2, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= mem[128]:
            revert with 0, 'not enough to repay'
        require ext_code.size(stor3)
        call stor3.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, mem[128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function babyCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg4.length >= 32
    require ext_code.size(0x7f90122bf0700f9e7e1f688fe926940e8839f353)
    if not arg2:
        call 0x7f90122bf0700f9e7e1f688fe926940e8839f353.exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor1', 1)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor1', 1)))))), arg3, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= mem[128]:
            revert with 0, 'not enough to repay'
        require ext_code.size(stor2)
        call stor2.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, mem[128]
    else:
        call 0x7f90122bf0700f9e7e1f688fe926940e8839f353.exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor1', 1)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor1', 1)))))), arg2, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= mem[128]:
            revert with 0, 'not enough to repay'
        require ext_code.size(stor3)
        call stor3.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, mem[128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function cafeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg4.length >= 32
    require ext_code.size(0x7f90122bf0700f9e7e1f688fe926940e8839f353)
    if not arg2:
        call 0x7f90122bf0700f9e7e1f688fe926940e8839f353.exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor1', 1)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor1', 1)))))), arg3, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= mem[128]:
            revert with 0, 'not enough to repay'
        require ext_code.size(stor2)
        call stor2.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, mem[128]
    else:
        call 0x7f90122bf0700f9e7e1f688fe926940e8839f353.exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor1', 1)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor1', 1)))))), arg2, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= mem[128]:
            revert with 0, 'not enough to repay'
        require ext_code.size(stor3)
        call stor3.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, mem[128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function shibaCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg4.length >= 32
    require ext_code.size(0x7f90122bf0700f9e7e1f688fe926940e8839f353)
    if not arg2:
        call 0x7f90122bf0700f9e7e1f688fe926940e8839f353.exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor1', 1)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor1', 1)))))), arg3, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= mem[128]:
            revert with 0, 'not enough to repay'
        require ext_code.size(stor2)
        call stor2.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, mem[128]
    else:
        call 0x7f90122bf0700f9e7e1f688fe926940e8839f353.exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor1', 1)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor1', 1)))))), arg2, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= mem[128]:
            revert with 0, 'not enough to repay'
        require ext_code.size(stor3)
        call stor3.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, mem[128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function lydiaCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg4.length >= 32
    require ext_code.size(0x7f90122bf0700f9e7e1f688fe926940e8839f353)
    if not arg2:
        call 0x7f90122bf0700f9e7e1f688fe926940e8839f353.exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor1', 1)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor1', 1)))))), arg3, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= mem[128]:
            revert with 0, 'not enough to repay'
        require ext_code.size(stor2)
        call stor2.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, mem[128]
    else:
        call 0x7f90122bf0700f9e7e1f688fe926940e8839f353.exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor1', 1)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor1', 1)))))), arg2, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= mem[128]:
            revert with 0, 'not enough to repay'
        require ext_code.size(stor3)
        call stor3.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, mem[128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function canaryCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg4.length >= 32
    require ext_code.size(0x7f90122bf0700f9e7e1f688fe926940e8839f353)
    if not arg2:
        call 0x7f90122bf0700f9e7e1f688fe926940e8839f353.exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor1', 1)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor1', 1)))))), arg3, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= mem[128]:
            revert with 0, 'not enough to repay'
        require ext_code.size(stor2)
        call stor2.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, mem[128]
    else:
        call 0x7f90122bf0700f9e7e1f688fe926940e8839f353.exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor1', 1)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor1', 1)))))), arg2, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= mem[128]:
            revert with 0, 'not enough to repay'
        require ext_code.size(stor3)
        call stor3.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, mem[128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function BiswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg4.length >= 32
    require ext_code.size(0x7f90122bf0700f9e7e1f688fe926940e8839f353)
    if not arg2:
        call 0x7f90122bf0700f9e7e1f688fe926940e8839f353.exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor1', 1)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor1', 1)))))), arg3, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= mem[128]:
            revert with 0, 'not enough to repay'
        require ext_code.size(stor2)
        call stor2.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, mem[128]
    else:
        call 0x7f90122bf0700f9e7e1f688fe926940e8839f353.exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor1', 1)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor1', 1)))))), arg2, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= mem[128]:
            revert with 0, 'not enough to repay'
        require ext_code.size(stor3)
        call stor3.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, mem[128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function swapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg4.length >= 32
    require ext_code.size(0x7f90122bf0700f9e7e1f688fe926940e8839f353)
    if not arg2:
        call 0x7f90122bf0700f9e7e1f688fe926940e8839f353.exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor1', 1)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor1', 1)))))), arg3, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= mem[128]:
            revert with 0, 'not enough to repay'
        require ext_code.size(stor2)
        call stor2.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, mem[128]
    else:
        call 0x7f90122bf0700f9e7e1f688fe926940e8839f353.exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor1', 1)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor1', 1)))))), arg2, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= mem[128]:
            revert with 0, 'not enough to repay'
        require ext_code.size(stor3)
        call stor3.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, mem[128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function planetCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg4.length >= 32
    require ext_code.size(0x7f90122bf0700f9e7e1f688fe926940e8839f353)
    if not arg2:
        call 0x7f90122bf0700f9e7e1f688fe926940e8839f353.exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor1', 1)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor1', 1)))))), arg3, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= mem[128]:
            revert with 0, 'not enough to repay'
        require ext_code.size(stor2)
        call stor2.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, mem[128]
    else:
        call 0x7f90122bf0700f9e7e1f688fe926940e8839f353.exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor1', 1)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor1', 1)))))), arg2, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= mem[128]:
            revert with 0, 'not enough to repay'
        require ext_code.size(stor3)
        call stor3.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, mem[128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function pantherCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg4.length >= 32
    require ext_code.size(0x7f90122bf0700f9e7e1f688fe926940e8839f353)
    if not arg2:
        call 0x7f90122bf0700f9e7e1f688fe926940e8839f353.exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor1', 1)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor1', 1)))))), arg3, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= mem[128]:
            revert with 0, 'not enough to repay'
        require ext_code.size(stor2)
        call stor2.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, mem[128]
    else:
        call 0x7f90122bf0700f9e7e1f688fe926940e8839f353.exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor1', 1)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor1', 1)))))), arg2, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= mem[128]:
            revert with 0, 'not enough to repay'
        require ext_code.size(stor3)
        call stor3.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, mem[128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function polydexCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg4.length >= 32
    require ext_code.size(0x7f90122bf0700f9e7e1f688fe926940e8839f353)
    if not arg2:
        call 0x7f90122bf0700f9e7e1f688fe926940e8839f353.exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor1', 1)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor1', 1)))))), arg3, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= mem[128]:
            revert with 0, 'not enough to repay'
        require ext_code.size(stor2)
        call stor2.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, mem[128]
    else:
        call 0x7f90122bf0700f9e7e1f688fe926940e8839f353.exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor1', 1)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor1', 1)))))), arg2, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= mem[128]:
            revert with 0, 'not enough to repay'
        require ext_code.size(stor3)
        call stor3.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, mem[128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function jetswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg4.length >= 32
    require ext_code.size(0x7f90122bf0700f9e7e1f688fe926940e8839f353)
    if not arg2:
        call 0x7f90122bf0700f9e7e1f688fe926940e8839f353.exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor1', 1)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor1', 1)))))), arg3, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= mem[128]:
            revert with 0, 'not enough to repay'
        require ext_code.size(stor2)
        call stor2.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, mem[128]
    else:
        call 0x7f90122bf0700f9e7e1f688fe926940e8839f353.exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor1', 1)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor1', 1)))))), arg2, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= mem[128]:
            revert with 0, 'not enough to repay'
        require ext_code.size(stor3)
        call stor3.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, mem[128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function stableXCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg4.length >= 32
    require ext_code.size(0x7f90122bf0700f9e7e1f688fe926940e8839f353)
    if not arg2:
        call 0x7f90122bf0700f9e7e1f688fe926940e8839f353.exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor1', 1)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor1', 1)))))), arg3, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= mem[128]:
            revert with 0, 'not enough to repay'
        require ext_code.size(stor2)
        call stor2.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, mem[128]
    else:
        call 0x7f90122bf0700f9e7e1f688fe926940e8839f353.exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor1', 1)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor1', 1)))))), arg2, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= mem[128]:
            revert with 0, 'not enough to repay'
        require ext_code.size(stor3)
        call stor3.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, mem[128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function BSCswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg4.length >= 32
    require ext_code.size(0x7f90122bf0700f9e7e1f688fe926940e8839f353)
    if not arg2:
        call 0x7f90122bf0700f9e7e1f688fe926940e8839f353.exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor1', 1)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor1', 1)))))), arg3, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= mem[128]:
            revert with 0, 'not enough to repay'
        require ext_code.size(stor2)
        call stor2.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, mem[128]
    else:
        call 0x7f90122bf0700f9e7e1f688fe926940e8839f353.exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor1', 1)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor1', 1)))))), arg2, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= mem[128]:
            revert with 0, 'not enough to repay'
        require ext_code.size(stor3)
        call stor3.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, mem[128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg4.length >= 32
    require ext_code.size(0x7f90122bf0700f9e7e1f688fe926940e8839f353)
    if not arg2:
        call 0x7f90122bf0700f9e7e1f688fe926940e8839f353.exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor1', 1)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor1', 1)))))), arg3, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= mem[128]:
            revert with 0, 'not enough to repay'
        require ext_code.size(stor2)
        call stor2.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, mem[128]
    else:
        call 0x7f90122bf0700f9e7e1f688fe926940e8839f353.exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor1', 1)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor1', 1)))))), arg2, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= mem[128]:
            revert with 0, 'not enough to repay'
        require ext_code.size(stor3)
        call stor3.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, mem[128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function coinswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg4.length >= 32
    require ext_code.size(0x7f90122bf0700f9e7e1f688fe926940e8839f353)
    if not arg2:
        call 0x7f90122bf0700f9e7e1f688fe926940e8839f353.exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor1', 1)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor1', 1)))))), arg3, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= mem[128]:
            revert with 0, 'not enough to repay'
        require ext_code.size(stor2)
        call stor2.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, mem[128]
    else:
        call 0x7f90122bf0700f9e7e1f688fe926940e8839f353.exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor1', 1)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor1', 1)))))), arg2, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= mem[128]:
            revert with 0, 'not enough to repay'
        require ext_code.size(stor3)
        call stor3.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, mem[128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function baguetteCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg4.length >= 32
    require ext_code.size(0x7f90122bf0700f9e7e1f688fe926940e8839f353)
    if not arg2:
        call 0x7f90122bf0700f9e7e1f688fe926940e8839f353.exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor1', 1)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor1', 1)))))), arg3, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= mem[128]:
            revert with 0, 'not enough to repay'
        require ext_code.size(stor2)
        call stor2.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, mem[128]
    else:
        call 0x7f90122bf0700f9e7e1f688fe926940e8839f353.exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor1', 1)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor1', 1)))))), arg2, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= mem[128]:
            revert with 0, 'not enough to repay'
        require ext_code.size(stor3)
        call stor3.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, mem[128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function yetiswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg4.length >= 32
    require ext_code.size(0x7f90122bf0700f9e7e1f688fe926940e8839f353)
    if not arg2:
        call 0x7f90122bf0700f9e7e1f688fe926940e8839f353.exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor1', 1)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor1', 1)))))), arg3, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= mem[128]:
            revert with 0, 'not enough to repay'
        require ext_code.size(stor2)
        call stor2.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, mem[128]
    else:
        call 0x7f90122bf0700f9e7e1f688fe926940e8839f353.exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor1', 1)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor1', 1)))))), arg2, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= mem[128]:
            revert with 0, 'not enough to repay'
        require ext_code.size(stor3)
        call stor3.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, mem[128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg4.length >= 32
    require ext_code.size(0x7f90122bf0700f9e7e1f688fe926940e8839f353)
    if not arg2:
        call 0x7f90122bf0700f9e7e1f688fe926940e8839f353.exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor1', 1)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor1', 1)))))), arg3, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= mem[128]:
            revert with 0, 'not enough to repay'
        require ext_code.size(stor2)
        call stor2.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, mem[128]
    else:
        call 0x7f90122bf0700f9e7e1f688fe926940e8839f353.exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor1', 1)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor1', 1)))))), arg2, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= mem[128]:
            revert with 0, 'not enough to repay'
        require ext_code.size(stor3)
        call stor3.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, mem[128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg4.length >= 32
    require ext_code.size(0x7f90122bf0700f9e7e1f688fe926940e8839f353)
    if not arg2:
        call 0x7f90122bf0700f9e7e1f688fe926940e8839f353.exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor1', 1)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor1', 1)))))), arg3, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= mem[128]:
            revert with 0, 'not enough to repay'
        require ext_code.size(stor2)
        call stor2.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, mem[128]
    else:
        call 0x7f90122bf0700f9e7e1f688fe926940e8839f353.exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor1', 1)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor1', 1)))))), arg2, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= mem[128]:
            revert with 0, 'not enough to repay'
        require ext_code.size(stor3)
        call stor3.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, mem[128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function complusV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg4.length >= 32
    require ext_code.size(0x7f90122bf0700f9e7e1f688fe926940e8839f353)
    if not arg2:
        call 0x7f90122bf0700f9e7e1f688fe926940e8839f353.exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor1', 1)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor1', 1)))))), arg3, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= mem[128]:
            revert with 0, 'not enough to repay'
        require ext_code.size(stor2)
        call stor2.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, mem[128]
    else:
        call 0x7f90122bf0700f9e7e1f688fe926940e8839f353.exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor1', 1)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor1', 1)))))), arg2, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= mem[128]:
            revert with 0, 'not enough to repay'
        require ext_code.size(stor3)
        call stor3.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, mem[128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function waultSwapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg4.length >= 32
    require ext_code.size(0x7f90122bf0700f9e7e1f688fe926940e8839f353)
    if not arg2:
        call 0x7f90122bf0700f9e7e1f688fe926940e8839f353.exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor1', 1)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor1', 1)))))), arg3, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= mem[128]:
            revert with 0, 'not enough to repay'
        require ext_code.size(stor2)
        call stor2.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, mem[128]
    else:
        call 0x7f90122bf0700f9e7e1f688fe926940e8839f353.exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor1', 1)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('stor', ('name', 'stor3', 3)), ('name', 'stor1', 1)))))), arg2, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= mem[128]:
            revert with 0, 'not enough to repay'
        require ext_code.size(stor3)
        call stor3.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, mem[128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function arbSwap(address arg1, uint256 arg2, address[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = 2
    mem[(32 * arg3.length) + 160 len 64] = call.data[calldata.size len 64]
    require 1 < arg3.length
    mem[(32 * arg3.length) + 160] = mem[172 len 20]
    require 0 < arg3.length
    mem[(32 * arg3.length) + 192] = mem[140 len 20]
    mem[(32 * arg3.length) + 224] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[(32 * arg3.length) + 228] = arg2
    mem[(32 * arg3.length) + 260] = 64
    mem[(32 * arg3.length) + 292] = 2
    mem[(32 * arg3.length) + 324 len 0] = None
    require ext_code.size(arg1)
    staticcall arg1.getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg2, Array(len=2, data=mem[(32 * arg3.length) + 324 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg3.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg3.length) + ceil32(return_data.size) + 224
    require return_data.size >= 32
    _117 = mem[(32 * arg3.length) + 224 len 4], Mask(224, 32, arg2) >> 32
    require mem[(32 * arg3.length) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[(32 * arg3.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * arg3.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * arg3.length) + 224] <= 4294967296 and mem[(32 * arg3.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * arg3.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * arg3.length) + 224]) + 32 <= return_data.size
    mem[(32 * arg3.length) + ceil32(return_data.size) + 224] = mem[mem[(32 * arg3.length) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * arg3.length) + 224]
    _120 = mem[_117 + (32 * arg3.length) + 224]
    mem[(32 * arg3.length) + ceil32(return_data.size) + 256 len floor32(mem[_117 + (32 * arg3.length) + 224])] = mem[_117 + (32 * arg3.length) + 256 len floor32(mem[_117 + (32 * arg3.length) + 224])]
    require 0 < arg3.length
    require 1 < arg3.length
    require ext_code.size(0x7f90122bf0700f9e7e1f688fe926940e8839f353)
    staticcall 0x7f90122bf0700f9e7e1f688fe926940e8839f353.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
            gas gas_remaining wei
           args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('mem', ('range', 140, 20)), ('name', 'stor1', 1)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('stor', ('map', ('mem', ('range', 172, 20)), ('name', 'stor1', 1)))))), arg2
    mem[(32 * _120) + (32 * arg3.length) + ceil32(return_data.size) + 256] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0 < mem[(32 * arg3.length) + ceil32(return_data.size) + 224]
    if mem[(32 * arg3.length) + ceil32(return_data.size) + 256] >= ext_call.return_data[0]:
        revert with 0, '_err_'
    require 0 < arg3.length
    require ext_code.size(mem[140 len 20])
    call mem[140 len 20].approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x7f90122bf0700f9e7e1f688fe926940e8839f353, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0 < arg3.length
    require 1 < arg3.length
    if mem[140 len 20] == mem[172 len 20]:
        revert with 0, 
                    32,
                    35,
                    0x7350616e63616b654c6962726172793a204944454e544943414c5f4144445245535345,
                    mem[(32 * _120) + (32 * arg3.length) + ceil32(return_data.size) + 359 len 29]
    if mem[140 len 20] < mem[172 len 20]:
        if not mem[140 len 20]:
            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
        stor3 = mem[172 len 20]
        stor2 = mem[140 len 20]
    else:
        if not mem[172 len 20]:
            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
        stor3 = mem[140 len 20]
        stor2 = mem[172 len 20]
    require ext_code.size(arg1)
    call arg1.factory() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args stor2, stor3
    mem[(32 * _120) + (32 * arg3.length) + ceil32(return_data.size) + 256] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0 < arg3.length
    require 0 < mem[(32 * arg3.length) + ceil32(return_data.size) + 224]
    require ext_code.size(address(ext_call.return_data[0]))
    if stor2 != mem[140 len 20]:
        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, arg2, address(this.address), 128, 32, mem[(32 * arg3.length) + ceil32(return_data.size) + 256]
    else:
        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args arg2, 0, address(this.address), 128, 32, mem[(32 * arg3.length) + ceil32(return_data.size) + 256]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
