contract main {




// =====================  Runtime code  =====================


const getTime = block.timestamp


address owner;
address stor1;
uint256 unlockTime;
uint256 sub_76743b6b;
address companyWalletAddress;

function companyWallet() {
    return companyWalletAddress
}

function getUnlockTime() {
    return unlockTime
}

function sub_76743b6b(?) {
    return sub_76743b6b
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
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_5e41ea56(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_76743b6b = arg1
    emit FeesChanged(arg1);
}

function setCompanyWallet(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Invalid wallet address'
    companyWalletAddress = arg1
}

function lock(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = owner
    owner = 0
    unlockTime = block.timestamp + arg1
    emit OwnershipTransferred(owner, 0);
}

function unlock() {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x77596f7520646f6e27742068617665207065726d697373696f6e20746f20756e6c6f63,
                    mem[199 len 29]
    if block.timestamp <= unlockTime:
        revert with 0, 'Contract is locked until 7 days'
    emit OwnershipTransferred(owner, stor1);
    owner = stor1
}

function transferOwnership(address arg1) {
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

function sub_87ab8935(?) payable {
    require calldata.size - 4 >= 96
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if ('cd', 36).length != ('cd', 68).length:
        revert with 0, 'array length not eq'
    if sub_76743b6b <= 0:
        idx = 0
        while idx < ('cd', 36).length:
            require idx < ('cd', 68).length
            mem[100] = msg.sender
            mem[132] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[164] = uint128(cd[((32 * idx) + cd[68] + 36)])
            require ext_code.size(address(cd[4]))
            call address(cd[4]).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(cd[((32 * idx) + cd[36] + 36)]), uint128(cd[((32 * idx) + cd[68] + 36)])
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 1
            continue 
    else:
        if not sub_76743b6b:
            if msg.value < 0:
                revert with 0, 'Low fee amount'
            call companyWalletAddress with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'Fee transfer failed'
            if not return_data.size:
                if msg.value <= 0:
                    idx = 0
                    while idx < ('cd', 36).length:
                        require idx < ('cd', 68).length
                        mem[100] = msg.sender
                        mem[132] = address(cd[((32 * idx) + cd[36] + 36)])
                        mem[164] = uint128(cd[((32 * idx) + cd[68] + 36)])
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(cd[((32 * idx) + cd[36] + 36)]), uint128(cd[((32 * idx) + cd[68] + 36)])
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        continue 
                else:
                    call msg.sender with:
                       value msg.value wei
                         gas gas_remaining wei
                    if not return_data.size:
                        idx = 0
                        while idx < ('cd', 36).length:
                            require idx < ('cd', 68).length
                            mem[100] = msg.sender
                            mem[132] = address(cd[((32 * idx) + cd[36] + 36)])
                            mem[164] = uint128(cd[((32 * idx) + cd[68] + 36)])
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(cd[((32 * idx) + cd[36] + 36)]), uint128(cd[((32 * idx) + cd[68] + 36)])
                            mem[96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            continue 
                    else:
                        idx = 0
                        while idx < ('cd', 36).length:
                            require idx < ('cd', 68).length
                            mem[ceil32(return_data.size) + 101] = msg.sender
                            mem[ceil32(return_data.size) + 133] = address(cd[((32 * idx) + cd[36] + 36)])
                            mem[ceil32(return_data.size) + 165] = uint128(cd[((32 * idx) + cd[68] + 36)])
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(cd[((32 * idx) + cd[36] + 36)]), uint128(cd[((32 * idx) + cd[68] + 36)])
                            mem[ceil32(return_data.size) + 97] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            continue 
            else:
                if msg.value <= 0:
                    idx = 0
                    while idx < ('cd', 36).length:
                        require idx < ('cd', 68).length
                        mem[ceil32(return_data.size) + 101] = msg.sender
                        mem[ceil32(return_data.size) + 133] = address(cd[((32 * idx) + cd[36] + 36)])
                        mem[ceil32(return_data.size) + 165] = uint128(cd[((32 * idx) + cd[68] + 36)])
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(cd[((32 * idx) + cd[36] + 36)]), uint128(cd[((32 * idx) + cd[68] + 36)])
                        mem[ceil32(return_data.size) + 97] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        continue 
                else:
                    call msg.sender with:
                       value msg.value wei
                         gas gas_remaining wei
                    if not return_data.size:
                        idx = 0
                        while idx < ('cd', 36).length:
                            require idx < ('cd', 68).length
                            mem[ceil32(return_data.size) + 101] = msg.sender
                            mem[ceil32(return_data.size) + 133] = address(cd[((32 * idx) + cd[36] + 36)])
                            mem[ceil32(return_data.size) + 165] = uint128(cd[((32 * idx) + cd[68] + 36)])
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(cd[((32 * idx) + cd[36] + 36)]), uint128(cd[((32 * idx) + cd[68] + 36)])
                            mem[ceil32(return_data.size) + 97] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            continue 
                    else:
                        idx = 0
                        while idx < ('cd', 36).length:
                            require idx < ('cd', 68).length
                            mem[(2 * ceil32(return_data.size)) + 102] = msg.sender
                            mem[(2 * ceil32(return_data.size)) + 134] = address(cd[((32 * idx) + cd[36] + 36)])
                            mem[(2 * ceil32(return_data.size)) + 166] = uint128(cd[((32 * idx) + cd[68] + 36)])
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(cd[((32 * idx) + cd[36] + 36)]), uint128(cd[((32 * idx) + cd[68] + 36)])
                            mem[(2 * ceil32(return_data.size)) + 98] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            continue 
        else:
            require sub_76743b6b
            if 10^18 * sub_76743b6b / sub_76743b6b != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if msg.value < 10^18 * sub_76743b6b:
                revert with 0, 'Low fee amount'
            call companyWalletAddress with:
               value 10^18 * sub_76743b6b wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'Fee transfer failed'
            if not return_data.size:
                if msg.value - (10^18 * sub_76743b6b) <= 0:
                    idx = 0
                    while idx < ('cd', 36).length:
                        require idx < ('cd', 68).length
                        mem[100] = msg.sender
                        mem[132] = address(cd[((32 * idx) + cd[36] + 36)])
                        mem[164] = uint128(cd[((32 * idx) + cd[68] + 36)])
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(cd[((32 * idx) + cd[36] + 36)]), uint128(cd[((32 * idx) + cd[68] + 36)])
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        continue 
                else:
                    call msg.sender with:
                       value msg.value - (10^18 * sub_76743b6b) wei
                         gas gas_remaining wei
                    if not return_data.size:
                        idx = 0
                        while idx < ('cd', 36).length:
                            require idx < ('cd', 68).length
                            mem[100] = msg.sender
                            mem[132] = address(cd[((32 * idx) + cd[36] + 36)])
                            mem[164] = uint128(cd[((32 * idx) + cd[68] + 36)])
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(cd[((32 * idx) + cd[36] + 36)]), uint128(cd[((32 * idx) + cd[68] + 36)])
                            mem[96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            continue 
                    else:
                        idx = 0
                        while idx < ('cd', 36).length:
                            require idx < ('cd', 68).length
                            mem[ceil32(return_data.size) + 101] = msg.sender
                            mem[ceil32(return_data.size) + 133] = address(cd[((32 * idx) + cd[36] + 36)])
                            mem[ceil32(return_data.size) + 165] = uint128(cd[((32 * idx) + cd[68] + 36)])
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(cd[((32 * idx) + cd[36] + 36)]), uint128(cd[((32 * idx) + cd[68] + 36)])
                            mem[ceil32(return_data.size) + 97] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            continue 
            else:
                if msg.value - (10^18 * sub_76743b6b) <= 0:
                    idx = 0
                    while idx < ('cd', 36).length:
                        require idx < ('cd', 68).length
                        mem[ceil32(return_data.size) + 101] = msg.sender
                        mem[ceil32(return_data.size) + 133] = address(cd[((32 * idx) + cd[36] + 36)])
                        mem[ceil32(return_data.size) + 165] = uint128(cd[((32 * idx) + cd[68] + 36)])
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(cd[((32 * idx) + cd[36] + 36)]), uint128(cd[((32 * idx) + cd[68] + 36)])
                        mem[ceil32(return_data.size) + 97] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        continue 
                else:
                    call msg.sender with:
                       value msg.value - (10^18 * sub_76743b6b) wei
                         gas gas_remaining wei
                    if not return_data.size:
                        idx = 0
                        while idx < ('cd', 36).length:
                            require idx < ('cd', 68).length
                            mem[ceil32(return_data.size) + 101] = msg.sender
                            mem[ceil32(return_data.size) + 133] = address(cd[((32 * idx) + cd[36] + 36)])
                            mem[ceil32(return_data.size) + 165] = uint128(cd[((32 * idx) + cd[68] + 36)])
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(cd[((32 * idx) + cd[36] + 36)]), uint128(cd[((32 * idx) + cd[68] + 36)])
                            mem[ceil32(return_data.size) + 97] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            continue 
                    else:
                        idx = 0
                        while idx < ('cd', 36).length:
                            require idx < ('cd', 68).length
                            mem[(2 * ceil32(return_data.size)) + 102] = msg.sender
                            mem[(2 * ceil32(return_data.size)) + 134] = address(cd[((32 * idx) + cd[36] + 36)])
                            mem[(2 * ceil32(return_data.size)) + 166] = uint128(cd[((32 * idx) + cd[68] + 36)])
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(cd[((32 * idx) + cd[36] + 36)]), uint128(cd[((32 * idx) + cd[68] + 36)])
                            mem[(2 * ceil32(return_data.size)) + 98] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            continue 
}



}
