contract main {




// =====================  Runtime code  =====================


const getCurrentTimestamp = block.timestamp

const MAX_BY_MINT = 5

const PRICE = 1


uint256 totalAllocation;
mapping of uint8 stor1;
mapping of uint8 stor2;
address mimAddress;
address loveAddress;
uint8 stor5; offset 160
uint8 stor5; offset 168
uint128 stor5; offset 168
uint128 stor5; offset 160
address devAddress;

function investor(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function totalAllocation() payable {
    return totalAllocation
}

function dev() payable {
    return devAddress
}

function mim() payable {
    return mimAddress
}

function claimed(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function love() payable {
    return loveAddress
}

function _fallback() payable {
    revert
}

function alterAcquire(bool arg1) payable {
    require calldata.size - 4 >= 32
    if msg.sender != tx.origin:
        revert with 0, '.Access restricted! Only Admins.'
    Mask(96, 0, stor5.field_160) = Mask(96, 0, arg1)
    return bool(uint8(arg1))
}

function initiateClaim(bool arg1) payable {
    require calldata.size - 4 >= 32
    if msg.sender != tx.origin:
        revert with 0, '.Access restricted! Only Admins.'
    Mask(88, 0, stor5.field_168) = Mask(88, 0, arg1)
    return bool(uint8(arg1))
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
        revert with 0, '.Access restricted! Only Admins.'
    if not uint8(stor5.field_168):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x214e6f7420636c61696d61626c65207965742e20506c656173652074727920616761696e206c61746572,
                    mem[206 len 22]
    if not stor1[msg.sender]:
        revert with 0, 'Not an earlier investor, sorry.'
    if stor2[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x43757272656e742077616c6c657420616c726561647920636c61696d65642c20736f72727900,
                    mem[202 len 26]
    stor2[msg.sender] = 1
    require ext_code.size(loveAddress)
    staticcall loveAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(loveAddress)
    call loveAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 5 * 10^uint8(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Claim()
}

function acquireLove() payable {
    if msg.sender != tx.origin:
        revert with 0, '.Access restricted! Only Admins.'
    if not uint8(stor5.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x2e50726573616c65206e6f7420737461727465642e20506c656173652074727920616761696e206c61746572,
                    mem[208 len 20]
    if totalAllocation <= 0:
        revert with 0, 'Presale completed, excited!?'
    if stor1[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xfe43757272656e742077616c6c657420616c7265616479206465706f73697465642c20736f727279,
                    mem[204 len 24]
    require ext_code.size(mimAddress)
    staticcall mimAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(loveAddress)
    call loveAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), 5 * 10^uint8(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor1[msg.sender] = 1
    totalAllocation--
    emit Deposit()
}



}
