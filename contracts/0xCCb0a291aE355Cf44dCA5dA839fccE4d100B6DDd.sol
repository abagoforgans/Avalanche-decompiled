contract main {




// =====================  Runtime code  =====================


const getCurrentTimestamp = block.timestamp

const sub_a0b36ae1(?) = 10

const sub_b9a32f43(?) = 30

const sub_df9ca77f(?) = 3

const MAX_ENTRIES = 1000


address policyAddress;
address stor1;
uint256 totalEntry;
mapping of struct investors;
address baseTokenAddress;
address farmingTokenAddress;
uint256 stor6;
uint256 stor7;
uint8 stor8;

function policy() payable {
    return policyAddress
}

function totalEntry() payable {
    return totalEntry
}

function investors(address arg1) payable {
    require calldata.size - 4 >= 32
    return investors[arg1].field_0, bool(investors[arg1].field_256)
}

function farmingToken() payable {
    return farmingTokenAddress
}

function baseToken() payable {
    return baseTokenAddress
}

function _fallback() payable {
    revert
}

function renounceManagement() payable {
    if policyAddress != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipPushed(policyAddress, 0);
    policyAddress = 0
}

function setClaimTimestamp(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if policyAddress != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor7 = arg1
    stor8 = 1
}

function pullManagement() payable {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x734f776e61626c653a206d757374206265206e6577206f776e657220746f2070756c,
                    mem[198 len 30]
    emit OwnershipPulled(policyAddress, stor1);
    policyAddress = stor1
}

function pushManagement(address arg1) payable {
    require calldata.size - 4 >= 32
    if policyAddress != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipPushed(policyAddress, arg1);
    stor1 = arg1
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    if policyAddress != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args policyAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function claim() payable {
    if tx.origin != msg.sender:
        revert with 0, '!EOA'
    if not stor8:
        revert with 0, '!init'
    if stor7 > block.timestamp:
        revert with 0, '!start'
    if investors[address(msg.sender)].field_256:
        revert with 0, 'already claimed'
    investors[address(msg.sender)].field_256 = 1
    require ext_code.size(farmingTokenAddress)
    staticcall farmingTokenAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not investors[address(msg.sender)].field_0:
        require ext_code.size(farmingTokenAddress)
        call farmingTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0
    else:
        require investors[address(msg.sender)].field_0
        if 30 * investors[address(msg.sender)].field_0 / investors[address(msg.sender)].field_0 != 30:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not 30 * investors[address(msg.sender)].field_0:
            require ext_code.size(farmingTokenAddress)
            call farmingTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 0
        else:
            require 30 * investors[address(msg.sender)].field_0
            if 30 * investors[address(msg.sender)].field_0 * 10^ext_call.return_data[31 len 1] / 30 * investors[address(msg.sender)].field_0 != 10^ext_call.return_data[31 len 1]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require ext_code.size(farmingTokenAddress)
            call farmingTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 30 * investors[address(msg.sender)].field_0 * 10^uint8(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Claim(msg.sender);
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if tx.origin != msg.sender:
        revert with 0, '!EOA'
    if stor6 > block.timestamp:
        revert with 0, '!start'
    if totalEntry + arg1 < totalEntry:
        revert with 0, 'SafeMath: addition overflow'
    if totalEntry + arg1 > 1000:
        revert with 0, 'Should exceed total entries'
    if arg1 <= 0:
        revert with 0, 'Nb entries invalid per address'
    if investors[address(msg.sender)].field_0 + arg1 < investors[address(msg.sender)].field_0:
        revert with 0, 'SafeMath: addition overflow'
    if investors[address(msg.sender)].field_0 + arg1 > 3:
        revert with 0, 'Nb entries invalid per address'
    require ext_code.size(baseTokenAddress)
    staticcall baseTokenAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        require ext_code.size(baseTokenAddress)
        call baseTokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), 0
    else:
        require arg1
        if 30 * arg1 / arg1 != 30:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not 30 * arg1:
            require ext_code.size(baseTokenAddress)
            call baseTokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), 0
        else:
            require 30 * arg1
            if 300 * arg1 / 30 * arg1 != 10:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not 300 * arg1:
                require ext_code.size(baseTokenAddress)
                call baseTokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), 0
            else:
                require 300 * arg1
                if 300 * arg1 * 10^ext_call.return_data[31 len 1] / 300 * arg1 != 10^ext_call.return_data[31 len 1]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                require ext_code.size(baseTokenAddress)
                call baseTokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), 300 * arg1 * 10^uint8(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if investors[address(msg.sender)].field_0 + arg1 < investors[address(msg.sender)].field_0:
        revert with 0, 'SafeMath: addition overflow'
    investors[address(msg.sender)].field_0 += arg1
    if totalEntry + arg1 < totalEntry:
        revert with 0, 'SafeMath: addition overflow'
    totalEntry += arg1
    emit Deposit(arg1, msg.sender);
}



}
