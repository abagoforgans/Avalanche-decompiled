contract main {




// =====================  Runtime code  =====================


const getCurrentTimestamp = block.timestamp

const MAX_BY_MINT = 50

const PRICE = 10


mapping of uint8 stor0;
mapping of uint8 stor1;
address baseTokenAddress;
address daoTokenAddress;
address devAddress;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint8 stor8;

function investor(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor0[arg1])
}

function daoToken() payable {
    return daoTokenAddress
}

function dev() payable {
    return devAddress
}

function baseToken() payable {
    return baseTokenAddress
}

function claimed(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function setClaimTimestamp(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if devAddress != msg.sender:
        revert with 0, '!dev'
    stor7 = arg1
    stor8 = 1
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    if devAddress != msg.sender:
        revert with 0, '!dev'
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
        args devAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function claim() payable {
    if msg.sender != tx.origin:
        revert with 0, '!EOA'
    if not stor8:
        revert with 0, 'Can't claim yet, ?LBE in discord'
    if stor7 > block.timestamp:
        revert with 0, 'Can't claim yet, ?LBE in discord'
    if not stor0[msg.sender]:
        revert with 0, 'Didn't deposit, ?LBE in discord'
    if stor1[msg.sender]:
        revert with 0, 'Already claimed, ?LBE in discord'
    stor1[msg.sender] = 1
    require ext_code.size(daoTokenAddress)
    staticcall daoTokenAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(daoTokenAddress)
    call daoTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 50 * 10^uint8(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Claim()
}

function deposit() payable {
    if msg.sender != tx.origin:
        revert with 0, '!EOA'
    if stor5 > block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6443616e2774206465706f736974207965742c203f4c424520696e20646973636f72,
                    mem[198 len 30]
    if block.timestamp > stor6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6443616e2774206465706f736974207965742c203f4c424520696e20646973636f72,
                    mem[198 len 30]
    if stor0[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe416c7265616479206465706f73697465642c203f4c424520696e20646973636f72,
                    mem[198 len 30]
    require ext_code.size(baseTokenAddress)
    staticcall baseTokenAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(baseTokenAddress)
    call baseTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), 500 * 10^uint8(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor0[msg.sender] = 1
    emit Deposit()
}



}
