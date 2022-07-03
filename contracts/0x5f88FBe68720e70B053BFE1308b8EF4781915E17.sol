contract main {




// =====================  Runtime code  =====================


const getCurrentTimestamp = block.timestamp


mapping of uint8 stor0;
mapping of uint8 stor1;
mapping of uint256 boughtAmount;
address nativeTokenAddress;
uint8 stor4; offset 160
address devAddress;
address sub_a5c8832fAddress;
address WAVAXAddress;
address sub_7b65fd90Address;

function investor(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor0[arg1])
}

function getStatus() {
    return bool(stor4)
}

function WAVAX() {
    return WAVAXAddress
}

function boughtAmount(address arg1) {
    require calldata.size - 4 >= 32
    return boughtAmount[arg1]
}

function sub_7b65fd90(?) {
    return sub_7b65fd90Address
}

function dev() {
    return devAddress
}

function sub_a5c8832f(?) {
    return sub_a5c8832fAddress
}

function claimed(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function nativeToken() {
    return nativeTokenAddress
}

function _fallback() payable {
    revert
}

function setStart() {
    if devAddress != msg.sender:
        revert with 0, '!dev'
    stor4 = 1
}

function sub_a9883aa2(?) {
    if devAddress != msg.sender:
        revert with 0, '!dev'
    stor4 = 0
}

function sub_95076334(?) {
    if stor0[msg.sender]:
        if stor1[msg.sender]:
            return 2
    if not stor0[msg.sender]:
        return 0
    return 1
}

function withDraw() {
    if devAddress != msg.sender:
        revert with 0, '!dev'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with 0, 'could not withdraw'
    emit Withdraw(msg.sender);
}

function claim() {
    if msg.sender != tx.origin:
        revert with 0, '!EOA'
    if not stor0[msg.sender]:
        revert with 0, 'not investor'
    if stor1[msg.sender]:
        revert with 0, 'claimed'
    stor1[msg.sender] = 1
    require ext_code.size(nativeTokenAddress)
    staticcall nativeTokenAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(nativeTokenAddress)
    call nativeTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, boughtAmount[msg.sender] * 10^uint8(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    boughtAmount[msg.sender] = 0
    emit Claim()
}

function deposite(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if msg.sender != tx.origin:
        revert with 0, '!EOA'
    if not stor4:
        revert with 0, '!start'
    require ext_code.size(nativeTokenAddress)
    staticcall nativeTokenAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(nativeTokenAddress)
    staticcall nativeTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1 * 10^uint8(ext_call.return_data[0]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x776e6174697665546f6b656e206973206e6f742073756666696369656e742c20536f7272,
                    mem[200 len 28]
    if stor0[msg.sender]:
        revert with 0, 'deposited'
    stor0[msg.sender] = 1
    boughtAmount[msg.sender] = arg1
    emit Deposit()
}

function getPrice() {
    require ext_code.size(sub_7b65fd90Address)
    staticcall sub_7b65fd90Address.0x70a08231 with:
            gas gas_remaining wei
           args sub_a5c8832fAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(WAVAXAddress)
        staticcall WAVAXAddress.0x70a08231 with:
                gas gas_remaining wei
               args sub_a5c8832fAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / ext_call.return_data[0])
    if 10^12 * ext_call.return_data[0] / ext_call.return_data[0] != 10^12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require ext_code.size(WAVAXAddress)
    staticcall WAVAXAddress.0x70a08231 with:
            gas gas_remaining wei
           args sub_a5c8832fAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    return (10^12 * ext_call.return_data[0] / ext_call.return_data[0])
}



}
