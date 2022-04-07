contract main {




// =====================  Runtime code  =====================


uint32 stor0;
uint32 conversionRate; offset 160
address owner;

function conversionRate() payable {
    return conversionRate
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'not owner'
    emit ChangedOwner(owner, arg1);
    owner = arg1
}

function setConversionRate(uint32 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'not owner'
    emit ConversionRateChanged(stor0, arg1);
    conversionRate = arg1
}

function convertTokensToVotingPower(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        return 0
    if conversionRate * arg1 / arg1 != conversionRate:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (conversionRate * arg1 / 10^6)
}



}
